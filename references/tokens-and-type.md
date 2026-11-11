# Tokens & Typography

## Google Fonts Snippet

Include in `<head>` before `brand.css`:

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;500;600;700&family=Fira+Code:wght@400;500&family=Instrument+Serif&family=Noto+Sans+SC:wght@400;500;700&display=swap" rel="stylesheet">
```

## Color Tokens (`assets/brand.css`)

| Token | Value | Hex approx | Role |
|---|---|---|---|
| `--paper` | `oklch(0 0 0)` | `#000000` | Page background (pure black) |
| `--paper-2` | `oklch(0.16 0 0)` | `#0E0E0E` | Code block / avatar subtle surface |
| `--ink` | `oklch(0.98 0 0)` | `#FAFAFA` | Primary text, titles, inactive nav |
| `--muted` | `oklch(0.70 0 0)` | `#9E9E9E` | Descriptions, subtitles, axis notes |
| `--faint` | `oklch(0.48 0 0)` | `#5E5E5E` | Dates, axis ticks, secondary tags |
| `--line` | `oklch(0.30 0 0)` | `#2E2E2E` | Section rules, mobile sidebar divider |
| `--line-soft` | `oklch(0.20 0 0)` | `#171717` | Subtle footer / chart grid lines |
| `--accent` | `oklch(0.87 0.19 99)` | `#ECD32D` | Brand blade, active nav, hover strikethrough, chart series, text selection |

## Type Hierarchy

- **Wordmark (`.brand`)**: `"Instrument Serif", serif`, `3.1rem` desktop / `2.1rem` mobile, `font-weight: 600`, `line-height: 1`, `letter-spacing: -0.015em`.
- **Navigation (`.nav-item`)**: `"Archivo", sans-serif`, `1.84rem` desktop / `1.85rem` mobile, `font-weight: 700`, `letter-spacing: -0.05em`, `text-transform: lowercase`.
  - Both `.brand-line` and `.nav-item` apply `text-box-trim: trim-both; text-box-edge: cap alphabetic;` so flex gaps reflect true optical cap-to-baseline distances.
- **Body (`body`)**: `"Archivo", "Noto Sans SC", system-ui, sans-serif`, `17px`, `line-height: 1.5`, `letter-spacing: -0.012em`.
- **Data & Metadata**: `"Fira Code", ui-monospace, monospace` with `font-variant-numeric: tabular-nums` for dates, KPI figures, and tags.
