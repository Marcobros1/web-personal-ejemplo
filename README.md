# Web Minimalista — Portfolio personal

Web personal de una diseñadora (portfolio de proyectos) maquetada **solo con HTML y CSS**: sin frameworks, sin librerías y sin JavaScript. Responsive con mobile-first y Flexbox.

> Práctica _Web Minimalista — Diseño Responsive_: partir de un diseño de Figma y maquetarlo con HTML/CSS puro. Se valora entender Flexbox, Mobile First y el responsive; no hace falta replicar Figma al píxel.

## Páginas

| Archivo        | Contenido                                |
| -------------- | ---------------------------------------- |
| `index.html`   | Portada con el listado de proyectos      |
| `about.html`   | Sobre mí: perfil, experiencia y tarjetas |
| `project.html` | Detalle de un proyecto                   |

- Menú: **Home**, **About** y **Contact** → `mailto:email@ejemplo.com`.
- Pie: **Email** (`mailto:`), **Behance** y **LinkedIn**.
- Todos los proyectos enlazan a `project.html`.

## Cómo verlo

Abre `index.html` en el navegador, o usa **Live Server** en VS Code para que recargue al guardar. No hay build ni dependencias que instalar.

## Estructura

```
web-personal-ejemplo/
├── index.html
├── about.html
├── project.html
├── styles.css      # estilos compartidos por las tres páginas
└── assets/         # avatar e imágenes de los proyectos
```

## Responsive (mobile-first)

Se parte del móvil y se añaden cortes con `min-width`:

| Corte        | Cambio principal                                                |
| ------------ | --------------------------------------------------------------- |
| base (móvil) | Una columna: menú, artículos y pie en vertical                  |
| `800px`      | Flexbox en fila: texto + imagen lado a lado, menú y pie en fila |
| `1280px`     | Desktop: más aire (espaciados de `50px` a `70px`)               |

Comprobado en Chrome DevTools a 375 / 768 / 1440 px.

## Convenciones

- **BEM** para las clases nuevas: `.article__text`, `.line--magenta`, `.link--ocre`, `.footer__links`.
- **Colores en variables** (`:root`): `--negro`, `--azul`, `--magenta`, `--morado`, `--oliva`, `--ocre`; en las reglas siempre `var(--...)`.
- **Flexbox** para maquetar, con `flex-direction` siempre explícito.
- **Sin JavaScript:** la navegación son enlaces `<a>` de verdad.
- **Comentarios** en el CSS solo cuando aportan algo que el código no dice.

## Git

- `main` siempre funcional; el trabajo se hace en ramas `feature/...` y se integra con un merge.
- Mensajes en inglés con [Conventional Commits](https://www.conventionalcommits.org/) (`feat:`, `fix:`, `refactor:`, `docs:`...).

## Despliegue

Netlify publica automáticamente cada push a `main`.

## Créditos

- Diseño de referencia: _Web Minimalista_ (Figma).
- Tipografía: [Source Serif 4](https://fonts.google.com/specimen/Source+Serif+4) (Google Fonts), de Frank Grießhammer, licencia [SIL Open Font License](https://openfontlicense.org/).
