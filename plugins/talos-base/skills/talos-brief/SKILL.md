---
name: talos-brief
description: Comprehensive topic briefing from all memory types
---

# /talos-brief — Topic Briefing

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Search all memory types for the topic:
   - QMD `query` for direct matches
   - Check `_brain/link-index.yaml` for connected notes
   - Check journal/ for episodic mentions
2. Read top results via QMD `get` or `multi_get`
3. Append search query and result count to `_brain/search-log.txt`. If 0 results, also append to `_brain/gaps.txt`.
4. Synthesize into structured brief:
   - **Facts**: confirmed information
   - **Episodes**: when this came up (from journal)
   - **Connections**: related topics via link-index
   - **Gaps**: what's missing

## Output
Comprehensive briefing with all vault knowledge on the topic, organized by memory type.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — brief: <brief outcome>`
