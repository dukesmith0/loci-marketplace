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
4. Read `_brain/link-index.yaml` for known entity names
5. Create new reference note with:
   - Extracted content, restructured as standalone
   - Proper frontmatter
   - Backlink to source file
   - **Wikilinks inserted inline** — wrap known entities as you write, first mention per section
6. Update source file: replace extracted content with wikilink to new note

## Output
Confirm extraction: source file, new note path, content moved.

## Activity Log
Run `talos log "extract: <brief outcome>"` via Bash.
