---
name: talos-fix
description: Fix broken links, bad frontmatter, and vault conflicts
---

# /talos-fix — Fix Brain Issues

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `talos health` via Bash for issue list
2. Read `_brain/link-index.yaml` — find broken links (targets that don't exist)
3. Read `_brain/conflicts.md` — check for unresolved contradictions
4. Scan vault files for frontmatter issues per `_brain/schemas.yaml`:
   - Missing required fields
   - Wrong type values
   - Missing date fields

## Auto-fix (do these automatically)
- Missing frontmatter fields → add defaults
- Broken wikilinks to renamed files → update if obvious match
- Empty changelog entries → remove

## Report-only (don't auto-fix)
- Contradictions in conflicts.md
- Ambiguous broken links
- Files with wrong type classification

## Agents
Dispatch the **linker** agent to resolve broken wikilinks by finding likely rename targets.

## Output
Summary of fixes applied and issues requiring manual attention.

## Activity Log
Run `talos log "fix: <brief outcome>"` via Bash.
