---
name: talos-brainstorm
description: SCAMPER brainstorming with scoring and vault integration
---

# /talos-brainstorm — SCAMPER Brainstorm

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
Dispatch `talos-thoughts:brainstorm-scorer` agent with the generated ideas to rate each:

| # | Idea | Feasibility | Impact | Novelty | Effort | Total |

Each dimension: 1-5. Total = sum.

## Phase 3: Refine
Take top 3 by score. For each:
- Flesh out implementation approach
- Identify risks and mitigations
- Estimate timeline

## Save
Read `_brain/link-index.yaml` for known entities. Save results to vault as a reference note with frontmatter `type: idea, tags: [brainstorm, <topic>]`. **Insert wikilinks inline as you write.**

## Activity Log
Run via Bash: `talos log "brainstorm: <brief outcome>"`
