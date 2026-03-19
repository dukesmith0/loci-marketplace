# TALOS Marketplace

A persistent second brain for Claude — memory, recall, knowledge management, and structured workflows via Obsidian vault.

## Quick Start

### 1. Install TALOS Core (CLI)

```bash
git clone https://github.com/dukesmith0/talos-core.git
cd talos-core && npm install && npm run build && npm link
talos setup
```

### 2. Add the Marketplace to Claude Code

```bash
claude plugin marketplace add dukesmith0/talos-marketplace
```

### 3. Install Plugins

From within Claude Code, use `/plugin` to browse and install:

```
/plugin install talos-base       # Recommended — core brain access
/plugin install talos-code       # Development workflow
/plugin install talos-thoughts   # Thinking frameworks
/plugin install talos-study      # Learning & tutoring
/plugin install talos-career     # Career & networking
```

**Start with `talos-base`** — it's the foundation. All other plugins build on top of it.

### 4. Verify

Start a new Claude Code session. The SessionStart hook will load your brain context (profile, priorities, pinned memories, open threads). Type `/talos-health` to verify everything is connected.

---

## Plugins

### talos-base (Recommended)

**Core brain access.** 20 skills, 5 agents, 3 hooks.

This is the foundation plugin. It gives Claude persistent memory across sessions, semantic search over your vault, and automatic activity tracking.

| Skill | What it does |
|-------|-------------|
| `/talos-ask` | Quick answer using vault knowledge — search first, cite sources |
| `/talos-brief` | Deep synthesis — everything the brain knows about a topic |
| `/talos-recall` | Full memory retrieval — links, frequency, recency, QMD search |
| `/talos-remember` | Store a new memory — proper schema, contradiction check, auto-link |
| `/talos-pin` / `/talos-unpin` | Manage always-loaded memories |
| `/talos-log` | Quick capture — timestamped entry to daily note |
| `/talos-ingest` | Process a document into structured vault note |
| `/talos-extract` | Pull specific topic from a document into its own note |
| `/talos-reflect` | Analyze patterns, compress daily→weekly, promote recurring topics |
| `/talos-fix` | Find and fix broken links, bad frontmatter, contradictions |
| `/talos-cleanup` | Identify orphaned and stale content for archival |
| `/talos-link` | Scan files for entities, add [[wikilinks]] |
| `/talos-diff` | Summarize recent vault changes narratively |
| `/talos-sync` | Git pull + push vault |
| `/talos-status` | Current brain state report |
| `/talos-health` | System health check |
| `/talos-config` | Show configuration |
| `/talos-setup` | Initialize brain (if CLI not installed) |
| `/talos-help` | List all available skills |

**Hooks:** SessionStart (loads brain context), SessionEnd (auto-commit + update), PostToolUse (tracks file access, searches, and changes).

**Agents:** researcher, linker, classifier, archivist, summarizer.

---

### talos-code

**Development workflow.** 9 skills, 5 agents.

Plan, build, test, review, and ship code with persistent project memory. Each project gets a `.talos/` framework with plan, bugs, decisions, risks, and headless debug scripts.

| Skill | What it does |
|-------|-------------|
| `/talos-init` | Scaffold `.talos/` + generate CLAUDE.md + debug scripts |
| `/talos-plan` | Decompose task into actionable checklist |
| `/talos-go` | Execute next plan item — implement, test, update debug, commit |
| `/talos-oneshot` | Quick task, no plan overhead |
| `/talos-ralph` | Iterative loop until completion criteria met |
| `/talos-review` | Code review with severity ratings |
| `/talos-simplify` | Refactor for clarity, reduce complexity |
| `/talos-risks` | Security + architecture risk analysis |
| `/talos-diff` | Project git history analysis |

**Agents:** codebase-explorer, planner, reviewer, validator, diff-analyst.

---

### talos-thoughts

**Structured thinking.** 4 skills, 2 agents.

Brainstorming, Socratic dialogue, idea evaluation, and deep research — all saved to the vault for future reference.

| Skill | What it does |
|-------|-------------|
| `/talos-think` | Socratic walkthrough — guided reasoning, never gives answer directly |
| `/talos-storm` | SCAMPER brainstorming — generate, score, refine top ideas |
| `/talos-ideate` | Idea generation with 3-perspective scoring |
| `/talos-research` | Deep research — vault + web search → structured brief |

**Agents:** perspective-reviewer, brainstorm-scorer.

---

### talos-study

**Learning workflow.** 4 skills, 1 agent.

Socratic tutoring with proficiency tracking. Adapts to your level and helps you verify understanding via Feynman technique.

| Skill | What it does |
|-------|-------------|
| `/talos-study` | Enter study mode — Socratic tutoring for a course |
| `/talos-teach` | Feynman technique — explain a concept, get evaluated |
| `/talos-notes` | Capture and cross-reference course notes |
| `/talos-learn` | Quick concept lookup at your proficiency level |

**Agents:** tutor.

---

### talos-career

**Career workflow.** 4 skills, 1 agent.

Job applications, interview prep, networking contacts, and follow-up tracking — all integrated with your vault profile.

| Skill | What it does |
|-------|-------------|
| `/talos-apply` | Score job fit (3 dimensions), scaffold application tracker |
| `/talos-prep` | Build interview/meeting prep knowledge base |
| `/talos-contact` | Create or lookup contact with entity linking |
| `/talos-followup` | Scan for overdue follow-ups, draft messages |

**Agents:** scorer.

---

## Requirements

- **Claude Code** — the CLI or VS Code extension
- **TALOS Core CLI** — installed and configured (`talos setup` completed)
- **Obsidian** — optional but recommended for browsing the vault
- **QMD MCP** — optional, enables semantic search (auto-configured by `talos setup`)

## How the Marketplace Works

This repo is a Claude Code marketplace. Once added, you can browse and install individual plugins from within Claude Code:

1. **Add the marketplace:** `claude plugin marketplace add dukesmith0/talos-marketplace`
2. **Browse plugins:** Use `/plugin` in Claude Code to see available plugins
3. **Install what you need:** Start with `talos-base`, add others as needed
4. **Auto-updates:** Plugins track versions and update via the CLI

## License

MIT
