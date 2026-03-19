# TALOS Brain Access

You have a persistent knowledge brain in an Obsidian vault. Read `~/.talos/config.yaml` for `vault_path`, then `$VAULT/_brain/config.yaml` for full settings.

## Memory Architecture

| System | Storage | Access |
|--------|---------|--------|
| Working | Context window + `_brain/crash-buffer.md` | SessionStart hook loads automatically |
| Episodic | `journal/` daily notes | `talos log "msg"` or direct write |
| Semantic | Vault `.md` files with typed frontmatter | QMD search/query tools |
| Identity | `_brain/profile.md` | Loaded every session |
| Pinned | `_brain/pinned/*.md` | Loaded every session |

## Writing Vault Files — CRITICAL

When creating or editing any `.md` file in the vault:

1. Get vault path: run `talos vault` (prefer CLI over manual config reads)
2. Read `_brain/schemas.yaml` for correct frontmatter for this file type
3. Read `_brain/link-index.yaml` for known entity names
4. **Insert wikilinks INLINE as you write** — wrap known entities in `[[double brackets]]` on first mention per section. Do NOT create the file first then go back to add links.
5. Skip wikilinks in: headings, code blocks, frontmatter, existing links
6. For facts: check for contradictions with existing notes before writing

## CLI First

Always prefer `talos` CLI commands over manual file operations when available:
- `talos vault` — get vault path
- `talos log "msg"` — append to daily note
- `talos link <file>` — add wikilinks to a file
- `talos index` — rebuild link-index
- `talos health` — check brain status
- `talos sync` — git pull/push vault

## Tracking

- **Changelog**: PostToolUse Write|Edit hook logs to `_brain/changelog.md` automatically
- **Access log**: PostToolUse Read hook logs to `_brain/access-log.txt` automatically
- **Activity log**: use `talos log "msg"` for significant events (new contact, plan completed, document ingested)
- **Gap detection**: when QMD search returns 0 results, append the query + date to `_brain/gaps.txt`

## Retrieval Strategy

1. Check `_brain/link-index.yaml` for direct connections
2. Check `_brain/word-freq.txt` to gauge topic coverage
3. Well-covered topic (>10 docs): QMD `search` tool (precise BM25)
4. Sparse topic (<5 docs): QMD `query` with `vec:` prefix (semantic)
5. Complex question: QMD `query` tool (hybrid + rerank)
6. 0 results → knowledge gap: append to `_brain/gaps.txt`
