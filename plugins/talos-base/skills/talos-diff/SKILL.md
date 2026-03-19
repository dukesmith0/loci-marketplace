---
name: talos-diff
description: Narrative summary of recent vault changes
---

# /talos-diff — Vault Change Summary

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `git log --oneline -20` in vault directory via Bash
2. Run `git diff --stat HEAD~10` for file-level changes
3. Summarize changes narratively:
   - Group by topic/area (e.g., "3 new project notes", "updated contacts")
   - Highlight new files vs modifications
   - Note any deletions

## Output
Narrative summary of recent vault changes, not raw git output.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — diff: <brief outcome>`
