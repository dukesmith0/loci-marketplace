---
name: talos-ask
description: Query the brain and get a direct answer with citations
---

# /talos-ask — Ask the Brain

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Determine the scope of the question:
   - **Vault question** (about knowledge, people, facts, preferences): search vault via QMD
   - **Project question** (about code, architecture, bugs): read `.talos/` files and project code
   - **Both**: search vault first, then check project context
2. For vault questions: use QMD `query` tool, read top 3-5 results via `get`/`multi_get`
3. For project questions: read `.talos/index.md`, `.talos/bugs.md`, `.talos/decisions.md`, and relevant code files
4. Synthesize a direct answer from the sources found
5. **Always cite the source type**: prefix answer with `[vault]`, `[project]`, or `[both]` so the user knows where the answer came from
6. Cite specific sources with [[wikilinks]] for vault files or `file:line` for project code
7. If 0 results from all sources: say "No knowledge found" and append query + date to `_brain/gaps.txt`

## Output
Direct answer with source attribution. Not a list of files — an actual answer derived from content.

## Activity Log
Run `talos log "ask: <brief outcome>"` via Bash.
