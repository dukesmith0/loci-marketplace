---
name: talos-link
description: Insert wikilinks in vault files
---

# /talos-link — Insert Wikilinks

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. If file specified: run `talos link <file>` via Bash
2. If no file specified: find recently modified files in vault (`git diff --name-only HEAD~5`) and run `talos link` on each
3. Display what links were added

## Output
List of files processed and links inserted.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — link: <brief outcome>`
