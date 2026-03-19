---
name: talos-remember
description: Store structured knowledge to vault with conflict detection
---

# /talos-remember — Store Knowledge

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read `_brain/schemas.yaml` for available types and frontmatter templates
2. Determine note type from content (fact, reference, preference, contact, episode)
3. Apply confidence rule:
   - "I did/built/bought X" → fact, confidence: high
   - "I'm planning X" → plan, confidence: medium
   - "What if X" → idea, confidence: low
   - Ambiguous → ASK before storing
4. If type is "fact": search vault via QMD `query` for contradictions. Read `_brain/conflicts.md`. If contradicting note exists, flag and ask user which is correct before writing.
5. Read `_brain/link-index.yaml` for known entity names
6. Generate filename from content (kebab-case, descriptive)
7. Write .md file with proper frontmatter + content. **Insert wikilinks inline as you write** — wrap known entities in `[[double brackets]]` on first mention per section. Do not write the file then go back to add links.

## Agents
Dispatch the **classifier** agent to determine note type and confidence level.

## Output
Confirm what was stored, where, and any contradictions found.

## Activity Log
Run `talos log "remember: <brief outcome>"` via Bash.
