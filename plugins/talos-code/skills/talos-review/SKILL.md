---
name: talos-review
description: Code review with severity ratings and brain-aware standards
---

# /talos-review — Code Review

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read `_brain/profile.md` for coding preferences. Search vault via QMD for 'code standards' and reference any found.
2. Get changes to review:
   - If PR/branch specified: `git diff main...HEAD`
   - If no arg: `git diff HEAD~1` (last commit)
   - If file specified: review that file
3. Analyze for:
   - **Bugs**: logic errors, off-by-one, null handling, race conditions
   - **Security**: injection, auth bypass, data exposure, OWASP top 10
   - **Performance**: N+1 queries, unnecessary allocations, missing indexes
   - **Style**: naming, dead code, complexity, readability
   - **Tests**: missing coverage, edge cases, assertions
4. Check `.talos/debug/` scripts — flag if they don't cover the reviewed changes
5. After review, offer to save critical findings to `.talos/bugs.md`

## Output Format
| Severity | File:Line | Issue | Suggestion |
|----------|-----------|-------|------------|

Severities: CRITICAL, WARNING, SUGGESTION

End with summary: X critical, Y warnings, Z suggestions.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — review: <brief outcome>`
