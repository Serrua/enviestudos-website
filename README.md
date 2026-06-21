# Enviestudos Website

Corporate website for **Enviestudos, Lda** — an environmental consultancy based in Mozambique. Deployed via [Vercel](https://vercel.com) from this repository.

## Project Structure

```
enviestudos-website/
│
├── index.html              # Home page
├── about.html              # About the company
├── contact.html            # Contact page
├── projects.html           # Projects listing
├── services.html           # Services listing
│
├── project-*.html          # 20 project detail pages
├── service-*.html          # 4 service detail pages
│
├── css/
│   └── style.css           # Global stylesheet
│
├── js/
│   ├── i18n.js             # Bilingual EN/PT translation system
│   └── main.js             # Navigation, animations, interactions
│
├── assets/
│   ├── logo/               # Brand logo (SVG + PNG variants)
│   ├── financiers/         # International funder logos (World Bank, EU, ADB, etc.)
│   └── maps/               # Mozambique project location map (SVG)
│
├── images/
│   └── hero.jpg            # Hero section background
│
└── scripts/                # Development & generation scripts (not deployed)
    ├── _gen_pages.ps1
    ├── _gen_pages2.ps1
    ├── _gen_remaining.ps1
    ├── _gen_remaining2.ps1
    ├── _retrofit_projects.ps1
    ├── _retrofit_services.ps1
    ├── _fix_translation.ps1
    └── _fix_proj_translation.ps1
```

## Technology

- **Pure HTML5 / CSS3 / Vanilla JS** — no framework, no build step
- **Bilingual (EN / PT)** — language toggle via `js/i18n.js`; uses `data-i18n` attributes and `.lang-en` / `.lang-pt` CSS blocks
- **Responsive** — mobile-first, tested across breakpoints
- **Deployed on Vercel** — pushes to `main` deploy automatically

## Language System

The site is fully bilingual. Translation works two ways:

1. **`data-i18n="key"`** — for short labels and titles (uses `textContent`, so no HTML entities)
2. **`.lang-en` / `.lang-pt` blocks** — for prose content, lists, and elements containing SVG icons

Switch between languages via the globe icon in the navbar.

## Adding a New Project

1. Copy the closest existing `project-*.html` as a template
2. Replace all content in the `.lang-en` and `.lang-pt` blocks
3. Update `data-i18n="proj.pN.title"` and `data-i18n="proj.pN.sector"` keys (N = project number)
4. Add EN and PT keys to `js/i18n.js` under the project section
5. Add a project card to `projects.html`

## Development Scripts (`scripts/`)

These PowerShell scripts were used to generate and retrofit pages during development. They are not served by the web server.

| Script | Purpose |
|--------|---------|
| `_gen_pages.ps1` | Generated project detail pages 4–7 |
| `_gen_pages2.ps1` | Generated project detail pages 8–11 |
| `_gen_remaining.ps1` | Generated project detail pages 12–16 |
| `_gen_remaining2.ps1` | Generated project detail pages 17–20 |
| `_retrofit_projects.ps1` | Added bilingual support to original 3 project pages |
| `_retrofit_services.ps1` | Added bilingual support to 4 service pages |
| `_fix_translation.ps1` | Fixed HTML entity issues in i18n.js PT keys |
| `_fix_proj_translation.ps1` | Fixed untranslated sidebar values on all project pages |

## Images Note

The following image paths are referenced in `index.html` but the files do not yet exist (silently hidden by `onerror="this.remove()"`). Add optimised images here to restore those sections:

- `images/projects/port.jpg`
- `images/projects/water.jpg`
- `images/projects/bridge.jpg`
- `images/services/esia.jpg`
- `images/services/audit.jpg`
- `images/services/monitoring.jpg`
- `images/services/rap.jpg`
