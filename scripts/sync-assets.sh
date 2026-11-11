#!/usr/bin/env bash
set -euo pipefail

# Sync canonical Square Fold brand.css and favicon.svg into a target project.
# Usage:
#   ./scripts/sync-assets.sh <target-root> [static|hugo]

SKILL_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:?Usage: $0 <target-root> [static|hugo]}"
MODE="${2:-auto}"

if [[ "$MODE" == "auto" ]]; then
  if [[ -f "$TARGET/hugo.toml" || -f "$TARGET/config.toml" ]]; then
    MODE="hugo"
  else
    MODE="static"
  fi
fi

case "$MODE" in
  hugo)
    mkdir -p "$TARGET/assets/css" "$TARGET/static"
    cp "$SKILL_ROOT/assets/brand.css" "$TARGET/assets/css/brand.css"
    cp "$SKILL_ROOT/assets/favicon.svg" "$TARGET/static/favicon.svg"
    echo "Synced Hugo brand assets -> $TARGET/assets/css/brand.css & $TARGET/static/favicon.svg"
    ;;
  static)
    mkdir -p "$TARGET"
    cp "$SKILL_ROOT/assets/brand.css" "$TARGET/brand.css"
    cp "$SKILL_ROOT/assets/favicon.svg" "$TARGET/favicon.svg"
    echo "Synced static brand assets -> $TARGET/brand.css & $TARGET/favicon.svg"
    ;;
  *)
    echo "Unknown mode: $MODE (expected 'static' or 'hugo')" >&2
    exit 1
    ;;
esac
