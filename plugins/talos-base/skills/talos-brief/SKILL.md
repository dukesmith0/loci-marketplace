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
3. If 0 results on any search: append query + date to `_brain/gaps.txt`.
4. Synthesize into structured brief:
   - **Facts**: confirmed information
   - **Episodes**: when this came up (from journal)
   - **Connections**: related topics via link-index
   - **Gaps**: what's missing

## Agents
Dispatch the **researcher** agent to gather and cross-reference sources across memory types in parallel.

## Output
Comprehensive briefing with all vault knowledge on the topic, organized by memory type.

## Activity Log
Run `talos log "brief: <brief outcome>"` via Bash.
