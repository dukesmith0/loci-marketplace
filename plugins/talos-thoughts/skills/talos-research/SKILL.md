---
name: talos-research
description: Deep research combining vault knowledge and web sources
---

# /talos-research — Deep Research

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. **Vault search first**: QMD query for existing knowledge on topic
2. Read top vault results — establish what's already known
3. **Web search**: search for current/external information
4. **Cross-reference**: compare web findings with vault knowledge
5. **Synthesize** into structured brief:

### Output Format
#### Key Findings
Numbered findings with confidence (high/medium/low)

#### Sources
- Vault: [[wikilinks]] to relevant notes
- Web: titled links with dates

#### Confidence Assessment
What's well-established vs. uncertain

#### Knowledge Gaps
What couldn't be answered, suggested next searches

#### Recommendations
Actionable next steps based on findings

## Save
Write research brief to vault with frontmatter `type: reference, confidence: <level>, tags: [research, <topic>]`. Run `talos link <file>`. Append to `_brain/changelog.md`.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — research: <brief outcome>`
