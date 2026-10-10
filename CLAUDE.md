# Personal OS

> A personal operating system for working with Claude Code, from the CXL AI Native Marketer cohort, with the Marketing Brain module built in. Claude reads this file at the start of every session. It explains how the repo runs and how to work with its owner.
>
> **New here? Run `/start`.** It walks you through setup and fills in the "About me" section below.

**Writing rule: no em dashes (—), anywhere.** They are a hallmark of AI-generated text. This applies to every file in the repo, daily logs included. Rewrite with whichever punctuation reads best: a full stop for a clean break, a colon for a lead-in, a comma for a brief aside.

---

## About me

<!-- /start fills this in. Edit it any time: this is what Claude knows about you before every session. -->

- **Name:**
- **Role and company:**
- **What I'm responsible for:**
- **How I like to work with Claude:**

---

## How this repo runs

Claude has no memory between sessions by default. This repo fixes that with plain Markdown files, so everything Claude knows about your work is readable, editable, and versioned in git.

**Folders and their jobs:**

| Folder | What goes in it |
|---|---|
| `projects/` | One folder per active project, each with a canonical project file. The primary structure for all work. Start from `projects/_template.md`. |
| `raw/` | Unstructured dumps: meeting notes, voice memo transcripts, pasted emails, half-formed ideas. `/ingest` processes and files them, and moves Marketing Brain inputs into `raw/voc/`, `raw/strategy/`, `raw/performance/`, or `raw/brand/`. Files already in those folders stay put. |
| `raw/voc/` | Voice of customer: customer exports, reviews, tickets, call notes, survey answers. Gitignored except the README and the Acme Deals example. |
| `raw/brand/` | The brand's own words: URLs, on-brand and off-brand samples, existing guides. Committed, so nothing confidential. |
| `raw/strategy/` | Where the business is going: strategy and pivot docs, internal positioning and messaging docs, confidential brand books. Gitignored. Read for direction, never as evidence of who buys. |
| `raw/performance/` | Evidence of what works: GA4, lead-gen, conversion, order, ad, email and social performance, including dated snapshots from connected tools. Gitignored. |
| `wiki/brand/` | The brand brain: `icp.md`, `positioning-messaging.md`, `voice-guide.md`, `vocabulary.md`. A fixed contract later workshops read. |

**Every exercise asks for research, documents and live data first** (`frameworks/live-data-and-research.md`): drop files into the folders, paste them into the chat for the command to file, or let it fetch them through a connected tool (Google Drive, Notion, ClickUp, Asana; a CRM, store, GA4, social or email platform). Surveys, user research and message tests go in `raw/voc/research/`; live customer pulls in `raw/voc/live/`.
| `daily-logs/` | One file per day, `YYYY-MM-DD-convo.md`, written automatically when a session ends. Claude's working memory across sessions. |
| `frameworks/` | Reusable methods, models, and checklists: how you do things, not what you are doing. |
| `wiki/` | Durable reference: people, tools, concepts, glossary. Facts that stay true for months. |
| `drafts/` | Content in progress. Anything Claude writes for you lands here first. |
| `team-updates/` | Weekly standup-style updates built from your daily logs. |
| `AGENTS.md` | Points other AI tools (Codex, Copilot, Cursor, Gemini CLI, Grok) at this file, and tells them how to run the routines without hooks. |
| `.claude/commands/` | Slash commands: repeatable prompts you trigger by name. |
| `.claude/skills/` | Skills: know-how Claude loads automatically when a task matches. |
| `.claude/agents/` | Agents: specialists Claude hands a whole job to. |
| `.claude/hooks/` | Scripts that run on session events (start, compaction, end). |
| `.claude/memory/` | Standing facts Claude should always know, indexed by `MEMORY.md`. |

**Conventions:**
- **Projects are the starting point.** Before building a command, skill, or agent, ask which project it serves.
- **Project frontmatter:** every project file carries `type`, `status`, `priority`, `cadence`, `next_action`, and `tags`. `/lint` uses `cadence` to decide whether a project has gone quiet.
- **Wikilinks** (`[[project-name]]`) for stable entities only: projects, frameworks, people, recurring concepts. Not generic words. Never link to a note that does not exist.
- **Propose before restructuring.** Anything that moves, merges, overwrites, or deletes notes gets a plan first and waits for confirmation. Append or ask; never silently overwrite.
- **Your own folder names.** If `.claude/folders.json` exists, it maps the standard folders in this file to names you already use (for example `projects` to `PROJECTS`, `wiki` to `Resources`). Every command, skill and agent uses the mapped folder wherever it names a standard one, subfolders included. `/start` sets it up and `/lint` checks it. `CLAUDE.md`, `AGENTS.md` and `.claude/` never move.
- **Cite what you ingested.** When a note is built from transcripts, exports, or connector results, say where each claim came from.
- **Never invent** statistics, quotes, sources, or case studies. Say when something is unverified.
- **Write inside `.claude/` with the shell.** Memory, skills and commands live there. In Cowork the file-edit tools cannot write inside `.claude/`, but the shell can once it has started, so use a heredoc. If the shell is not ready, wait and retry. Never save memory anywhere except `.claude/memory/`.
- **Secrets stay out of git.** API keys and tokens live only in `.claude/settings.local.json` or `.env`, both gitignored. No personal email addresses in tracked files either: git history is permanent.

---

## Commands

| Command | When to run it | What it does |
|---|---|---|
| `/start` | Once, after cloning. Again any time you want the tour. | Checks setup, links memory, explains the system, fills in "About me", creates your first projects. |
| `/brief [person\|project\|topic]` | Before a meeting or a context switch. | Pulls together everything the repo (plus email and calendar, if connected) knows about the subject. |
| `/ingest` | When `raw/` has things in it. | Reads every raw dump, proposes where each piece belongs, and files it after you confirm. |
| `/shutdown` | End of the working day. | Reconciles what got done, routes new commitments into project files, writes a rich daily log, offers to push to GitHub. |
| `/lint` | Weekly. A reminder appears at session start when it is overdue. | Health check: contradictions, stale claims, orphan notes, missing concepts, neglected projects, unsourced claims, folder-map drift, loose and temp files, and a folder cleanup plan. Reports first, fixes on confirmation. |
| `/team-update [this-week\|last-week\|today]` | When you owe someone a status update. | Turns your daily logs into a short standup update in `team-updates/`. |
| `/icp-dossier [example]` | Marketing Brain exercise 1. | Builds `wiki/brand/icp.md` and a dossier page from `raw/voc/`. |
| `/positioning-messaging [example]` | Marketing Brain exercise 2. | Scrapes your pages and fills `wiki/brand/positioning-messaging.md`. |
| `/brand-voice [example]` | Marketing Brain exercise 3. | Drafts `wiki/brand/voice-guide.md` and `vocabulary.md` from your samples. |
| `/sync [example]` | After editing brand files by hand. | Brings the `.md` files and their pages back in step. Edits made through Claude sync on their own. |

---

## Marketing Brain

**`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.

The brand brain is four files in `wiki/brand/` that Claude reads before it writes anything customer-facing. Three exercises fill them, in order, because each feeds the next:

| Exercise | Command | Reads | Writes | Framework |
|---|---|---|---|---|
| 1. ICP | `/icp-dossier` | `raw/voc/` only | `wiki/brand/icp.md`, `projects/marketing-brain/outputs/icp-dossier.html` | `icp-synthesis` skill (Nick Christensen) |
| 2. Positioning and messaging | `/positioning-messaging` | ICP, `raw/brand/`, `raw/voc/` | `wiki/brand/positioning-messaging.md`, `projects/marketing-brain/outputs/messaging-hub.html` | `frameworks/positioning-messaging-hub.md` |
| 3. Brand voice | `/brand-voice` | ICP, hub, `raw/brand/`, `raw/voc/` | `wiki/brand/voice-guide.md`, `wiki/brand/vocabulary.md`, `projects/marketing-brain/outputs/voice-guide.html` | `frameworks/brand-voice-guide.md`, `frameworks/vocabulary.md` |
| Optional: campaign | Ask for "an example campaign from my ICP" | The brain | `projects/marketing-brain/outputs/campaign.html` | `ad-copy` skill (Nick Christensen) |

Each command takes `example` to run on Acme Deals, the fictional brand in `raw/voc/example/` and `raw/brand/example/`. Example runs write to `drafts/example-brain/`, never to `wiki/brand/`.

**Rules for the brand brain:**
- **The `.md` files are the brain.** Read `wiki/brand/*.md`, never the pages in `projects/marketing-brain/outputs/`, which are views of them. After any edit to a brand file, follow the `brand-sync` skill: rebuild the page from the `.md` and check the other brand files. Every brand file passes `frameworks/quality-rules.md`.
- **The (inferred) rule.** Every line in `wiki/brand/` traces to a scraped page, a file in `raw/brand/`, or a customer quote in `raw/voc/`. Any line that doesn't is tagged **(inferred)**. Metrics, customers, quotes, and case studies are never generated: missing means blank. A file with open tags is not finished.
- **The quality gate.** Every brand file passes `frameworks/quality-rules.md` rule 8 before it is shown. What the sources can't fix is tagged **(gate)** and listed in the file's Gate notes table, which becomes feedback chips on the page: what is wrong, what to do, and the test. Gate notes are review notes, not brand content.
- **Customer words stay separate from brand words.** The ICP reads only `raw/voc/`, so the brand's own copy never leaks into "their words". Customer quotes are verbatim, grammar and slang intact.
- **The paths are a contract.** Later workshops, starting with Campaign Engine, read `wiki/brand/` by these exact file names. Never rename or move them.
- **When two files disagree:** wording follows `voice-guide` > `vocabulary` > `positioning-messaging` > `icp`; facts follow the reverse. Say when you hit a disagreement.
- **Brand voice vs your voice.** Copy written for the brand follows `wiki/brand/` (the `brand-brain` skill loads it). Messages the owner writes as themselves follow the `my-voice` skill.
- **Customer data stays local.** Never copy an email address from `raw/voc/` into any other file.

Credits: the ICP workflow and the Acme Deals data are Nick Christensen's ([ship-icp-ads-automate-monitoring](https://github.com/nickyc1/ship-icp-ads-automate-monitoring), MIT). The positioning, messaging, and voice frameworks credit their author in `frameworks/`.

---

## Hooks (what runs automatically)

Configured in `.claude/settings.json`, scripts in `.claude/hooks/`. They need `jq` and the `claude` CLI on your PATH, and they fail silently if either is missing.

| When | Hook | What it does |
|---|---|---|
| Session start | `health.sh` | Checks that `jq` and the `claude` CLI exist and leaves a heartbeat in `.claude/state/`. If something is missing, it tells you at session start instead of the logs quietly stopping. Needs only bash. |
| Session start | `load-recent-logs.sh` | Loads your two most recent daily logs into context, so every session starts where the last one ended. |
| Session start | `catch-up-logs.sh` | Backfills a daily log for any past day that has a session transcript but no log (the editor was closed, the laptop slept). Runs in the background. |
| Session start | `lint-due.sh` | Prints a one-line reminder if `/lint` has not run in 7 days. Silent otherwise. |
| Session start | `team-update.sh` | If last week has daily logs but no team update, writes one to `team-updates/` in the background. |
| Session start | `restore-state.sh` | After a context compaction, re-injects the snapshot taken just before it. |
| Before compaction | `preserve-state.sh` | Snapshots files changed, your verbatim prompts, and git state, so compaction does not blur them. |
| Session end | `auto-shutdown.sh` | Writes today's daily log from the session transcript, using headless Claude (Sonnet). Appends if the day already has a log; never overwrites. |

**Manual fallback (when hooks are not running).** If the session context shows a "hooks degraded" notice, or shows no "Recent daily logs" block while `daily-logs/` has dated logs, the hooks are not running on this machine (most often Windows without Git Bash or `jq`). Then:
- Tell the user once, and point them to `/start` to fix it.
- Read the two newest dated files in `daily-logs/` yourself before starting work.
- Before the session ends, remind the user to run `/shutdown`. It writes the daily log itself and does not depend on hooks.

**Daily logs vs Claude's built-in memory.** Built-in memory (`.claude/memory/`) holds a small set of standing facts: preferences, key people, where things live. Daily logs hold what happened: work done, decisions, commitments, roll-forward. Memory answers "what is always true", logs answer "where did we leave off". Both are plain files in this repo, so you own them, can read them, and can fix them.

---

## Where you run it

| Tool | Commands | Hooks and automatic daily logs |
|---|---|---|
| Claude Code (VS Code extension or terminal) | Type `/start`, `/shutdown`, and so on | Yes |
| Cowork (Claude desktop app) | Ask in plain words: "Run the shutdown command from `.claude/commands/shutdown.md`" | No. Cowork runs hooks in its own workspace, where this folder isn't. Read the newest daily logs at the start of a session, and run `/shutdown` (by asking) at the end of each day |

## GitHub is optional

Without GitHub (a ZIP download, or a folder you never push), everything in this repo still works on one machine. What you give up: version history (no undoing a bad edit to a project file or memory), sync across machines, template updates from CXL, and the more complex setups later in the cohort that build on git, such as shared team repos and pull-request reviews. You can add GitHub later: `git init`, create a private repo, and push.

## Memory

Memory lives in the repo at `.claude/memory/`, indexed by `MEMORY.md`. Claude Code looks for memory at `~/.claude/projects/<slugified-repo-path>/memory/`, outside the repo. `bash .claude/link-memory.sh` points that path at the repo copy, so memory travels with the repo across machines. **Run it once on every machine you clone to.** Without it, memory silently stays machine-local.

Index lines in `MEMORY.md` use a colon as the separator: `- [Title](file.md): hook`. Memory records what was true when written; verify a remembered file or tool still exists before acting on it.

---

## How to work with me

- **Be decisive.** Give a recommendation, not a survey of options.
- **Verify before asserting.** Check that a file, command, or connector exists before recommending it.
- **Keep output skimmable.** Short sections, tables over walls of text, no filler.
- **Say plainly what is done and what is not.** Finished and verified: say so. Skipped or unverified: say that too.
