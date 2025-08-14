# Multi-stage build for Astro portfolio project with Node adapter
FROM node:22-alpine AS base
WORKDIR /app

# Install dependencies and build the app
FROM base AS builder
COPY package.json package-lock.json ./
RUN npm ci --legacy-peer-deps
COPY . .
RUN npm run build

# Debug: List the contents of dist directory
RUN ls -la dist/
RUN find dist/ -name "*.mjs" -o -name "*.js" | head -10

# Production image
FROM node:22-alpine AS runner

# Create a non-root user
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 astro

# Copy the built application and node_modules
COPY --from=builder /app/dist /app/dist
COPY --from=builder /app/node_modules /app/node_modules
COPY --from=builder /app/package.json /app/package.json

# Debug: List contents in runner stage
RUN ls -la /app/dist/
RUN find /app/dist/ -name "*.mjs" -o -name "*.js" | head -10

# Change ownership to the astro user
RUN chown -R astro:nodejs /app

# Switch to the astro user
USER astro

# Expose port 4321
EXPOSE 4321

# Set environment variables
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=4321

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:4321/ || exit 1

# Start the application with fallback paths
CMD ["sh", "-c", "if [ -f '/app/dist/server/entry.mjs' ]; then node /app/dist/server/entry.mjs; elif [ -f '/app/dist/entry.mjs' ]; then node /app/dist/entry.mjs; else echo 'No entry point found' && ls -la /app/dist/ && exit 1; fi"]