# TALOS Code — Development Workflow

## Agent Rules

- Use agents for **reading and analysis only** (exploring, reviewing, validating)
- Do NOT use agents for **writing code** — agents lack sufficient project context for safe edits
- All code writes happen in the main context where CLAUDE.md and .talos/ files are loaded
- Prefer `talos` CLI commands over manual file operations when available

## .talos/ File Updates

Update these files throughout development, not just at init:

| File | When to Update |
|------|----------------|
| `.talos/plan.md` | Mark items `[x]` after completing, add new items if scope changes |
| `.talos/bugs.md` | When bugs are found or fixed during any task |
| `.talos/decisions.md` | When design decisions are made during implementation |
| `.talos/risks.md` | When new risks are discovered or existing risks are mitigated |
| `.talos/index.md` | When project structure, tech stack, or components change significantly |

## Workflow

1. **Before coding**: read `.talos/index.md`, `.talos/decisions.md`, `CLAUDE.md` for context
2. **During coding**: follow project conventions, run tests after changes
3. **After coding**: update relevant `.talos/` files, commit, log activity via `talos log`

## Documentation Review

When reviewing code, also check README.md and .md documentation files. If code changes invalidate documented behavior, update the docs or flag as a review finding.
