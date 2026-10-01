# CXL Marketing Brain

The [CXL Personal OS](https://github.com/conversionxl/cxl-personal-os) with the Marketing Brain module built in. Built for the CXL AI Native Marketer cohort.

Claude starts every session knowing nothing about the last one. The personal OS fixes that with plain Markdown files you own: a daily log written automatically at the end of every session, project files that hold the state of your work, and a handful of commands for the daily and weekly loop. Open it in Obsidian and it is also a linked second brain.

The Marketing Brain adds a **brand brain**: four files that Claude reads before it writes anything customer-facing, so drafts come out on-brand and in your customers' words instead of generic. You fill them in three exercises: your ICP, your positioning and messaging, and your brand voice.

**Three ways in:**
- **Using the personal-os plugin?** Install the module as a plugin: see [Plugin route](#plugin-route) below. No code editor, no terminal.
- **Starting fresh, or want a clean copy?** Follow [Set up](#set-up-10-minutes) below.
- **Already set up the personal OS repo and want to keep your logs and projects?** Skip to [Add the module to your existing repo](#add-the-module-to-your-existing-repo).

## Plugin route

Needs the **personal-os** plugin, set up in a folder with `/personal-os:setup` (see [its README](https://github.com/conversionxl/cxl-personal-os-plugins)).

1. In Claude, open **Customize**, then **Browse plugins**, **Personal**, **+**, **Add marketplace from GitHub**. Enter `https://github.com/conversionxl/cxl-marketing-brain` with **Sync automatically** on, then add **marketing-brain**. This is its own marketplace, separate from the one you added for personal-os.
   (Claude Code in VS Code instead: type `/plugin marketplace add conversionxl/cxl-marketing-brain` in the Claude chat, then `/plugin install marketing-brain@cxl-marketing-brain`.)
2. Open your personal OS folder in Cowork, or in the desktop app's Code tab with Environment: Local, and type `/marketing-brain:setup`.

Setup adds `raw/voc/`, `raw/brand/`, `wiki/brand/`, the frameworks, the project file, and a Marketing Brain section in your `CLAUDE.md`. It never overwrites a file, and it adds the `.gitignore` rule that keeps customer data local before anything lands in `raw/voc/`. The exercises are then `/marketing-brain:icp-dossier`, `/marketing-brain:positioning-messaging` and `/marketing-brain:brand-voice`, and the skills load by themselves.


## Set up (10 minutes)

No terminal needed. Claude runs the setup commands for you and asks before each one.

**1. Install Claude Code.** Use the Claude desktop app (its **Code** tab) or the Claude Code extension for VS Code. See the [install docs](https://docs.claude.com/en/docs/claude-code/overview). On Windows, Claude Code also needs Git for Windows; the install docs cover it.

**2. Make your own private copy.** Your logs and projects are private, so do not work in a public fork.
- On this page, click **Use this template → Create a new repository**, choose **Private**, and create it.
- Clone it to your computer with [GitHub Desktop](https://desktop.github.com/) (**File → Clone repository**) or VS Code (**Clone Git Repository** on the Welcome screen). Both sign you in to GitHub in the browser.
- No GitHub? Click **Code → Download ZIP** and unzip it. Everything works on one machine; see [Without GitHub](#without-github).

**3. Open the folder in Claude and type `/start`.**
- **Desktop app:** open the **Code** tab, set Environment to **Local**, and pick the folder.
- **VS Code:** **File → Open Folder**, then open the Claude Code panel.
- **Cowork:** point Cowork at the folder and ask: *"Run the start command from `.claude/commands/start.md`"*. Cowork does not show repo commands as `/` commands, so run each one by asking for it this way. Cowork also does not run hooks, so run `/shutdown` (by asking) at the end of each day to write your daily log.

`/start` checks your setup and installs what is missing with your OK: `jq` (every hook needs it, or daily logs are not written), the `claude` command-line tool (the daily log hooks call it), and optionally `gh` (for pushing to GitHub). It also links memory, explains the system, fills in the "About me" section of `CLAUDE.md`, and creates your first project files.

**Can't install software on your laptop?** The repo still works: run `/shutdown` at the end of each session and it writes the daily log without hooks.

**4. (Optional) Open the folder as an Obsidian vault** to browse your notes, follow `[[wikilinks]]`, and see the backlinks graph.

## Add the module to your existing repo

Already running your own copy of the personal OS? Open it in Claude and paste this prompt. It copies the module in and merges your `CLAUDE.md` rather than overwriting it. Your logs, projects, and memory are not touched.

```
Add the CXL Marketing Brain module to this repo from
https://github.com/conversionxl/cxl-marketing-brain. Show me the plan before changing anything.

1. Run: git remote add marketing-brain https://github.com/conversionxl/cxl-marketing-brain
   then: git fetch marketing-brain
   (No git? Download the ZIP from that page, unzip it next to this repo, and copy from there.)
2. Append the "Marketing Brain" block from the end of its .gitignore to mine, below my *.csv rule,
   BEFORE copying anything into raw/voc/.
3. Copy these paths from marketing-brain/main, skipping any file I already have:
   .claude/commands/icp-dossier.md, .claude/commands/positioning-messaging.md,
   .claude/commands/brand-voice.md, .claude/skills/brand-brain/, .claude/skills/icp-synthesis/,
   .claude/skills/ad-copy/, raw/voc/, raw/brand/, wiki/brand/, projects/marketing-brain/,
   frameworks/lion-words-positioning-messaging-hub.md, frameworks/brand-voice-guide.md,
   frameworks/vocabulary.md
4. Merge into my CLAUDE.md, never overwriting my own text: its "Marketing Brain" section,
   its four new rows in the folder table, and its three new rows in the commands table.
5. In my .claude/commands/ingest.md, make step 1 skip raw/voc/ and raw/brand/, as the module's
   version does.
6. Show me git status, then remove the marketing-brain remote.
```

## Updating

- **Plugin route:** updates do not install themselves yet, even with **Sync automatically** on (that needs the Claude GitHub App to have access to the repo, which is not set up). To update: **Plugins → Add → Manage marketplaces → ⋮** next to the marketplace → **Check for updates**.
- **Your own copy of the repo:** ask Claude: *"Pull the latest changes from https://github.com/conversionxl/cxl-marketing-brain into this repo. Show me the plan first and never overwrite my own files."*

Either way, your logs, projects and memory are untouched.

## The Marketing Brain

| | Exercise | Run | You bring | It fills |
|---|---|---|---|---|
| 1 | ICP | `/icp-dossier` | Customer data in `raw/voc/` | `wiki/brand/icp.md` and a dossier page in `projects/marketing-brain/outputs/` |
| 2 | Positioning and messaging | `/positioning-messaging` | 5 to 8 URLs in `raw/brand/urls.md`, any brand guides | `wiki/brand/positioning-messaging.md` |
| 3 | Brand voice | `/brand-voice` | On-brand and off-brand samples in `raw/brand/` | `wiki/brand/voice-guide.md` and `vocabulary.md` |
| + | Example campaign (optional) | Ask: "build an example campaign from my ICP" | A landing page URL | `projects/marketing-brain/outputs/campaign.html` |

**Before the workshop**, fill the inputs. The checklist is in `projects/marketing-brain/marketing-brain.md`, and each input folder has a README saying what goes in it.

- `raw/voc/` holds customer data and **stays on your machine**: it is gitignored. Strip or hash emails before you share your screen.
- `raw/brand/` holds your own public pages and samples and **is committed**: nothing confidential, nothing under NDA, no client material.

**No customer data?** Every command takes `example`: `/icp-dossier example` runs on Acme Deals, a fictional brand with customer data and brand samples included. Example runs write to `drafts/example-brain/`, so your own brain stays clean.

**The rule that runs through all of it:** every line in the brain traces to a source. Anything Claude can't trace is tagged **(inferred)**, and metrics, customers, quotes, and case studies are never made up. A file with open tags isn't finished.

**The paths in `wiki/brand/` are fixed.** Later workshops, starting with Campaign Engine, read these exact files. Add to them; don't rename them.

## Credits

- **ICP workflow and the Acme Deals example data:** Nick Christensen, [ship-icp-ads-automate-monitoring](https://github.com/nickyc1/ship-icp-ads-automate-monitoring), MIT license (copy in `raw/voc/example/LICENSE`). The method: [Find your rich avatar](https://www.nickbuilds.ai/blog/find-your-rich-avatar-matt-appsumo).
- **Positioning and messaging hub, brand voice approach, fluff matrix:** Diane Wiredu, [Lion Words](https://www.lionwords.com/).
- **Personal OS:** [conversionxl/cxl-personal-os](https://github.com/conversionxl/cxl-personal-os).

## What's inside

```
CLAUDE.md          The operating manual Claude reads every session
projects/          One folder per active project (start from _template.md)
  marketing-brain/ The Marketing Brain project file, and outputs/ for generated pages
raw/               Inbox for unstructured dumps, processed by /ingest
  voc/             Customer data for the ICP (stays local) + the Acme Deals example
  brand/           Your URLs, on-brand and off-brand samples, guides + the Acme example
daily-logs/        One log per day, written automatically
frameworks/        Your reusable methods and checklists (includes the three brand frameworks)
wiki/              Durable reference: people, tools, concepts
  brand/           The brand brain: icp, positioning-messaging, voice-guide, vocabulary
drafts/            Content in progress
team-updates/      Weekly standup updates built from your logs
.claude/
  commands/        /start, /brief, /ingest, /shutdown, /lint, /team-update,
                   /icp-dossier, /positioning-messaging, /brand-voice
  skills/          Know-how Claude applies automatically (my-voice, brand-brain,
                   icp-synthesis, ad-copy)
  agents/          Specialists Claude hands whole jobs to (example: researcher)
  hooks/           Scripts that run on session start, compaction, and end
  memory/          Standing facts, indexed by MEMORY.md
  link-memory.sh   Links memory to the repo copy (/start runs it on each machine)
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
| `/icp-dossier [example]` | Marketing Brain exercise 1 | Your ICP from customer data, plus a dossier page |
| `/positioning-messaging [example]` | Marketing Brain exercise 2 | Your positioning and messaging hub, from your pages |
| `/brand-voice [example]` | Marketing Brain exercise 3 | Your voice guide and vocabulary, from your samples |

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

Run `/start` once on each machine after cloning. It links Claude's memory to the repo copy instead of a machine-local folder. Push at the end of the day (`/shutdown` offers to), and at the start of the day on another machine ask Claude to *"pull the latest from GitHub"*.

## Without GitHub

Fine to start without it. On one machine, every folder, command, and daily log works the same. What you give up:

- **Version history.** No way to see or undo what changed in a project file, memory, or `CLAUDE.md`.
- **Sync across machines.** Your laptop and desktop drift apart.
- **Template updates** from CXL as the starter improves.
- **The more complex setups later in the cohort** that build on git: shared team repos, pull-request reviews, automated team updates.

You can add it any time. Ask Claude: *"Put this folder on GitHub as a new private repo."* It uses the `gh` tool if it is installed and signed in. Without it, use [GitHub Desktop](https://desktop.github.com/): **File → Add local repository**, then **Publish repository** with **Keep this code private** ticked.
