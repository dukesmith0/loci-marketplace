---
name: talos-log
description: Append timestamped entry to today's daily note
---

# /talos-log — Append to Daily Note

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Determine today's date (YYYY-MM-DD)
2. Find or create daily note at `journal/YYYY/MM/YYYY-MM-DD.md`
3. Append timestamped entry under `## Auto-log` section:
   ```
   - HH:MM — <entry content>
   ```
4. If daily note is new, add frontmatter: `date`, `type: journal`

## Args
The user's message after /talos-log is the entry content. If empty, log a session activity summary.
