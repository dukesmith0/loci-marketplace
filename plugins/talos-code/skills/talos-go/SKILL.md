---
name: talos-go
description: Execute next unchecked plan item
---

# /talos-go — Execute Next Plan Item

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Read `.talos/plan.md` — find first unchecked item
2. If no plan exists, suggest /talos-plan first
3. Execute the item:
   - Implement the change
   - Run tests if applicable
   - Verify it works
4. Mark item `[x]` in `.talos/plan.md`
5. Update `.talos/debug/` scripts to cover the new/changed functionality
6. Commit with descriptive message
6. Report progress: "Completed X/Y items"
7. Append to daily note: `- HH:MM — go: completed '<item description>'`

## Rules
- One item at a time
- If item is blocked, skip to next unblocked item and note the block
- If implementation reveals needed changes to plan, update plan and report
- After committing, if vault is configured, log activity there too

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — go: completed '<item description>'`
