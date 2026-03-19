---
name: talos-diff
description: Project git history analysis grouped by topic
---

# /talos-diff — Project Git History Analysis

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `git log --oneline -20` in current project directory
2. Run `git diff --stat HEAD~10` for file-level changes
3. Group changes by area:
   - Features added
   - Bugs fixed
   - Refactoring done
   - Config/infra changes
4. Identify patterns: hot files, active areas, neglected areas

## Output
Narrative summary of recent project changes grouped by topic. Not raw git output.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — diff: <brief outcome>`
