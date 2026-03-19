---
name: talos-pin
description: Pin content to working memory (loaded every session)
---

# /talos-pin — Pin to Working Memory

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Take the user's content (argument after /talos-pin)
2. Generate a short descriptive filename (kebab-case)
3. Write to `_brain/pinned/<filename>.md`
4. Content should be small and focused — if too long, suggest trimming

Pinned files are loaded every session start. Keep them concise and actionable.

## Output
Confirm what was pinned and the filename.

## Activity Log
Run `talos log "pin: <brief outcome>"` via Bash.
