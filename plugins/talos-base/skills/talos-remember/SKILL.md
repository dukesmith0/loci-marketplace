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
4. If type is "fact": search vault for contradictions. Read `_brain/conflicts.md`. If a contradicting note exists on the same topic, flag it and ask the user which is correct before writing.
5. Generate filename from content (kebab-case, descriptive)
6. Write .md file with proper frontmatter + content
7. Run `talos link <file>` via Bash to insert wikilinks
8. Append entry to `_brain/changelog.md`

## Output
Confirm what was stored, where, and any contradictions found.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — remember: <brief outcome>`
