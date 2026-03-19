---
name: talos-status
description: Current brain state report with priorities and health
---

# /talos-status — Brain State Report

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read `_brain/priorities.md` — current focus areas
2. Read `_brain/crash-buffer.md` — unfinished threads from last session
3. Read `_brain/state.yaml` — system state if exists
4. Read `_brain/profile.md` for user context
5. Count files: `ls $VAULT/ | wc -l` for rough size
6. Check git status in vault for uncommitted changes

## Output
Report as concise summary:
- Current priorities
- Open threads from crash buffer
- Vault size and health indicators
- Any uncommitted changes

## Activity Log
Run `talos log "status: <brief outcome>"` via Bash.
