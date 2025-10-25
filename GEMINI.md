# GEMINI.md

## Project Overview

This project is a personal portfolio website for Francisco Ramírez, a Full Stack Developer. It is built with [Astro](https://astro.build/), a modern static site builder, and styled with [Tailwind CSS](https://tailwindcss.com/). The project uses [TypeScript](https://www.typescriptlang.org/) for static typing, which helps in maintaining a robust and scalable codebase.

The portfolio is designed to be modern, responsive, and performant. It features a clean and elegant design with smooth animations and transitions. The project is also Docker-ready, with a `Dockerfile` and `docker-compose.yml` for easy deployment.

The website is structured into the following sections:

*   **Hero:** A brief introduction with a call to action.
*   **About:** A more detailed description of Francisco's skills and experience.
*   **Experience:** A timeline of Francisco's work experience.
*   **Projects:** A showcase of Francisco's projects.
*   **Contact:** A contact form and social media links.

## Building and Running

The project uses `npm` for package management. The following scripts are available in `package.json`:

*   `npm run dev`: Starts the development server at `http://localhost:4321`.
*   `npm run build`: Builds the project for production.
*   `npm run preview`: Previews the production build locally.
*   `npm run start`: Starts the production server (for SSR).
*   `npm run astro`: Provides access to the Astro CLI.

### Docker

The project can also be run with Docker. The following commands can be used:

*   `docker-compose up -d`: Builds and starts the container in detached mode.
*   `docker-compose logs -f`: Tails the logs of the container.
*   `docker-compose down`: Stops and removes the container.

Alternatively, you can build and run the Docker container manually:

*   `docker build -t ci5co-portfolio .`: Builds the Docker image.
*   `docker run -d --name ci5co-portfolio -p 4321:4321 -e NODE_ENV=production ci5co-portfolio`: Runs the Docker container.

## Development Conventions

The project follows the standard conventions for Astro projects. The code is well-structured and organized into components, layouts, and pages.

*   **Components:** Reusable UI components are located in the `src/components` directory.
*   **Layouts:** The main layout for the pages is in the `src/layouts` directory.
*   **Pages:** The pages of the website are in the `src/pages` directory.
*   **Styles:** Global styles and animations are in the `src/styles` directory.

The project uses TypeScript for all the code, which helps in maintaining a high level of code quality. The code is also well-documented with comments and JSDoc annotations.
