---
name: talos-think
description: Socratic reasoning walkthrough with vault-backed insights
---

# /talos-think — Socratic Walkthrough

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Rules
- NEVER give the answer directly
- Ask ONE question at a time
- Wait for response before next question
- Guide through reasoning, don't lecture

## Steps
1. Search vault via QMD for relevant context on the topic
2. Read any relevant vault notes for background
3. Begin Socratic dialogue:
   - Start with: "What do you already know about X?"
   - Probe assumptions: "Why do you think that?"
   - Explore edges: "What would happen if...?"
   - Guide to insight: "How does that connect to...?"
4. After resolution, offer to save the insight to vault with proper frontmatter (type: fact or reference).

## End Condition
When the user reaches their own conclusion or explicitly asks to stop. Summarize the reasoning path taken.

## Activity Log
Run via Bash: `talos log "think: <brief outcome>"`
