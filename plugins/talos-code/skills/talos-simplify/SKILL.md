---
name: talos-simplify
description: Refactor code for clarity while preserving behavior
---

# /talos-simplify — Simplify Code

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read `.talos/decisions.md` for context on why code is structured this way before simplifying.
2. Identify target:
   - If file/function specified: review that
   - If no arg: review recently changed files (`git diff --name-only HEAD~3`)
3. Analyze for complexity:
   - Duplicated logic → extract shared function
   - Deep nesting → early returns, guard clauses
   - Long functions → decompose
   - Unnecessary abstractions → inline
   - Complex conditionals → named booleans or lookup tables
4. Refactor while preserving ALL functionality
5. Run tests to verify no regressions
6. Commit with descriptive message

## Rules
- Every simplification must preserve behavior
- If unsure about a change, skip it and note it
- Prefer readability over cleverness

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — simplify: <brief outcome>`
