# Layout Shell, Section Dividers & Charts

## Page Shell (`.site` + `.sidebar` + `.page`)

```html
<div class="site">
  <header class="sidebar">
    <div class="brand" data-kern="overhang">
      <span class="brand-line">Fore</span>
      <span class="brand-row"><span class="brand-line">caster</span><i class="brand-mark" aria-hidden="true"></i></span>
    </div>
    <nav class="nav" aria-label="Primary">
      <button type="button" class="nav-item active">daily</button>
      <button type="button" class="nav-item">quarterly</button>
      <button type="button" class="nav-item">about</button>
    </nav>
  </header>
  <main class="page">
    <!-- Main content -->
  </main>
</div>
```

### Container Width Policy

- **Reading / essay sites (default in `brand.css`)**: `--site-width: 61.8vw;` (golden-ratio column width).
- **Two-column chart / tool dashboards (e.g. `Forecaster`)**: override `--site-width` locally:
  ```css
  :root {
    --site-width: min(1120px, calc(100% - 4rem));
  }
  ```
- **Sidebar footer links**: Do **not** add `.side-contact` on sub-sites. Place links back to `Square Fold` (`https://debidong.github.io/`) and the GitHub repository at the bottom of the sub-site's `about` view instead.

## Horizontal Section Divider (`.section-bar`)

Separate distinct categories or sections using a left-aligned heading followed by a `1px` horizontal rule that stretches to the right edge, plus an optional plainspoken subtitle:

```html
<div class="section-head">
  <div class="section-bar">
    <h2 class="section-title">云厂商手里的合同余额</h2>
    <span class="section-rule" aria-hidden="true"></span>
  </div>
  <p class="section-desc">客户已经签了字、但还没用完的多年期云服务大单总额……</p>
</div>
```

## ECharts Dark-Yellow Theme Specification

When rendering time-series or financial charts (ECharts / SVG):

- **Canvas**: `backgroundColor: 'transparent'`, `animation: false`
- **Primary series line**: `#ECD32D`, `width: 1.75`, symbols (`circle`, `symbolSize: 5`) for sparse quarterly series, `showSymbol: false` for dense daily series
- **Subtle area fill**: vertical linear gradient from `rgba(236, 211, 45, 0.10)` at top to `rgba(236, 211, 45, 0)` at bottom
- **Reference / threshold redline (`markLine`)**: dashed line (`rgba(250, 250, 250, 0.34)` or muted grey `#737373`) with `Fira Code` `11px` label—never introduce bright red/green stock-app colors unless unavoidable
- **Axes & Grid**:
  - X-axis baseline: `#2E2E2E` (`--line`), tick labels `#737373` in `Fira Code` `11px`, `axisTick: { show: false }`
  - Y-axis split lines: `1px solid #171717` (`--line-soft`)
- **Tooltip**: `#0E0E0E` background, `1px solid #2E2E2E` border, `#FAFAFA` text in `Fira Code` `12px`
