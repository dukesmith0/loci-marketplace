---
name: talos-notes
description: Capture course notes to vault with cross-references
---

# /talos-notes — Capture Course Notes

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Take the user's notes content
2. Search vault for related course materials and existing notes
3. Create timestamped note in vault:
   - Frontmatter: type: study-note, course: [name], date: [today], topic: [topic]
   - Content structured with headers and bullet points
   - Wikilinks to course materials and related vault notes
4. Cross-reference: link to existing notes on overlapping concepts
5. Run `talos link <file>` via Bash

## Output
Confirm note saved with path and cross-references created.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — notes: <brief outcome>`
