---
name: squarefold-branding
description: >-
  Apply the Square Fold visual identity, layout shell, slanted-blade brand mark,
  chart palette, and editorial copy style across debidong.github.io and sibling
  projects (such as Forecaster). Use when building a new debidong sub-site,
  dashboard, or landing page, restyling a page to match Square Fold, or updating
  shared branding assets.
---

# Square Fold Branding

Shared brand system for **Square Fold** (`debidong.github.io`) and its sibling projects (such as `Forecaster`).

 Aesthetic direction: **Swiss-editorial print on pure black**—condensed high-contrast serif mastheads (`Instrument Serif`), tight geometric grotesk navigation (`Archivo` + `Noto Sans SC`), tabular `Fira Code` numbers, zero card borders or shadows, hidden page scrollbars, and a single flat signal-yellow accent (`#ECD32D` / `oklch(0.87 0.19 99)`).

## Quick Start

1. **Sync canonical assets** into the target repo instead of hand-rewriting CSS or SVG:
   ```bash
   <skill-dir>/scripts/sync-assets.sh <project-root>
   ```
   - Hugo projects (`hugo.toml` present): writes `assets/css/brand.css` and `static/favicon.svg`.
   - Static / single-page projects: writes `brand.css` and `favicon.svg` at `<project-root>/`.
   - Or reference live GitHub Pages assets directly when hosted under `debidong.github.io`:
     - `https://debidong.github.io/squarefold-branding/assets/brand.css`
     - `https://debidong.github.io/squarefold-branding/assets/favicon.svg`
2. **Load Google Fonts** in `<head>` (`Instrument Serif`, `Archivo`, `Noto Sans SC`, `Fira Code`)—exact `<link>` snippet in [tokens-and-type.md](./references/tokens-and-type.md).
3. **Render the left sticky `.sidebar` + `.page` shell** using the exact HTML skeleton in [layout-and-charts.md](./references/layout-and-charts.md) and mark rules in [mark-and-favicon.md](./references/mark-and-favicon.md).
4. **Visually verify** in a real headless/local browser against [specimen.png](./preview/specimen.png) before finishing.

## Non-Negotiables

- **Pure black canvas (`#000000`) + single yellow accent (`#ECD32D`)**: Never introduce secondary accent colors, dark-slate SaaS backgrounds (`#0f172a`), drop shadows, glassmorphism, or gradients (except subtle ECharts area fill fading from `rgba(236,211,45,0.12)` to `0`).
- **Zero card chrome**: Separate content groups with whitespace and `.section-bar` horizontal hairline rules (`1px solid var(--line)`), never boxed cards.
- **Exact brand mark (`16°` slanted blade)**: Always use `.brand-mark` from `assets/brand.css` and `assets/favicon.svg`. Never substitute a round dot, native period, or redrawn polygon.
- **Optical kerning on overhanging final letters**: When the wordmark ends in lowercase `r`, `f`, `v`, `w`, or `y` (e.g., `Fore` / `caster`, `Read` / `er`), add `data-kern="overhang"` on `.brand` so the blade tucks `-0.045em` under the overhanging arm.
- **Sibling-site sidebar restraint**: Only the main personal site (`Square Fold`) renders `.side-contact` (`email` / `github`) under `.nav`. Sub-sites (`Forecaster`, tools, dashboards) keep the left sidebar strictly to `.brand` + `.nav` tabs; external links belong inside the `about` view.
- **Hidden page scrollbars**: Keep `scrollbar-width: none` and `::-webkit-scrollbar { display: none }` on `html` and `body`.
- **Impersonal, plainspoken copy**: Avoid first-person pronouns (`我` / `我们`) in tool/project descriptions and `about` pages unless writing a signed personal essay. Explain domain concepts in concrete, everyday terms.

## Task Routing

| Task | Read |
|---|---|
| Palette, Google Fonts `<link>`, CSS variables, type hierarchy | [tokens-and-type.md](./references/tokens-and-type.md) |
| Two-line masthead, `16°` slanted blade, `data-kern="overhang"`, favicon | [mark-and-favicon.md](./references/mark-and-favicon.md) |
| Sidebar + main grid, width overrides, section dividers, ECharts spec | [layout-and-charts.md](./references/layout-and-charts.md) |
| Chinese/English microcopy, beginner-friendly notes, `about` page tone | [voice-and-copy.md](./references/voice-and-copy.md) |
| Machine-readable token/asset catalog | [manifest.json](./assets/manifest.json) |

## Verification Checklist

1. Compare desktop (`1280px`) and mobile (`<= 860px`) screenshots against [specimen.png](./preview/specimen.png).
2. Confirm the slanted blade sits flush on the final line's alphabetic baseline, scales in `em` on mobile, and uses `data-kern="overhang"` if the last letter has a top-right overhang (`r`, `f`, `v`, `w`, `y`).
3. Confirm browser tab icon loads `favicon.svg` (yellow `16°` slanted blade) and page scrollbars are hidden.
4. Check Chinese paragraphs and chart subtitles for awkward single-character orphans (`text-wrap: pretty`) and remove any unintended first-person pronouns.
