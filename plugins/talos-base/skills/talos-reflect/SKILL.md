---
name: talos-reflect
description: Reflection and pattern analysis on vault activity
---

# /talos-reflect — Reflection & Pattern Analysis

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read recent daily notes (last 7 days from journal/)
2. Run `git log --oneline -30` in vault for recent changes
3. Identify patterns: recurring topics, active projects, time allocation
4. Read `_brain/gaps.txt` for recurring failed searches
5. Read `_brain/search-log.txt` for recurring search patterns. Surface: "You've searched for X multiple times with no results."
6. Generate reflection:
   - **Themes**: what dominated this period
   - **Progress**: what moved forward
   - **Gaps**: what was searched but not found
   - **Suggestions**: what to capture, prioritize, or archive

## Weekly mode (if arg "weekly")
- Read 7 daily notes
- Compress into weekly summary note at journal/weekly/YYYY-WNN.md
- Preserve key facts, decisions, and outcomes
- Link to individual daily notes

## Memory Consolidation
If a topic appears in 3+ daily notes this week without a dedicated vault note:
- Ask: "You've been working on [topic] frequently. Create a knowledge note?"
- If yes: write to vault with `type: fact` or `type: reference` frontmatter per schemas.yaml
- Run `talos link <file>` on the new note
- Append to `_brain/changelog.md`

## Output
Write reflection to today's daily note under `## Reflection` section.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — reflect: <brief outcome>`
