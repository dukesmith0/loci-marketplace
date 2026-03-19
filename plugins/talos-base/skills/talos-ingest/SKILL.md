---
name: talos-ingest
description: Convert document to structured vault note
---

# /talos-ingest — Ingest Document

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read the specified/uploaded document
2. Read `_brain/schemas.yaml` for type definitions and frontmatter templates
3. Determine appropriate type (reference, fact, etc.)
4. Convert to structured markdown:
   - Proper frontmatter per schema
   - Key concepts as headers
   - Tables for structured data
   - Wikilinks to existing vault notes where relevant
5. Write to appropriate vault location based on type
6. Run `talos link <file>` via Bash
7. Append entry to `_brain/changelog.md`

## Output
Confirm file created, type assigned, links inserted.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — ingest: <brief outcome>`
