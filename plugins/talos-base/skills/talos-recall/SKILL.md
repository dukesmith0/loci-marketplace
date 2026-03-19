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
3. Read `_brain/access-log.txt` — when was this last accessed? Weight recent access higher for relevance ranking.
4. Search via QMD:
   - If well-covered (>10 docs): use `search` for precise BM25
   - If sparse (<5 docs): use `query` with vec: prefix for semantic
   - If complex: use `query` (hybrid + rerank)
5. Read top results
6. Check `_brain/search-log.txt` for past searches on this topic

## Output
Full memory picture: what's known, how often accessed, connection graph, coverage depth, and any gaps.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — recall: <brief outcome>`
