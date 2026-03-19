---
name: talos-config
description: View and display TALOS configuration
---

# /talos-config — View Configuration

## Step 0: Resolve Environment
Read `~/.talos/config.yaml` for vault_path, then `$VAULT/_brain/config.yaml` for full settings.

## Steps
1. Read and display both config files (bootstrap pointer + vault config)
2. Highlight key settings: vault_path, machine_id, registered projects, git settings
3. If config doesn't exist, suggest running /talos-setup

## Output
Formatted display of current TALOS configuration.

## Activity Log
Run `talos log "config: viewed configuration"` via Bash.
