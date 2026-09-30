---
description: Marketing Brain exercise 2. Scrape your pages and fill the positioning and messaging hub (Lion Words) into wiki/brand/positioning-messaging.md.
argument-hint: [example]
---

# /positioning-messaging

Exercise 2 of the Marketing Brain. Fill the positioning and messaging hub from the ICP, your own published pages, and your brand guides.

Read `frameworks/lion-words-positioning-messaging-hub.md` in full first. It defines every field.

## Mode

- **No argument:** own data. ICP from `wiki/brand/icp.md`, pages from `raw/brand/urls.md`, guides from `raw/brand/guides/`, customer words from `raw/voc/` (excluding `example/`). Write to `wiki/brand/positioning-messaging.md`.
- **`example`:** Acme Deals. ICP from `drafts/example-brain/icp.md`, brand material from `raw/brand/example/`, customer words from `raw/voc/example/`. Write to `drafts/example-brain/positioning-messaging.md`. Never write example data into `wiki/brand/`.

## 0. Before you run

Do all of this before step 1, and wait for the answers. Skip it in `example` mode.

1. **Is the module set up here?** Look for a `## Marketing Brain` section in `CLAUDE.md` and for `wiki/brand/`, `raw/voc/` and `raw/brand/`. If any is missing and this session has the marketing-brain plugin, run `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "$PWD"` with the shell and show its output: it creates the folders, the customer-data `.gitignore` rule and the CLAUDE.md section, and never overwrites a file. Without the plugin, create only the missing folders and their README files, and say so.
2. **Your own pages (on-brand).** Show what is in `raw/brand/urls.md`. If it has fewer than 5 URLs, ask for 5 to 8 pages that sound like the brand at its best: the homepage, 3 to 5 blog posts, 2 to 3 social posts. Save them there, one per line.
3. **Pages you'd never want to sound like (off-brand).** Ask for 2 to 5 URLs: old versions of their pages, competitor pages, generic copy in their category. Save them in `raw/brand/off-brand/urls.md`. Exercise 3 uses them; asking now saves a step later.
4. **Existing positioning and messaging docs.** Ask: "Paste any existing positioning, messaging, brand or pitch docs from your company: a messaging house, a positioning statement, a sales deck script, a brand book section. Nothing under NDA." Save each as Markdown in `raw/brand/guides/<short-slug>.md`, labelled with its source and date. This folder is committed, so check nothing confidential goes in.
5. **Go or wait.** Summarise what you now have, and ask whether to start or to add more first.

## 1. Check the inputs

- **ICP:** if it is still a template (or missing in example mode), stop and point to `/icp-dossier`. Positioning without a buyer is guesswork.
- **URLs:** read `raw/brand/urls.md`. Fetch each page with whatever web tool this session has (WebFetch is built into Claude Code) and save it to `raw/brand/scraped/<short-slug>.md`, with the URL and today's date at the top. Skip any URL already scraped today. If a fetch fails, say which and continue.
- **No URLs and no guides:** say the hub will be thin, mostly (inferred), and ask whether to continue or add URLs first.

## 2. Fill the hub

Work through Part 1 then Part 2 of the framework, field by field.

- **Customer** starts from the ICP. Do not re-derive the buyer.
- **Competitive alternatives** include doing nothing, doing it by hand, and hiring someone, not only competitors.
- **Customer words** in each pillar are verbatim quotes from `raw/voc/` with their source. Never paraphrased.
- **Proof points** come only from the scraped pages, guides, or `raw/voc/`. None found means blank, and the blank is a finding.
- **Differentiators** are each set against a named alternative from Part 1.
- Every line traces to a scraped page, a guide, the ICP, or a customer quote. Anything else is tagged **(inferred)**. Never generate a metric, a customer, a quote, or a case study.

If the target file's `status` is not `template`, show what would change and ask before replacing anything. Set `status: draft`, `last_updated`, and `sources`. List every (inferred) line under "Open (inferred) tags".

## 3. Feedback prompts

End with the three questions the workshop checks live, each answered honestly from what you wrote:
- **Are the alternatives real?** Would a buyer recognise them as what they do today?
- **Could a competitor claim the same differentiators?** Name any that fail this test.
- **Does each pillar have proof, or is it blank?**

Then run the draft through the fluff matrix in `frameworks/brand-voice-guide.md` and name the two lines most in need of a rewrite, with the quadrant each falls in.

Then:
- The file path and the pages scraped.
- The number of open (inferred) tags.
- **Take home:** test alternatives and differentiators against real sales conversations; add proof, never invent it.
- **Next:** `/brand-voice`.

## Last. Connect it to the repo

Before the final summary, make sure this repository treats the brand brain as its source of truth. Do each step only if it is missing, and never overwrite the user's own text:

1. **CLAUDE.md** has this line in its Marketing Brain section. Add it if not:
   > **`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.
2. **AGENTS.md**, if the repo has one, has the same line, so Codex, Copilot, Cursor and other tools follow it too. Add it if not.
3. **Other voice or brand docs in the repo** (for example a `tone-of-voice.md`, a `brand/` folder, or a style section in `CLAUDE.md`): list them, say they now overlap with `wiki/brand/`, and ask whether to point them at `wiki/brand/` or leave them. Change nothing without a yes.
4. Say in one line what now points at the file you just wrote.
