# CXL Personal OS

A starter repo that gives Claude Code a working memory of your job. Built for the CXL AI Native Marketer cohort.

Claude starts every session knowing nothing about the last one. This repo fixes that with plain Markdown files you own: a daily log written automatically at the end of every session, project files that hold the state of your work, and a handful of commands for the daily and weekly loop. Open it in Obsidian and it is also a linked second brain.

## Set up (10 minutes)

**1. Make your own private copy.** Your logs and projects are private, so do not work in a public fork.
- Click **Use this template → Create a new repository**, choose **Private**, and create it.
- Clone your new repo and open the folder:
  ```bash
  git clone https://github.com/<you>/<your-repo>.git
  cd <your-repo>
  ```

**2. Install the prerequisites.**

| Tool | Why | macOS | Windows |
|---|---|---|---|
| [Claude Code](https://docs.claude.com/en/docs/claude-code/overview) | Runs everything | `curl -fsSL https://claude.ai/install.sh \| bash` | See the install docs |
| `jq` | Every hook needs it | `brew install jq` | `winget install jqlang.jq` |
| `gh` (optional) | Pushing to GitHub from `/shutdown` | `brew install gh` | `winget install GitHub.cli` |

Without `jq` the daily logs are never written, and nothing tells you. On Windows, run Claude Code with Git Bash installed; the hooks are bash scripts.

**3. Start Claude Code in the folder and run `/start`.**
```bash
claude
```
```
/start
```
`/start` checks your setup, links memory, explains the system, fills in the "About me" section of `CLAUDE.md`, and creates your first project files.

**4. (Optional) Open the folder as an Obsidian vault** to browse your notes, follow `[[wikilinks]]`, and see the backlinks graph.

## What's inside

```
CLAUDE.md          The operating manual Claude reads every session
projects/          One folder per active project (start from _template.md)
raw/               Inbox for unstructured dumps, processed by /ingest
daily-logs/        One log per day, written automatically
frameworks/        Your reusable methods and checklists
wiki/              Durable reference: people, tools, concepts
drafts/            Content in progress
team-updates/      Weekly standup updates built from your logs
.claude/
  commands/        /start, /brief, /ingest, /shutdown, /lint, /team-update
  skills/          Know-how Claude applies automatically (example: my-voice)
  agents/          Specialists Claude hands whole jobs to (example: researcher)
  hooks/           Scripts that run on session start, compaction, and end
  memory/          Standing facts, indexed by MEMORY.md
  link-memory.sh   Run once per machine so memory travels with the repo
```

## Commands

| Command | When | What it does |
|---|---|---|
| `/start` | First session, or `/start tour` any time | Setup, tour, and personalization |
| `/brief <subject>` | Before a meeting or context switch | Everything the repo (plus email and calendar, if connected) knows about a person, project, or topic |
| `/ingest` | When `raw/` fills up | Proposes where each raw dump belongs and files it after you confirm |
| `/shutdown` | End of day | Reconciles the day, routes commitments into projects, writes a rich daily log, offers to push |
| `/lint` | Weekly | Health check: contradictions, stale claims, orphans, missing concepts, neglected projects, unsourced claims |
| `/team-update <period>` | When you owe a status update | Standup-format update from your daily logs |

## What runs automatically

| When | What |
|---|---|
| Session start | Loads your two most recent daily logs. Backfills logs for past days that were missed. Reminds you if `/lint` is overdue. Writes last week's team update if it is missing. |
| Before context compaction | Snapshots the files you changed, your exact prompts, and git state, and restores them afterwards. |
| Session end | Writes today's daily log from the session. Appends if the day already has one; never overwrites. |

## Memory vs daily logs

| | Built-in memory (`.claude/memory/`) | Daily logs (`daily-logs/`) |
|---|---|---|
| Holds | Standing facts: preferences, key people, where things live | What happened: work done, decisions, commitments, next steps |
| Updated | When Claude learns something durable | Automatically at the end of every session |
| Answers | "What is always true?" | "Where did we leave off?" |

Both are plain files in your repo. You can read them, fix them, and take them with you.

## Working across machines

Run `bash .claude/link-memory.sh` once on each machine after cloning, so Claude's memory points at the repo copy instead of a machine-local folder. Push at the end of the day (`/shutdown` offers to), and pull at the start.
