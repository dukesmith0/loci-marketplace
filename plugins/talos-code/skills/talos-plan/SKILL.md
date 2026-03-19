---
name: talos-plan
description: Decompose task into checkable plan with vault context
---

# /talos-plan — Decompose Task into Plan

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Search vault via QMD query for similar past plans (query: 'plan <project-type>'). Reference successful patterns.
2. Read project context:
   - `.talos/plan.md` — any existing plan
   - `.talos/decisions.md` — prior decisions
   - `CLAUDE.md` — project overview
   - Recent git log (`git log --oneline -10`)
3. Take the user's task description
4. Decompose into ordered, checkable items in `.talos/plan.md`:
   - Each item completable in one sitting
   - Include dependencies between items
   - Mark complexity: [simple], [moderate], [complex]
5. Write plan to `.talos/plan.md`

## Format
```markdown
# Plan: [Task Title]
Started: [date]

## Checklist
- [ ] [simple] Item description
- [ ] [moderate] Item description (depends on #1)
```

## Output
Display the plan. Ask for approval before proceeding.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — plan: <brief outcome>`
