---
name: talos-cleanup
description: Find orphan and stale files for archival
---

# /talos-cleanup — Find Orphans & Stale Content

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `talos index` via Bash if available
2. Read `_brain/link-index.yaml` — find files with zero incoming links (orphans)
3. Read `_brain/access-log.txt` — find files not accessed in 90+ days
4. Cross-reference: orphans that are also stale are top candidates for archival

## Output
Table with columns: File | Last Accessed | Incoming Links | Recommendation
Recommendations: keep, archive, merge, delete

Do NOT auto-delete. Present list and let user decide.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — cleanup: <brief outcome>`
