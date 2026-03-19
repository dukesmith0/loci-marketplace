#!/bin/bash
# Log vault file changes to _brain/changelog.md
CONFIG="$HOME/.talos/config.yaml"
[ ! -f "$CONFIG" ] && exit 0
VAULT=$(grep 'vault_path:' "$CONFIG" | sed 's/vault_path: *//' | tr -d '"' | tr -d "'")
[ ! -d "$VAULT" ] && exit 0
FILE="${CLAUDE_TOOL_INPUT_FILE_PATH:-}"
case "$FILE" in "$VAULT"*) ;; *) exit 0 ;; esac
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M)
# Append to changelog
echo "- $TIME Modified: ${FILE#$VAULT/}" >> "$VAULT/_brain/changelog.md"
