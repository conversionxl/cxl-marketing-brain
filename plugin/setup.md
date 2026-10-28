---
description: Add the Marketing Brain to your personal OS, then coach you through the three exercises (ICP, positioning and messaging, brand voice) on the Acme example, a public brand, or your own data. Adds the brand brain folders (raw/voc, raw/brand, wiki/brand), the frameworks, the project file, and a Marketing Brain section in CLAUDE.md. Never overwrites your files. Run it again any time: it picks up where you left off.
---

# /marketing-brain:setup

Add the Marketing Brain module to the personal OS in this folder, then coach the user through the three exercises. This command is the module's home base: the first run sets it up, and every later run picks up at the next unfinished step. The user is a marketer, not an engineer: say what happened and what to do next in plain words, never as a list of paths.

## Set up (every run)

1. **Check the folder.** Any folder works. A personal OS is recommended, not required: without one, the setup script starts a minimal `CLAUDE.md`, and everything in the Marketing Brain still works. The folder already is one if it holds `.claude/personal-os.json` (set up by the plugin) or `.claude/hooks/auto-shutdown.sh` (cloned from a starter repo, with its own hooks). Only when it holds neither, say in one line what the **personal-os** plugin would add (daily logs, memory, its own commands) and continue; never stop for it. Never suggest `/personal-os:setup` in a folder with its own hooks: it would add a second set of hooks and two daily logs a day. If `wiki/brand/` already exists, say that existing files are kept, then continue.
   **One folder for every module.** The Marketing Brain, the Campaign Engine and the Reporting agent all go in the same folder, the one set up with `/personal-os:setup`: the Campaign Engine reads the brand brain from here. If this folder holds no personal OS but a sibling folder does (`.claude/personal-os.json` one level up or next to it), say so in one line and ask whether they meant to open that one.
   **Their own folders.** If `.claude/folders.json` exists, the module uses it: run `bash "${CLAUDE_PLUGIN_ROOT}/.claude/hooks/folder-map.sh" show` and say in one line where the module's folders will land. If there is no map and the folder holds folders of the user's own, offer one before the script runs, for this module's slots (`brand-wiki` for `wiki/brand/`, `voc` for `raw/voc/`, `brand-inputs` for `raw/brand/`, `strategy`, `performance`) and the parent slots they sit in (`raw`, `wiki`, `projects`). Same steps as "Your own folders" in `/personal-os:start`: match by purpose, show the table, ask (reroute or standard layout), and on reroute write only the slots that differ to `.claude/folders.json` with the shell (`mkdir -p .claude` first; keep any keys already there). A module slot that is not mapped follows its parent: with `raw` mapped to `Inbox`, `voc` is `Inbox/voc/`.
2. **Run the setup script** with the shell:
   `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "<this folder's absolute path>"`
   It adds the `.gitignore` block for customer data before anything lands in `raw/voc/`, mirrors those rules onto any renamed folders, copies the module files into the mapped folders without overwriting, and appends the Marketing Brain section to `CLAUDE.md` once. It is safe on every run. If bash is not available (Windows without Git Bash), point to `winget install Git.Git` and stop. If the script fails, show its output and stop.
3. **First run only:** say in two lines what is set up ("The Marketing Brain is set up. Your brand brain will live in `wiki/brand/`."), and that anything in `raw/voc/` stays on this computer. If the folder is a git repo, show `git status --short` and ask whether to commit ("Add the Marketing Brain module"). Wait for the answer and commit only on a yes. If nobody can answer (a non-interactive run), do not commit and stop here.
   **Later runs:** say "Your Marketing Brain is set up" in one line and go straight to the coach.

## The coach

### How to coach

1. **One step per message, then stop and wait.**
2. **Every step uses the same four blocks:** **What this step does** (one or two sentences), **What you do** (numbered; say "I'll do X, you do Y" when you do part), **What you should see** (the result that means it worked), **Tell me when** (the phrase to reply with).
3. **Run each exercise here, on a yes.** Follow the exercise's own file from its first step, with the mode's argument: `${CLAUDE_PLUGIN_ROOT}/.claude/commands/icp-dossier.md`, `positioning-messaging.md`, `brand-voice.md`. Its questions, gate and outputs are its own; the coach adds only the input card before and the checkpoint after. When the exercise finishes, come back to this command at the checkpoint.
4. **Long sessions.** Each exercise reads a lot. If this session has already run an exercise, offer to carry on here or to start a new chat in this folder and type `/marketing-brain:setup`, which picks up at the next step. Recommend the new chat after two exercises.
5. **"Don't know" and "skip" are fine answers.** Missing inputs become (inferred) lines, which is how the method is meant to work.
6. Plain words, short messages, no em dashes.

### Where they are

Read the project file (`projects/marketing-brain/marketing-brain.md`, at its mapped name) and the brain files, then show one short table: step · status · next. A step is done when its file's frontmatter `status` is `draft` or `final`, not `template`:

| Step | Own data | Example (Acme Deals) |
|---|---|---|
| ICP | `wiki/brand/icp.md` | `drafts/example-brain/icp.md` |
| Positioning and messaging | `wiki/brand/positioning-messaging.md` | `drafts/example-brain/positioning-messaging.md` |
| Brand voice | `wiki/brand/voice-guide.md` and `vocabulary.md` | `drafts/example-brain/voice-guide.md` and `vocabulary.md` |

Tick the matching "Exercises" box in the project file when a step is done and its box is not ticked. Then go to the first unfinished step. All three done: go to step E.

### Step A: choose how to practise (once)

Skip it if the project file's "Current status" already says which mode they chose. Otherwise ask one question:

> **Which brand do you want to build the brain for?**
> 1. **The Acme example**: a made-up company with customer data and brand samples included. Fastest way to see the whole method. Nothing of yours is touched.
> 2. **A public brand**: your own company with public data only, or a brand you admire, built from its reviews, pages and posts.
> 3. **Your own data**: your customer export, reviews, notes and samples. The best brain, and the one the Campaign Engine will use.

Recommend 3 when they have a customer export, otherwise 1. Record the answer in "Current status" in the project file ("Practising on: Acme example | <brand>, public data | own data", with today's date). Option 1 runs every exercise with `example`; options 2 and 3 run them with no argument, and option 2 takes the hypothesis route for the ICP. They can switch any time by saying so: update the line.

### Step B: ICP

**Input card** (own data and public brand; skip for the example). Check what is already in `raw/voc/` and show what is there and what is missing:
- A customer export: a CSV with at least an email and a revenue or spend column. This is what finds who is worth the most.
- Reviews, support tickets, call notes and survey answers, quoted exactly as written, typos included.
- Review page URLs in `raw/voc/review-urls.md`, one per line: G2, Capterra, Trustpilot, app stores.
- No customer data at all: the ICP is built as a hypothesis from public reviews and posts about the market, and every line stays tagged until real data replaces it.
- Before they share anything outside their company: offer to replace every email in the export with a short hash and keep a local lookup file.

Say what the exercise will ask first: B2B, B2C or service; who the best customer is; whether anything is changing (a pivot, a new market, a price change); who owns the ICP; any segment to grow or drop. Then: **"Ready to build your ICP?"** On a yes, run the ICP exercise.

**What you should see:** `wiki/brand/icp.md` and an ICP dossier page. On the example: a clear core customer, solo agency owners, 6 of 18 customers but 74% of revenue.

**Checkpoint.** Reviewers of the first cohort's ICPs looked for these. Ask the user to check their file against them, and offer to fix any from the sources:
- Every segment, the thinnest too, has desires and pains, not only company facts.
- Every trigger says what it sets off: the question it raises and what the buyer does next.
- Objections and hesitations are filled in.
- No blank that a quick search would fill. Blank is right only when the data doesn't exist.
- **Edit the (inferred) lines from what you know.** Unedited (inferred) lines were the most common gap reviewers found in the first cohort's brains. The exercise lists them: cut, correct, or confirm each with a source.

**Tell me when:** "ICP done".

### Step C: positioning and messaging

**Input card** (skip for the example):
- 5 to 8 URLs in `raw/brand/urls.md`: the homepage, 3 to 5 blog posts, 2 to 3 social posts that sound like the brand at its best.
- Existing positioning or pitch docs. Claude can fetch them from Google Drive, Notion, ClickUp or Asana if connected.
- Win/loss notes or sales-call notes, if they have them.
- 2 to 5 pages they never want to sound like. They save a step in the voice exercise.

Then: **"Ready for positioning and messaging?"** On a yes, run the positioning and messaging exercise.

**What you should see:** `wiki/brand/positioning-messaging.md` and a messaging hub page.

**Checkpoint.** These were the most common fixes in the first cohort's hubs:
- **Use case:** the job the buyer is trying to get done, in their words, not a description of what you do.
- **Market category:** one buyers shop in. Test: would it be a category on G2 or Capterra? Your own phrase belongs in the key message instead.
- **Limitations of the alternatives:** each names a real cost (time, money, risk), not "leaves gaps".
- **Differentiators:** each is set against a named alternative and answers a listed problem. Price and features alone are table stakes.
- **Core summary:** one sentence you can read aloud in one breath.
- **Pillars:** pillar 1 answers problem 1 in full, and so on.
Then two questions for any line of copy: "How, exactly?" and "Would a buyer say this out loud?"

**Tell me when:** "hub done".

### Step D: brand voice

**Input card** (skip for the example):
- 3 to 10 on-brand samples in `raw/brand/on-brand/`: only pieces they want copied. Leave out anything they have doubts about, even if it is on the website.
- Near-miss off-brand samples in `raw/brand/off-brand/`: close to right, but not quite.
- Any existing voice or style guide in `raw/brand/guides/` (nothing under NDA: `raw/brand/` is the one input folder that goes to GitHub).
- Which content performs best, if they know.

Then: **"Ready for your brand voice?"** On a yes, run the brand voice exercise.

**What you should see:** `wiki/brand/voice-guide.md`, `wiki/brand/vocabulary.md` and a voice guide page.

**Checkpoint:**
- Three or four traits, each narrow enough to change the vocabulary, the rhythm or the sentence length.
- Every Do and Don't is a line of copy, never an instruction.
- Every "this, not that" pair is the same kind of copy (headline for headline) with the same message, and the wrong version is one someone on the team might actually write.
- Could a competitor's page pass this guide unchanged? Could a new hire write in this voice from the guide alone?

**Tell me when:** "voice done".

### After every step

Say these once, the first time, in three lines:
- The `.md` files in `wiki/brand/` are the brain; the pages are views of them. Ask for a change ("In @wiki/brand/icp.md, cut the third pain") and the page follows. Edited a file by hand? `/marketing-brain:sync` brings the pages back in step.
- Keep the file names in `wiki/brand/` as they are: the Campaign Engine reads these exact files.
- A file with open (inferred) tags is not finished. The red chips on the pages say what to fix.

### Step E: test it and share it

1. **Test it on real copy.** Ask them to name one customer-facing piece (a LinkedIn post, a landing page section) and write it from the brain. Check it with "How, exactly?" and "Would a buyer say this out loud?" Where a line fails, fix the brain (add a source or a customer quote), not only the draft.
2. **Sharing for review:** share the page link or the full HTML page, never a cropped screenshot. A brand that isn't in English: offer an English copy of the pages for reviewers. Use `share-output` for the link.
3. **Done for the workshop:** all three files exist and the (inferred) list has been reviewed. Say so plainly, and that more customer data later moves the ICP up a stage.
4. **Next module:** if `/campaign-engine:setup` is available in this session, offer to start it now (in a new chat after a long session). If it isn't, say the Campaign Engine plugin is the next one to add, at https://github.com/conversionxl/cxl-campaign-engine (Customize › Plugins › + Add › Add from a repository; after Sync, click **Add**).

If the user has done all of this already, say so in one line, show the table from "Where they are", and stop.
