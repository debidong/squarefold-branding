# Brand Mark & Favicon

## Wordmark Structure

Site titles stack across **two lines** in `Instrument Serif` (`--brand-line-gap: 0.52rem`), with the `16°` forward-leaning yellow blade (`.brand-mark`) anchored to the alphabetic baseline at the end of the final line:

- Multi-word title: split by word (`Square` / `Fold`).
- Single compound word: split at the morphological seam (`Fore` / `caster`).

### Standard Markup (flush right-stem final glyph, e.g. `Fold`)

```html
<a class="brand" href="/">
  <span class="brand-line">Square</span>
  <span class="brand-row"><span class="brand-line">Fold</span><i class="brand-mark" aria-hidden="true"></i></span>
</a>
```

### Overhang-Adjusted Markup (final glyph `r`, `f`, `v`, `w`, `y`, e.g. `Forecaster`)

Lowercase glyphs such as `r` extend an arm at the top-right while leaving empty space at the baseline. Without optical kerning, a baseline mark looks `~2.5px` further right than next to `d` or `l`. Add `data-kern="overhang"` on `.brand`:

```html
<div class="brand" data-kern="overhang">
  <span class="brand-line">Fore</span>
  <span class="brand-row"><span class="brand-line">caster</span><i class="brand-mark" aria-hidden="true"></i></span>
</div>
```

## Slanted Blade Geometry

Defined in `em` so desktop (`3.1rem`) and mobile (`2.1rem`) scale in exact lockstep:

- `width: 0.206em` (`~10.2px` at `3.1rem`)
- `height: 0.297em` (`~14.7px` at `3.1rem`)
- `transform: skewX(-16deg)` with `transform-origin: bottom left`
- `margin-left: calc(var(--mark-gap) + var(--mark-kern))` where `--mark-gap: 0.103em` and overhang `--mark-kern: -0.045em`

## Favicon (`assets/favicon.svg`)

Every Square Fold and sibling site uses the exact `16°` slanted blade in a `32×32` viewBox (optical centroid at `(16, 16)`):

```xml
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32">
  <polygon points="10.75,3 28.75,3 21.25,29 3.25,29" fill="#ECD32D"/>
</svg>
```

Link in `<head>`:

```html
<link rel="icon" href="./favicon.svg" type="image/svg+xml">
```
