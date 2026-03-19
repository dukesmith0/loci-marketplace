#!/bin/bash
# Log file reads to _brain/access-log.txt
CONFIG="$HOME/.talos/config.yaml"
[ ! -f "$CONFIG" ] && exit 0
VAULT=$(grep 'vault_path:' "$CONFIG" | sed 's/vault_path: *//' | tr -d '"' | tr -d "'")
[ ! -d "$VAULT" ] && exit 0
# Only log reads of vault files
FILE="${CLAUDE_TOOL_INPUT_FILE_PATH:-}"
case "$FILE" in "$VAULT"*) ;; *) exit 0 ;; esac
echo "$(date -Iseconds)	$FILE" >> "$VAULT/_brain/access-log.txt"
