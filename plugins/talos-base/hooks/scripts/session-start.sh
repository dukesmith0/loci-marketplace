#!/bin/bash
CONFIG="$HOME/.talos/config.yaml"
[ ! -f "$CONFIG" ] && exit 0
VAULT=$(grep 'vault_path:' "$CONFIG" | sed 's/vault_path: *//' | tr -d '"' | tr -d "'")
[ ! -d "$VAULT" ] && exit 0

echo "=== TALOS Brain ==="
echo "Vault: $VAULT"

[ -f "$VAULT/_brain/profile.md" ] && echo "--- Profile ---" && cat "$VAULT/_brain/profile.md"
[ -f "$VAULT/_brain/priorities.md" ] && echo "--- Priorities ---" && cat "$VAULT/_brain/priorities.md"

if [ -d "$VAULT/_brain/pinned" ]; then
  for f in "$VAULT/_brain/pinned"/*.md; do
    [ -f "$f" ] && echo "--- Pinned: $(basename "$f" .md) ---" && cat "$f"
  done
fi

[ -f "$VAULT/_brain/crash-buffer.md" ] && echo "--- Open Threads ---" && cat "$VAULT/_brain/crash-buffer.md"

# Brain index status
[ -f "$VAULT/_brain/link-index.yaml" ] && echo "--- Link Index: $(wc -l < "$VAULT/_brain/link-index.yaml") lines ---"
[ -f "$VAULT/_brain/word-freq.txt" ] && echo "--- Word Freq: $(wc -l < "$VAULT/_brain/word-freq.txt") terms ---"
[ -f "$VAULT/_brain/gaps.txt" ] && echo "--- Knowledge Gaps ---" && tail -5 "$VAULT/_brain/gaps.txt"
[ -f "$VAULT/_brain/conflicts.md" ] && grep -c "^###" "$VAULT/_brain/conflicts.md" 2>/dev/null | xargs -I{} echo "--- {} unresolved conflicts ---"

echo "=== End Brain ==="
