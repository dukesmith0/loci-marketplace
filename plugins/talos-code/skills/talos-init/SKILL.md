---
name: talos-init
description: Scaffold .talos/ project framework with brain registration
---

# /talos-init — Scaffold Project Framework

Idempotent — if `.talos/` exists, update and fill gaps. If new, create everything.

## Step 0: Resolve Environment
Run `talos vault` via Bash to get vault path. Read `~/.talos/config.yaml` for full config.

## Step 1: Dispatch Codebase Explorer Agent

**This step runs EVERY time**, even if `.talos/` exists. The analysis is needed to populate all files.

Dispatch the `talos-code:codebase-explorer` agent with this prompt:

> Analyze the project at `{{PROJECT_PATH}}`. Map the full architecture: tech stack with versions, directory structure (3 levels), all entry points, key components and responsibilities, build/test/lint commands, coding conventions, dependencies. Also grep for `TODO`, `FIXME`, `HACK`, `BUG`, `XXX` across the codebase and list them. Note any architectural decisions evident from the code (e.g., "ESM over CJS", "commander for CLI"). Note any risks (no tests, no CI, hardcoded secrets, missing error handling). Return everything as structured data.

Wait for the agent to complete. Its output feeds Steps 3-5.

## Step 2: Read Templates

1. Read `$VAULT/_templates/index.yaml` for the code-init file list
2. Read each template from `$VAULT/_templates/code-init/`
3. If user has added custom templates (e.g., `project-learning.md.tmpl`), include them too
4. Substitute variables: `{{PROJECT_NAME}}`, `{{DATE}}` (YYYY-MM-DD format)

## Step 3: Create/Update .talos/ Files

**If `.talos/` does NOT exist**: Create all files from templates, populated with agent data.

**If `.talos/` ALREADY exists**: Read each existing file. If the file has empty tables or placeholder content (no rows, empty overview), POPULATE with agent data. If the file has real user content, preserve it and only add missing sections. Always create missing files.

### .talos/index.md — Project Overview (ALWAYS populate)

This is the project's brain entry. Fill EVERY section from the codebase-explorer output:

```markdown
---
type: project-index
project: {{PROJECT_NAME}}
created: {{DATE}}
updated: {{DATE}}
---

# {{PROJECT_NAME}}

## Overview
{{PROJECT_DESC from README or manifest — 2-3 sentences}}

## Tech Stack
| Component | Technology | Version |
|-----------|-----------|---------|
| Language  | {{detected}} | {{version}} |
| Runtime   | {{detected}} | {{version}} |
| Framework | {{detected}} | {{version}} |
| Build     | `{{BUILD_CMD}}` | — |
| Test      | `{{TEST_CMD}}` | — |
| Lint      | `{{LINT_CMD}}` | — |

## Structure
| Directory | Purpose |
|-----------|---------|
{{each KEY_DIR from agent output}}

## Entry Points
| File | Purpose |
|------|---------|
{{each ENTRY_POINT from agent output}}

## Key Components
| Component | File(s) | Responsibility |
|-----------|---------|---------------|
{{each component from agent output}}

## Dependencies
| Package | Purpose | Dev? |
|---------|---------|------|
{{top 10-15 dependencies from manifest}}

## Conventions
{{coding conventions from agent output — naming, style, patterns}}

## Architecture Notes
{{high-level architecture from agent analysis}}
```

### Other .talos/ files

- `.talos/plan.md` — create from template if missing. Don't overwrite if it has items.
- `.talos/bugs.md` — **POPULATE** with TODOs/FIXMEs/HACKs found by the agent. Preserve existing entries.
- `.talos/decisions.md` — **POPULATE** with architectural decisions found by the agent. Preserve existing entries.
- `.talos/risks.md` — **POPULATE** with risks found by the agent. Preserve existing entries.
- `.talos/debug/` — headless test scripts (see Step 5)

**CRITICAL**: Every file must have real content after init. If a table is empty, re-read the agent output and populate it.

## Step 4: Create/Merge Project CLAUDE.md

If `CLAUDE.md` already exists in the project root:
- Read it fully
- Append a `## TALOS Project Files` section at the bottom (if not already present)
- Do NOT overwrite or modify existing content

If no CLAUDE.md exists, create one with:
```markdown
## Project: {{PROJECT_NAME}}

{{PROJECT_DESC}}

## Tech Stack
| Component | Technology |
|-----------|-----------|
| Language  | {{from agent}} |
| Framework | {{from agent}} |
| Build     | `{{BUILD_CMD}}` |
| Test      | `{{TEST_CMD}}` |
| Lint      | `{{LINT_CMD}}` |

## Structure
{{KEY_DIRS with descriptions from agent}}

## TALOS Project Files
- `.talos/index.md` — project overview, architecture, components
- `.talos/bugs.md` — bug tracking
- `.talos/decisions.md` — decision log
- `.talos/risks.md` — risk register
- `.talos/plan.md` — active plan (use /talos-plan)
- `.talos/debug/` — headless test scripts
```

## Step 5: Create Debug Scripts

In `.talos/debug/`, create one test script per detected language:
- TypeScript → `test-core.ts` (run with `npx tsx .talos/debug/test-core.ts`)
- Python → `test-core.py` (run with `python .talos/debug/test-core.py`)
- Rust → `test-core.rs`
- Go → `test-core_test.go`

Each script should:
- Import key modules from the project (use the entry points and components from agent output)
- Test core functions with simple assert calls
- Cover edge cases (empty input, nulls, boundary values)
- Run headlessly (no UI, no user interaction)
- Use only project-local imports (no relative `../../` paths)
- Update these scripts when project functions change (via /talos-go, /talos-review)

## Step 6: Register Project

Add to `~/.talos/config.yaml` under `projects:` (skip if already registered):
```yaml
projects:
  {{PROJECT_NAME}}:
    path: {{absolute path}}
    vault_entry: projects/{{name}}/notes.md
```

## Step 7: Create Vault Entry

Create `$VAULT/projects/{{name}}/notes.md` (skip if exists):
```yaml
---
type: project
tags: [project]
status: active
created: {{DATE}}
---
```
```markdown
# {{PROJECT_NAME}}
**Repo:** {{git remote or path}}
**Tech:** {{stack summary}}
**Status:** Active
```

## Step 8: Log

Run this EXACT command via the Bash tool (do NOT manually edit the daily note):
```bash
talos log "init: {{PROJECT_NAME}} at {{path}}"
```
