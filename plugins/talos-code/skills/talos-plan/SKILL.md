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
   - `.talos/index.md` — tech stack, structure, key components
   - `.talos/plan.md` — any existing plan
   - `.talos/decisions.md` — prior decisions
   - `.talos/bugs.md` — known issues
   - `CLAUDE.md` — project overview and conventions
   - Recent git log (`git log --oneline -10`)
3. **Ask clarifying questions BEFORE planning.** If any of these are unclear, ask the user:
   - What is the desired end state? (What does "done" look like?)
   - Are there constraints? (Timeline, tech choices, backwards compatibility)
   - What's the scope? (MVP vs full feature, which parts are in/out)
   - Are there dependencies on external systems or people?
   - Do NOT guess — ambiguity in requirements leads to wasted implementation
4. Once requirements are clear, dispatch `talos-code:planner` agent with the task description, project context, and vault references
5. Write plan to `.talos/plan.md`:
   - Each item completable in one sitting
   - Include dependencies between items
   - Mark complexity: [simple], [moderate], [complex]

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
Run via Bash: `talos log "plan: <brief outcome>"`
