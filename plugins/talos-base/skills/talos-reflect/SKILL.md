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
4. Read `_brain/gaps.txt` for recurring knowledge gaps
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
- If yes: write to vault with proper frontmatter per `_brain/schemas.yaml`
- Changelog updated automatically by hook

## Agents
Dispatch the **summarizer** agent for weekly compression. Dispatch the **researcher** agent to cross-reference gaps and search patterns.

## Output
Write reflection to today's daily note under `## Reflection` section.

## Activity Log
Run `talos log "reflect: <brief outcome>"` via Bash.
