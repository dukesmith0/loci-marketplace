---
name: talos-contact
description: Create or lookup contacts in the vault
---

# /talos-contact — Create/Lookup Contact

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Search vault for existing contact matching the name
2. If found: display contact info and recent interactions
3. If not found: create new contact note:
   - Frontmatter: type: contact, name, company, role, met_date, followup_date
   - Content: how you met, context, notes
   - Read `_brain/schemas.yaml` for contact template
4. Run `talos link <file>` to connect to related notes

## Output
Contact card with key details and linked interactions.

## Activity Log
Append to today's daily note (journal/YYYY/MM/YYYY-MM-DD.md) under Auto-Log:
`- HH:MM — contact: <brief outcome>`
