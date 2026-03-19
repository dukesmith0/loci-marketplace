---
name: talos-extract
description: Extract topic from a note into a new standalone reference
---

# /talos-extract — Extract Topic to New Note

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read the specified vault file
2. Identify the section/topic to extract (from user's argument)
3. Read `_brain/schemas.yaml` for proper frontmatter
4. Create new reference note with:
   - Extracted content, restructured as standalone
   - Proper frontmatter
   - Backlink to source file
5. Update source file: replace extracted content with wikilink to new note
6. Run `talos link <new-file>` via Bash

## Output
Confirm extraction: source file, new note path, content moved.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — extract: <brief outcome>`
