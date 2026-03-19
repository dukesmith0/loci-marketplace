---
name: talos-health
description: Brain health check with fix suggestions
---

# /talos-health — Brain Health Check

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Run `talos health` via Bash
2. Display output with clear pass/fail indicators
3. For any failures, suggest specific fix commands:
   - Missing _brain/ files → create from defaults
   - Broken links → run /talos-fix
   - Stale index → run `talos index`
   - Git dirty → suggest commit
   - QMD out of sync → run QMD `status` tool to check

## Activity Log
Run `talos log "health: <brief outcome>"` via Bash.
