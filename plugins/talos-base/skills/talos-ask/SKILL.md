---
name: talos-ask
description: Query the brain and get a direct answer with citations
---

# /talos-ask — Ask the Brain

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Use QMD MCP `query` tool with the user's question
2. Read the top 3-5 results via QMD `get` or `multi_get`
3. Synthesize a direct answer from vault content
4. Cite sources with [[wikilinks]] to vault files
5. If 0 results: say "No knowledge found" and append query to `_brain/gaps.txt`
6. Append search query and result count to `_brain/search-log.txt`. If 0 results, also append to `_brain/gaps.txt`.

## Output
Direct answer with citations. Not a list of files — an actual answer derived from vault content.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — ask: <brief outcome>`
