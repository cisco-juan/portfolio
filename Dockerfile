# Multi-stage build for Astro portfolio project
FROM node:22-alpine AS base
WORKDIR /app

# Install dependencies only when needed
FROM base AS deps
# Check https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine to understand why libc6-compat might be needed.
RUN apk add --no-cache libc6-compat
COPY package.json package-lock.json ./
RUN npm ci --only=production && npm cache clean --force

# Build the app
FROM base AS builder
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build

# Production image, copy all the files and run astro
FROM nginx:alpine AS runner

# Copy the built application from builder stage
COPY --from=builder /app/dist /usr/share/nginx/html

# Create a custom nginx configuration for SPA routing (if needed)
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]