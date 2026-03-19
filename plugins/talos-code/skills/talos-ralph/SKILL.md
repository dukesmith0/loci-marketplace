---
name: talos-ralph
description: Iterative execution loop with stuck detection
---

# /talos-ralph — Iterative Execution Loop

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Setup
1. Clarify with user: What are the completion criteria?
2. Set max iterations (default: 10, ask user to confirm)

## Loop (each iteration)
1. **Assess**: What is the current state? What's left?
2. **Act**: Take the most impactful next action
3. **Check**: Are completion criteria met?
   - Yes → exit loop, report done
   - No → continue

## Stuck Detection
If same issue persists for 3+ iterations:
- Stop current approach
- Log what was tried
- Try a fundamentally different approach
- If still stuck after 2 different approaches, stop and ask user

## End
- Log session to daily note via /talos-log
- Report: iterations used, approach taken, outcome

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — ralph: <brief outcome>`
