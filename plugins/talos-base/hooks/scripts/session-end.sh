#!/bin/bash
CONFIG="$HOME/.talos/config.yaml"
[ ! -f "$CONFIG" ] && exit 0
VAULT=$(grep 'vault_path:' "$CONFIG" | sed 's/vault_path: *//' | tr -d '"' | tr -d "'")
[ ! -d "$VAULT" ] && exit 0

cd "$VAULT"
if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
  git add -A && git commit -m "session auto-save $(date +%Y-%m-%d_%H:%M)" 2>/dev/null
fi

which talos >/dev/null 2>&1 && talos update 2>/dev/null &
