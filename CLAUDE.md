# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an Astro-based minimal starter project named "ci5co" (appears to be a personal portfolio project). It uses Astro 5.12.9 with TypeScript configuration and follows the standard Astro project structure.

## Development Commands

| Command | Purpose |
|---------|---------|
| `npm run dev` | Start development server at localhost:4321 |
| `npm run build` | Build production site to ./dist/ |
| `npm run preview` | Preview production build locally |
| `npm run astro ...` | Run Astro CLI commands (e.g., `npm run astro add`, `npm run astro check`) |

## Project Structure

```
/
├── public/           # Static assets (favicon.svg)
├── src/
│   └── pages/        # Route-based pages (.astro or .md files)
│       └── index.astro
├── astro.config.mjs  # Astro configuration (currently minimal)
├── tsconfig.json     # TypeScript config extending astro/tsconfigs/strict
└── package.json
```

## Architecture Notes

- **Framework**: Astro v5 with minimal configuration
- **TypeScript**: Uses Astro's strict TypeScript configuration
- **Routing**: File-based routing in `src/pages/` directory
- **Components**: No components directory yet, but would typically go in `src/components/`
- **Static Assets**: Placed in `public/` directory

## Key Configuration Files

- `astro.config.mjs`: Currently uses default Astro configuration
- `tsconfig.json`: Extends Astro's strict TypeScript settings, includes all files except dist/
- `package.json`: ESM module type, minimal Astro-only dependencies

## Development Workflow

This is a fresh Astro minimal template with only the basic index page. The project is set up for:
- TypeScript development with strict settings
- File-based routing
- Standard Astro development patterns

No additional build tools, linting, or testing frameworks are currently configured.