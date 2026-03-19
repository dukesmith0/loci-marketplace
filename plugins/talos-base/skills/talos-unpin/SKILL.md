---
name: talos-unpin
description: Remove pinned memory from working memory
---

# /talos-unpin — Remove Pinned Memory

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. List all files in `_brain/pinned/`
2. If user specified which one: delete that file
3. If not specified: display numbered list, ask which to remove
4. Delete the selected file

## Output
Confirm which pinned memory was removed.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — unpin: <brief outcome>`
