---
name: talos-recall
description: Deep memory recall with coverage analysis
---

# /talos-recall — Deep Memory Recall

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read `_brain/link-index.yaml` — find all connections to topic
2. Read `_brain/word-freq.txt` — gauge how well-covered this topic is
3. Search via QMD:
   - If well-covered (>10 docs): use QMD `query` for precise results
   - If sparse (<5 docs): use QMD `query` with vec: prefix for semantic search
   - If complex: use QMD `query` (hybrid + rerank)
4. Read top results via QMD `get` or `multi_get`
5. Check `_brain/gaps.txt` — has this topic been searched before with no results?

## Agents
Dispatch the **researcher** agent for deep cross-referencing across link-index and search results.

## Output
Full memory picture: what's known, connection graph, coverage depth, and any gaps.

## Activity Log
Run `talos log "recall: <brief outcome>"` via Bash.
