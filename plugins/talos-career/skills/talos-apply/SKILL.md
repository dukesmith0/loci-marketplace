---
name: talos-apply
description: Job fit scoring and application tracking
---

# /talos-apply — Job Application Analysis

## Step 0: Resolve Environment
Get vault path: run `talos vault` via Bash, or read `vault_path` from `~/.talos/config.yaml`.

## Steps
1. Ingest the job description (from user input or file)
2. Read `_brain/profile.md` for user's background
3. Dispatch `talos-career:scorer` agent with the job description and user profile to score fit on 3 dimensions (0-10 each):
   - **Relevance**: how relevant is user's experience to this role?
   - **Fit-to-role**: how well does user match the requirements?
   - **Role-fit-to-user**: how well does this role match user's goals/preferences?
4. Identify:
   - **Strengths**: where user exceeds requirements
   - **Gaps**: where user falls short
   - **Talking points**: unique value propositions to emphasize
5. Create application tracker note in vault:
   - Frontmatter: type: application, company, role, date, status: applied, scores
   - Content: job summary, fit analysis, talking points, follow-up date
6. Append to `_brain/changelog.md`.

## Output
Fit scores, gap analysis, talking points, and tracker file location.

## Activity Log
Run via Bash: `talos log "apply: <brief outcome>"`
