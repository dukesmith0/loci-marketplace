---
name: talos-setup
description: Initialize TALOS config and vault structure
---

# /talos-setup — Initialize TALOS

## Step 0: Check prerequisites
Run `which talos` via Bash. If available, proceed. If not, create config manually.

## With CLI
1. Run `talos setup` via Bash
2. Display output — confirm vault path, config location, QMD status
3. If errors, suggest fixes (missing vault dir, no git init, etc.)

## Without CLI (manual fallback)
1. Ask user for vault path
2. Create `~/.talos/config.yaml` with vault_path
3. Create `_brain/` folder structure in vault: profile.md, priorities.md, pinned/, crash-buffer.md, schemas.yaml, link-index.yaml, word-freq.txt, access-log.txt, search-log.txt, gaps.txt, conflicts.md, changelog.md
4. Init git in vault if not already
