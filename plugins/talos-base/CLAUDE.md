# TALOS Brain Access

You have access to a persistent knowledge brain stored in an Obsidian vault.
Read ~/.talos/config.yaml for vault_path and settings.

## Memory Architecture
- Working memory: your context window + _brain/crash-buffer.md
- Episodic memory: journal/ daily notes with auto-log
- Semantic memory: vault .md files with frontmatter schemas
- Procedural memory: these skills
- Identity: _brain/profile.md (always loaded at session start)
- Retrieval: QMD MCP tools (query, get, multi_get, status)

## Session Context
Profile.md is loaded at session start by the SessionStart hook. All skills can reference the user's identity, preferences, and background from it — it's already in your context window.

## Before Writing Any Vault File
1. Run `talos vault` to get vault path (or read ~/.talos/config.yaml)
2. Read _brain/schemas.yaml for correct frontmatter
3. After writing, run `talos link <file>` to add wikilinks
4. If type is "fact": check for contradictions with existing notes

## Retrieval Strategy
1. Check _brain/link-index.yaml for direct connections
2. Check _brain/word-freq.txt to gauge topic coverage
3. Well-covered topic (>10 docs): use QMD search tool (precise BM25)
4. Sparse topic (<5 docs): use QMD query tool with vec: prefix (semantic)
5. Complex question: use QMD query tool (hybrid + rerank)
6. 0 results: knowledge gap — append to _brain/gaps.txt
