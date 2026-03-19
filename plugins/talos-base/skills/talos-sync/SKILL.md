---
name: talos-sync
description: Git sync vault (pull/push)
---

# /talos-sync — Sync Vault

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `talos sync` via Bash
2. If CLI unavailable, manually:
   - `cd $VAULT && git pull --rebase && git push`
3. Report what was pulled/pushed (files changed, commits synced)
4. If merge conflicts, list them and suggest resolution

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — sync: <brief outcome>`
