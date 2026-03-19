#!/bin/bash
# Log search queries to _brain/search-log.txt and detect gaps
CONFIG="$HOME/.talos/config.yaml"
[ ! -f "$CONFIG" ] && exit 0
VAULT=$(grep 'vault_path:' "$CONFIG" | sed 's/vault_path: *//' | tr -d '"' | tr -d "'")
[ ! -d "$VAULT" ] && exit 0
# Check if bash command contains talos search/query
CMD="${CLAUDE_TOOL_INPUT_COMMAND:-}"
case "$CMD" in *"talos search"*|*"talos vsearch"*|*"talos query"*|*"qmd"*)
  echo "$(date -Iseconds)	$CMD" >> "$VAULT/_brain/search-log.txt"
  ;; esac
