---
name: talos-storm
description: SCAMPER brainstorming with scoring and vault integration
---

# /talos-storm — SCAMPER Brainstorm

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Step 1: Search Context
Search vault via QMD query for existing brainstorms on this topic. Read relevant results for background.

## Phase 1: Generate (no filtering)
Apply SCAMPER to the problem:
- **S**ubstitute — What can be replaced?
- **C**ombine — What can merge?
- **A**dapt — What can be borrowed from elsewhere?
- **M**odify — What can be enlarged, shrunk, reshaped?
- **P**ut to other use — New contexts?
- **E**liminate — What's unnecessary?
- **R**everse — What if flipped?

Generate 10+ ideas. No judgment yet.

## Phase 2: Score
Rate each idea in a table:

| # | Idea | Feasibility | Impact | Novelty | Effort | Total |

Each dimension: 1-5. Total = sum.

## Phase 3: Refine
Take top 3 by score. For each:
- Flesh out implementation approach
- Identify risks and mitigations
- Estimate timeline

## Save
Save results to vault as a reference note with frontmatter `type: reference, tags: [brainstorm, <topic>]`. Run `talos link <file>`.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — storm: <brief outcome>`
