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
4. Read `_brain/link-index.yaml` for known entity names
5. Convert to structured markdown:
   - Proper frontmatter per schema
   - Key concepts as headers
   - Tables for structured data
   - **Wikilinks inserted inline as you write** — wrap known entities on first mention per section
6. Write to appropriate vault location based on type

## Agents
Dispatch the **classifier** agent to determine note type from document content.

## Output
Confirm file created, type assigned, links inserted.

## Activity Log
Run `talos log "ingest: <brief outcome>"` via Bash.
