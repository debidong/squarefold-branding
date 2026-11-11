# squarefold-branding

Shared visual identity, CSS shell, slanted-blade brand mark, chart palette, and editorial copy guidelines for **Square Fold** (`debidong.github.io`) and sibling sites (such as `Forecaster`), packaged in the open **Agent Skills** (`SKILL.md`) format.

## Structure

```text
squarefold-branding/
├── SKILL.md                      # Agent Skill entry point
├── assets/
│   ├── brand.css                 # Shared tokens, reset, sidebar, slanted blade, section rules
│   ├── favicon.svg               # 16° yellow slanted-blade favicon (32×32)
│   └── manifest.json             # Machine-readable token & geometry catalog
├── references/
│   ├── tokens-and-type.md        # Palette, Google Fonts link, typography scale
│   ├── mark-and-favicon.md       # Two-line masthead, blade geometry, overhang kerning
│   ├── layout-and-charts.md      # Page grid, horizontal section dividers, ECharts theme
│   └── voice-and-copy.md         # Impersonal, plainspoken copy guidelines
├── scripts/
│   └── sync-assets.sh            # Sync brand.css & favicon.svg into Hugo or static repos
├── preview/
│   └── specimen.png              # Rendered 1:1 visual source board
└── index.html                    # Living Brand Specimen page
```

## Install as an Agent Skill

```bash
# Via Agent Skills CLI
npx skills add debidong/squarefold-branding

# Or via local symlink
ln -s /path/to/squarefold-branding ~/.agents/skills/squarefold-branding
```

## Sync Assets into a Project

```bash
./scripts/sync-assets.sh /path/to/project
```

- **Hugo sites** (`hugo.toml` detected): copies `assets/css/brand.css` and `static/favicon.svg`.
- **Static sites**: copies `brand.css` and `favicon.svg` into the project root.
