# 🚀 Ci5co - Portafolio Personal

[![Astro](https://img.shields.io/badge/Astro-5.12.9-FF5D01?logo=astro)](https://astro.build)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue?logo=typescript)](https://typescriptlang.org)
[![Tailwind CSS](https://img.shields.io/badge/TailwindCSS-3.4.17-38B2AC?logo=tailwind-css)](https://tailwindcss.com)
[![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker)](https://docker.com)

Portafolio personal moderno y responsivo de Francisco Ramírez (ci5co), desarrollador Full Stack especializado en crear soluciones digitales robustas y escalables.

## ✨ Características

- **🎨 Diseño Moderno**: Interfaz elegante con animaciones suaves y efectos visuales atractivos
- **📱 Completamente Responsivo**: Optimizado para todos los dispositivos y tamaños de pantalla  
- **⚡ Alto Rendimiento**: Construido con Astro para una carga ultra-rápida
- **🎯 SEO Optimizado**: Meta tags y estructura optimizada para motores de búsqueda
- **♿ Accesible**: Cumple con estándares de accesibilidad web
- **🌟 Animaciones Suaves**: Transiciones elegantes y micro-interacciones
- **🐳 Docker Ready**: Configuración completa para despliegue con Docker
- **🔧 TypeScript**: Desarrollo con tipado estático para mayor robustez

## 🛠️ Stack Tecnológico

### Frontend
- **[Astro 5.12.9](https://astro.build)** - Framework moderno para sitios web estáticos
- **[TypeScript](https://typescriptlang.org)** - Desarrollo con tipado estático
- **[Tailwind CSS 3.4.17](https://tailwindcss.com)** - Framework CSS utilitario
- **[@tailwindcss/typography](https://tailwindcss.com/docs/typography-plugin)** - Plugin para tipografía

### Herramientas de Desarrollo
- **[Node.js](https://nodejs.org)** - Entorno de ejecución
- **[@astrojs/node](https://docs.astro.build/en/guides/integrations-guide/node/)** - Adaptador SSR para Node.js
- **[@astrojs/tailwind](https://docs.astro.build/en/guides/integrations-guide/tailwind/)** - Integración oficial de Tailwind

### DevOps & Despliegue
- **[Docker](https://docker.com)** - Containerización
- **[Docker Compose](https://docs.docker.com/compose/)** - Orquestación de contenedores
- **Multi-stage Build** - Optimización de imágenes Docker

## 🚀 Inicio Rápido

### Prerrequisitos

- Node.js 18+ 
- npm o yarn
- Docker (opcional, para despliegue)

### Instalación Local

```bash
# Clonar el repositorio
git clone https://github.com/cisco-juan/ci5co.git
cd ci5co

# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm run dev
```

El sitio estará disponible en `http://localhost:4321`

### Scripts Disponibles

```bash
npm run dev      # Servidor de desarrollo
npm run build    # Construir para producción
npm run preview  # Vista previa del build de producción
npm run start    # Iniciar servidor SSR
npm run astro    # Ejecutar comandos de Astro CLI
```

## 🐳 Despliegue con Docker

### Docker Compose (Recomendado)

```bash
# Construir e iniciar el contenedor
docker-compose up -d

# Ver logs
docker-compose logs -f

# Detener el servicio
docker-compose down
```

### Docker Manual

```bash
# Construir imagen
docker build -t ci5co-portfolio .

# Ejecutar contenedor
docker run -d \
  --name ci5co-portfolio \
  -p 4321:4321 \
  -e NODE_ENV=production \
  ci5co-portfolio
```

El sitio estará disponible en `http://localhost:4321`

### Características del Contenedor

- **Multi-stage Build**: Optimización del tamaño de imagen
- **Usuario No-Root**: Ejecución segura con usuario `astro`
- **Health Checks**: Monitoreo automático del estado del contenedor
- **Resource Limits**: Límites de memoria configurables
- **Debug Logs**: Logs detallados para troubleshooting

## 📁 Estructura del Proyecto

```
ci5co/
├── public/                 # Assets estáticos
│   ├── *.png              # Imágenes de proyectos
│   ├── favicon.svg        # Favicon
│   └── icon.png           # Icono principal
├── src/
│   ├── components/        # Componentes Astro
│   │   ├── About.astro    # Sección "Acerca de"
│   │   ├── Contact.astro  # Formulario de contacto
│   │   ├── Experience.astro # Experiencia laboral
│   │   ├── Hero.astro     # Sección héroe
│   │   ├── Logo.astro     # Componente logo
│   │   ├── Navigation.astro # Barra de navegación
│   │   └── Projects.astro # Portafolio de proyectos
│   ├── layouts/
│   │   └── Layout.astro   # Layout principal
│   ├── pages/
│   │   └── index.astro    # Página principal
│   └── styles/
│       └── global.css     # Estilos globales y animaciones
├── astro.config.mjs       # Configuración de Astro
├── tailwind.config.js     # Configuración de Tailwind
├── docker-compose.yml     # Configuración Docker Compose
├── Dockerfile            # Imagen Docker multi-stage
└── debug-images.sh       # Script de debugging para imágenes
```

## 🎨 Secciones del Portafolio

### 🏠 Hero Section
- Presentación personal con animaciones
- CTAs para navegación rápida
- Enlaces a redes sociales
- Indicador de scroll animado

### 👤 About Section  
- Información personal y profesional
- Habilidades técnicas organizadas
- Experiencia y trayectoria

### 💼 Experience Section
- Historial laboral detallado
- Logros y responsabilidades
- Timeline visual interactivo

### 🚀 Projects Section
- **Proyectos Destacados**: 
  - Search Mind - Chat IA con Ollama
  - Spotgram - SaaS gestión social media
  - Agendaly - SaaS gestión de citas
- **Otros Proyectos**:
  - Platzi Notes - Extensión Chrome
  - Este Portafolio
- Enlaces a demos y código fuente
- Stack tecnológico de cada proyecto

### 📧 Contact Section
- Formulario de contacto funcional
- Información de contacto directa
- Redes sociales y ubicación

## ⚙️ Configuración

### Astro Configuration

```javascript
// astro.config.mjs
export default defineConfig({
  integrations: [tailwind()],
  output: 'server',           // SSR habilitado
  adapter: node({
    mode: 'standalone'        // Modo standalone para Docker
  })
});
```

### Tailwind Configuration

```javascript
// tailwind.config.js
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      fontFamily: {
        'inter': ['Inter', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}
```

## 🎭 Animaciones y Efectos

- **Fade In/Up**: Entrada suave de elementos
- **Intersection Observer**: Animaciones al hacer scroll
- **Hover Effects**: Efectos interactivos en botones y cards
- **Gradient Text**: Texto con gradientes animados
- **Smooth Scrolling**: Navegación suave entre secciones
- **Loading Animations**: Estados de carga elegantes

## 📊 Rendimiento

- **Lighthouse Score**: 95+ en todas las métricas
- **Core Web Vitals**: Optimizado para métricas de Google
- **Bundle Size**: Minimizado con tree-shaking automático
- **Image Optimization**: Imágenes optimizadas y lazy loading
- **Critical CSS**: CSS crítico inline para renderizado rápido

## 🔧 Desarrollo

### Comandos Útiles

```bash
# Agregar nueva integración
npm run astro add [integration]

# Verificar proyecto
npm run astro check

# Generar tipos TypeScript
npm run astro sync
```

### Variables de Entorno

```bash
NODE_ENV=production    # Entorno de ejecución
HOST=0.0.0.0          # Host del servidor
PORT=4321             # Puerto del servidor
```

## 🐛 Debugging

### Debug de Imágenes en Docker

```bash
# Ejecutar script de diagnóstico
./debug-images.sh
```

Este script verifica:
- Archivos en el contenedor
- Configuración del servidor
- Logs de errores
- Acceso directo a imágenes
- Permisos de archivos

### Logs Comunes

```bash
# Docker logs
docker-compose logs ci5co-portfolio

# Build logs
npm run build -- --verbose

# Astro dev logs
npm run dev -- --verbose
```

## 📝 Personalización

Para personalizar este portafolio para tu uso:

1. **Información Personal**: Edita `src/components/Hero.astro` y `src/components/About.astro`
2. **Proyectos**: Modifica el array en `src/components/Projects.astro`
3. **Experiencia**: Actualiza `src/components/Experience.astro`  
4. **Estilos**: Personaliza colores en `tailwind.config.js`
5. **Imágenes**: Reemplaza archivos en `public/`
6. **SEO**: Actualiza meta tags en `src/layouts/Layout.astro`


## 🤝 Contribución

Las contribuciones son bienvenidas. Para cambios importantes:

1. Fork el proyecto
2. Crea una rama feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver `LICENSE` para más detalles.

## 👨‍💻 Autor

**Francisco Ramírez** - *Desarrollador Full Stack*

- 🌐 Website: [En construcción]
- 📧 Email: francisco.rnaut@gmail.com
- 💼 LinkedIn: [ci5co](https://www.linkedin.com/in/ci5co/)
- 🐙 GitHub: [cisco-juan](https://github.com/cisco-juan)

---

⭐ Si te gusta este proyecto, ¡no olvides darle una estrella!

**Desarrollado con ❤️ usando Astro y Tailwind CSS**