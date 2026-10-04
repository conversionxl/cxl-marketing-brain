---
description: Marketing Brain exercise 2. Scrape your pages and fill the positioning and messaging hub into wiki/brand/positioning-messaging.md.
argument-hint: [example]
---

# /positioning-messaging

Exercise 2 of the Marketing Brain. Fill the positioning and messaging hub from the ICP, your own published pages, and your brand guides.

Read `frameworks/positioning-messaging-hub.md` in full first (older setups have it as `frameworks/lion-words-positioning-messaging-hub.md`; with the plugin and neither file, read `${CLAUDE_PLUGIN_ROOT}/frameworks/positioning-messaging-hub.md`). It defines every field.

## Mode

- **No argument:** own data. ICP from `wiki/brand/icp.md`, pages from `raw/brand/urls.md`, guides from `raw/brand/guides/`, customer words from `raw/voc/` (excluding `example/`). Write to `wiki/brand/positioning-messaging.md` and `projects/marketing-brain/outputs/messaging-hub.html`.
- **`example`:** Acme Deals. ICP from `drafts/example-brain/icp.md`, brand material from `raw/brand/example/`, customer words from `raw/voc/example/`. Write to `drafts/example-brain/positioning-messaging.md` and `projects/marketing-brain/outputs/example-messaging-hub.html`. Never write example data into `wiki/brand/`.

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

Work through Part 1 then Part 2 of the framework, row by row. The Markdown hub and the hub page carry the same sections and rows in the same order, so every cell on the page comes from a cell in the file, and the (inferred) count matches.

- **Customer** starts from the ICP. Do not re-derive the buyer.
- **Competitive alternatives** include doing nothing, doing it by hand, and hiring someone, not only competitors.
- **Problem in buyer language** and **VOC validation** are verbatim quotes from `raw/voc/` with their source. Never paraphrased.
- **Proof points** come only from the scraped pages, guides, or `raw/voc/`. None found means blank, and the blank is a finding.
- **Our solution** has one column per pillar, in the pillar order.
- **Differentiators** are each set against a named alternative from Part 1.
- Every line traces to a scraped page, a guide, the ICP, or a customer quote. Anything else is tagged **(inferred)**. Never generate a metric, a customer, a quote, or a case study.

If the target file's `status` is not `template`, show what would change and ask before replacing anything. Set `status: draft`, `last_updated`, and `sources`. List every (inferred) line under "Open (inferred) tags".

## 3. Build the messaging hub page

Always, in both modes. Render the hub as one self-contained HTML page in the Messaging House layout. Use `frameworks/messaging-hub-example.html` (the Acme Deals hub from the workshop) as the template; with the plugin and no local copy, read `${CLAUDE_PLUGIN_ROOT}/frameworks/messaging-hub-example.html`.

- Keep its structure exactly: the Positioning then Messaging parts, the same rows, the colour code (black section labels, beige row labels, teal anchor lines, teal-tint customer-facing wording, white supporting detail, red title and (inferred) flags), the legend, the visible **(inferred)** tags, striped cells for blanks, the open-tags box and the sources footer, and the light and dark themes.
- Replace every cell with this hub's content. Never carry Acme text over. A field with no source is a striped blank cell, not a guess.
- All three exercise pages share one look, the CXL web styling: Work Sans 900 headings, Lato body, and the teal, red, beige, black and white tokens. Copy the template's `<style>` block unchanged; never restyle a page.
- **`example` mode:** the template already is the Acme Deals hub. Copy it to `projects/marketing-brain/outputs/example-messaging-hub.html` and update only the date, the status, and the open-tag count in the header; change a cell only where your Markdown hub differs from it, and say which.
- Title it "Positioning and messaging hub for [Brand]", with status, date, and the count of open (inferred) tags in the header. No em dashes.
- The page and the Markdown hub carry the brand's name only: no Lion Words or Diane Wiredu name, logo, link, or credit anywhere in the output. The credit lives in `frameworks/`.

**Check the page against the file before sharing it.** Count the `(inferred)` tags in the Markdown hub and the visible (inferred) badges on the page, and count the blank cells in each. Both pairs must match, and the header's open-tag count must equal the Markdown's. If anything differs, fix the page from the file (the file is the source), then say in one line that the counts match.

Then share it: if this session can publish an Artifact (claude.ai, Cowork, or Claude Code with the Artifact tool), publish the page as a private artifact titled "[Brand] Messaging Hub" and give the link. Otherwise give the file path and say to open it in a browser.

## 4. Feedback prompts

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
