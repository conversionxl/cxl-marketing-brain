---
description: Marketing Brain exercise 1. Build your ICP from voice-of-customer data in raw/voc/, into wiki/brand/icp.md plus a shareable dossier page.
argument-hint: [example]
---

# /icp-dossier

Exercise 1 of the Marketing Brain. Turn the customer data in `raw/voc/` into an ICP: the rich avatar, the segments below it, their exact words, their pains and desires.

Read the `icp-synthesis` skill in full first (`.claude/skills/icp-synthesis/SKILL.md` in the repo, or the marketing-brain plugin's copy) and follow its method. This command says where things come from and where they go.

## Mode

- **No argument:** use the user's own data in `raw/voc/`, excluding `example/`. Write to `wiki/brand/icp.md` and `projects/marketing-brain/outputs/icp-dossier.html`.
- **`example`:** use `raw/voc/example/` (Acme Deals, fictional). Write to `drafts/example-brain/icp.md` and `projects/marketing-brain/outputs/example-icp-dossier.html`. Never write example data into `wiki/brand/`.

## 0. Before you run

Do all of this before step 1, and wait for the answers. Skip it in `example` mode.

1. **Is the module set up here?** Look for a `## Marketing Brain` section in `CLAUDE.md` and for `wiki/brand/`, `raw/voc/` and `raw/brand/`. If any is missing and this session has the marketing-brain plugin, run `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "$PWD"` with the shell and show its output: it creates the folders, the customer-data `.gitignore` rule and the CLAUDE.md section, and never overwrites a file. Without the plugin, create only the missing folders and their README files, and say so.
2. **Customer data.** List what is in `raw/voc/` (excluding `example/` and the READMEs). If there is nothing, ask the user to drop in or paste what they have, as listed in `raw/voc/README.md`: a customer export (CSV with an email and a revenue or spend column), reviews, support tickets, call notes, survey answers. Save anything pasted as Markdown in `raw/voc/`, verbatim, labelled with its source and date. Remind them this folder stays on their machine.
3. **Review pages.** Make sure `raw/voc/review-urls.md` exists (create it from the template in `raw/voc/README.md` if not), then ask: "Any public review pages for your product? G2, Capterra, Trustpilot, app stores. One per line." Save the answers there.
4. **Go or wait.** Summarise what you now have in one line each, and ask whether to start or to add more first. No customer data at all: offer `example` instead.

## 1. Check the inputs

List what is in the source folder: files, row counts, and which of the inputs from `raw/voc/README.md` are present. Read `raw/voc/review-urls.md`.

- **Read only `raw/voc/`.** Never read `raw/brand/` for this exercise.
- **No customer data at all** (own-data mode): stop. Say the ICP can't be built from guesses, and offer two routes: add data now (point to `raw/voc/README.md`), or run `/icp-dossier example` to learn the method on Acme Deals.
- **Thin data** (a list with no qualitative files, or quotes with no list): say what is missing and what it will cost (for example: "no revenue column, so the avatar is ranked by order count and tagged (inferred)"). Then continue.
- **Review URLs:** fetch each with whatever web tool this session has (WebFetch is built into Claude Code). Keep reviews verbatim with their URL as source. If a page blocks the fetch, say which one and move on; do not guess its contents.

## 2. Synthesize

Follow the seven steps in the `icp-synthesis` skill. The rules that matter most here:

- Every line traces to a file in `raw/voc/` or a review URL. Anything that is a reasonable reading but not stated gets **(inferred)**.
- **Never** generate a metric, a customer, or a quote. Missing means blank.
- Quotes stay verbatim: grammar, slang, and typos intact. Each carries its source: name, company, file.
- No email addresses anywhere in the output.

## 3. Write the ICP

If the target file's `status` is not `template`, show what would change and ask before replacing anything.

Fill the template section by section. Set `status: draft`, today's date in `last_updated` (`date +%F`), and every source file in `sources`. List every (inferred) line again under "Open (inferred) tags".

## 4. Build the dossier page

Write the HTML dossier: one self-contained page with inline CSS, readable on a laptop and a phone. Top to bottom: the rich avatar with a short description and 3 or 4 key numbers from the data, "their words" as quote cards with sources, desires and pains side by side, the segments table, and a methodology footer naming the sources. Mark (inferred) lines visibly. No em dashes.

Then share it: if this session can publish an Artifact (claude.ai, Cowork, or Claude Code with the Artifact tool), publish the page as a private artifact titled "[Brand] ICP Dossier" and give the link. Otherwise give the file path and say to open it in a browser.

## 5. Feedback prompts

End with the two questions the workshop checks live, answered from what you wrote:
- **Who is it for,** by company type and role? Is that specific enough to pick them out of a crowd?
- **Is the problem in the customer's own words,** or in yours?

Then:
- The two file paths.
- The number of open (inferred) tags, and the one input that would resolve the most of them.
- **Next:** `/positioning-messaging`.

## Last. Connect it to the repo

Before the final summary, make sure this repository treats the brand brain as its source of truth. Do each step only if it is missing, and never overwrite the user's own text:

1. **CLAUDE.md** has this line in its Marketing Brain section. Add it if not:
   > **`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.
2. **AGENTS.md**, if the repo has one, has the same line, so Codex, Copilot, Cursor and other tools follow it too. Add it if not.
3. **Other voice or brand docs in the repo** (for example a `tone-of-voice.md`, a `brand/` folder, or a style section in `CLAUDE.md`): list them, say they now overlap with `wiki/brand/`, and ask whether to point them at `wiki/brand/` or leave them. Change nothing without a yes.
4. Say in one line what now points at the file you just wrote.
