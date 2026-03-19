---
name: talos-cleanup
description: Find orphan and stale files for archival
---

# /talos-cleanup — Find Orphans & Stale Content

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `talos index` via Bash to refresh link graph
2. Read `_brain/link-index.yaml` — find files with zero incoming links (orphans)
3. Check file modification dates via `git log` — find files not modified in 90+ days (stale)
4. Cross-reference: orphans that are also stale are top candidates for archival

## Agents
Dispatch the **archivist** agent to cross-reference orphan and staleness data and generate recommendations.

## Output
Table with columns: File | Last Accessed | Incoming Links | Recommendation
Recommendations: keep, archive, merge, delete

Do NOT auto-delete. Present list and let user decide.

## Activity Log
Run `talos log "cleanup: <brief outcome>"` via Bash.
