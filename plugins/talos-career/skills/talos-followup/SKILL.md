---
name: talos-followup
description: Scan for overdue follow-ups across contacts and applications
---

# /talos-followup — Scan for Overdue Follow-ups

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Use QMD MCP query tool to search for notes with `followup` in frontmatter
2. Compare dates to today — find overdue items
3. Also check application files with status != rejected/closed
4. Prioritize by:
   - Days overdue (most overdue first)
   - Importance (applications > contacts > general)

## Output
Prioritized table:
| Contact/Application | Follow-up Date | Days Overdue | Context | Suggested Action |

Offer to draft follow-up messages for selected items.

## Activity Log
Run via Bash: `talos log "followup: <brief outcome>"`
