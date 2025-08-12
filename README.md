# Portfolio Personal - Francisco Ramírez

Un portfolio moderno y elegante construido con Astro, diseñado para mostrar habilidades, experiencia y proyectos de desarrollo full stack.

![Portfolio Preview](preview.png)

## ✨ Características

### 🎨 Diseño Moderno
- **Tema oscuro elegante** con esquema de colores slate y acentos azules/púrpura
- **Gradientes suaves** y efectos visuales modernos
- **Tipografía Inter** para máxima legibilidad
- **Diseño responsive** que se adapta a todos los dispositivos

### 🚀 Animaciones Fluidas
- **Transiciones entre secciones** con efecto slide-up
- **Animaciones de entrada** personalizadas para elementos
- **Hover effects** sutiles y elegantes
- **Scroll suave** con Intersection Observer

### 📱 Experiencia de Usuario
- **Navegación intuitiva** con highlighting automático de sección activa
- **Smooth scrolling** entre secciones
- **Formulario de contacto** funcional con validación
- **Enlaces sociales** integrados
- **Descarga de CV** directa

### 🛠️ Tecnologías Utilizadas
- **Astro 5.12.9** - Framework principal
- **Tailwind CSS 4** - Estilos y diseño responsive
- **TypeScript** - Tipado estático
- **Intersection Observer API** - Animaciones al scroll
- **CSS Custom Properties** - Animaciones personalizadas

## 🗂️ Estructura del Proyecto

```
/
├── public/                 # Archivos estáticos
│   ├── favicon.svg
│   └── [imágenes de proyectos]
├── src/
│   ├── components/         # Componentes Astro
│   │   ├── About.astro     # Sección Acerca de
│   │   ├── Contact.astro   # Formulario de contacto
│   │   ├── Experience.astro # Timeline de experiencia
│   │   ├── Hero.astro      # Sección principal
│   │   ├── Navigation.astro # Barra de navegación
│   │   └── Projects.astro  # Galería de proyectos
│   ├── layouts/
│   │   └── Layout.astro    # Layout base
│   ├── pages/
│   │   └── index.astro     # Página principal
│   └── styles/
│       └── global.css      # Estilos globales y animaciones
├── astro.config.mjs        # Configuración de Astro
├── tailwind.config.js      # Configuración de Tailwind
├── tsconfig.json          # Configuración de TypeScript
└── package.json
```

## 🚀 Instalación y Uso

### Prerrequisitos
- Node.js 18+ 
- npm o yarn

### Instalación

```bash
# Clonar el repositorio
git clone [url-del-repositorio]
cd portafolio

# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm run dev
```

### Scripts Disponibles

| Comando | Descripción |
|---------|-------------|
| `npm run dev` | Inicia el servidor de desarrollo en `localhost:4321` |
| `npm run build` | Construye el sitio para producción en `./dist/` |
| `npm run preview` | Previsualiza la build de producción localmente |
| `npm run astro ...` | Ejecuta comandos de Astro CLI |

## 🎨 Personalización

### Datos Personales
Edita los siguientes archivos para personalizar con tu información:

1. **Hero Section** (`src/components/Hero.astro`):
   - Nombre y título profesional
   - Enlaces a redes sociales
   - Descripción personal

2. **Experience** (`src/components/Experience.astro`):
   - Experiencia laboral
   - Logros y responsabilidades
   - Tecnologías utilizadas

3. **Projects** (`src/components/Projects.astro`):
   - Proyectos destacados
   - Descripciones y tecnologías
   - Enlaces a demos y repositorios

4. **About** (`src/components/About.astro`):
   - Biografía personal
   - Habilidades técnicas
   - Enlace al CV

### Colores y Tema
Los colores principales están definidos en `src/styles/global.css`:
- Puedes modificar los gradientes
- Cambiar colores de acento
- Ajustar animaciones

### Animaciones
Las animaciones están configuradas en:
- `src/styles/global.css` - Keyframes y clases CSS
- `src/components/Navigation.astro` - Lógica de transiciones
- Cada componente individual - Intersection Observer

## 📦 Despliegue

### Build de Producción
```bash
npm run build
```

### Plataformas Recomendadas
- **Vercel** - Despliegue automático desde Git
- **Netlify** - Integración continua
- **GitHub Pages** - Hosting gratuito
- **AWS S3 + CloudFront** - Solución escalable

### Variables de Entorno
Si necesitas configurar variables de entorno, crea un archivo `.env`:
```env
# Ejemplo para formulario de contacto
CONTACT_EMAIL_SERVICE=tu-servicio
CONTACT_API_KEY=tu-api-key
```

## 🔧 Funcionalidades Técnicas

### Animaciones de Transición
- Sistema de transiciones suaves entre secciones
- Prevención de spam en navegación
- Gestión de estado de transiciones

### Responsive Design
- Mobile-first approach
- Breakpoints optimizados
- Navegación móvil con hamburger menu

### Performance
- Imágenes optimizadas
- CSS crítico inline
- Lazy loading de componentes
- Bundle size optimizado

### SEO
- Meta tags dinámicos
- Structured data
- Sitemap automático
- Performance optimizada

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para cambios importantes:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver `LICENSE` para más detalles.

## 👨‍💻 Autor

**Francisco Ramírez**
- GitHub: [@cisco-juan](https://github.com/cisco-juan)
- LinkedIn: [ci5co](https://www.linkedin.com/in/ci5co/)
- Email: francisco.rnaut@gmail.com

---

⭐ Si te gustó este proyecto, ¡dale una estrella en GitHub!