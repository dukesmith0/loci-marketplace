#!/bin/bash
CONFIG="$HOME/.talos/config.yaml"
[ ! -f "$CONFIG" ] && exit 0
VAULT=$(grep 'vault_path:' "$CONFIG" | sed 's/vault_path: *//' | tr -d '"' | tr -d "'")
[ ! -d "$VAULT" ] && exit 0

cd "$VAULT"
if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
  git add "*.md" "*.yaml" "*.txt" 2>/dev/null
  git commit -m "session auto-save $(date +%Y-%m-%d_%H:%M)" 2>/dev/null
fi

if command -v talos >/dev/null 2>&1; then
  talos sync 2>/dev/null
  timeout 60 talos update 2>/dev/null &
fi
