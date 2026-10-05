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

1. **Is the module set up here?** Look for a `## Marketing Brain` section in `CLAUDE.md` and for `wiki/brand/`, `raw/voc/` and `raw/brand/`. If any is missing and this session has the marketing-brain plugin, run `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "$PWD"` with the shell and show its output: it creates the folders, the customer-data `.gitignore` rule and the CLAUDE.md section, and never overwrites a file. Without the plugin, create only the missing folders and their README files, and say so. Then **sort loose drops:** if files sit in the top level of `raw/` (anything but `README.md` and the subfolders), propose a folder for each from the table in section 1 of `frameworks/live-data-and-research.md`, as `file | folder | why`, and move them after the user confirms. Keep them verbatim, add a source and date line (for a CSV, put it in the plan instead), and ask before anything goes into `raw/brand/`, which is committed to git.
2. **Strategy.** Read `frameworks/live-data-and-research.md` first (with the plugin and no local copy, `${CLAUDE_PLUGIN_ROOT}/frameworks/live-data-and-research.md`). Ask its four strategy questions (section 3): who they think the best customer is, whether anything is changing (a pivot, a new market or product, a price change), who owns the ICP, and any segment to grow or drop. Ask for any strategy doc and save it to `raw/strategy/`.
3. **Research and documents, before anything is scraped.** Ask for surveys, user research reports, interview notes, and message-testing results. They can drop them into `raw/voc/research/` now, paste or drop them into the chat (you file them, following the table in section 1), or name a doc in a connected tool (Google Drive, Notion, ClickUp, Asana) for you to fetch and save.
4. **Live data.** Say which customer tools this session can already reach. Then ask which they use: store or payments (Shopify, WooCommerce, Stripe, Paddle, Chargebee), CRM (HubSpot, Salesforce, Pipedrive, Attio), support (Intercom, Zendesk), product analytics (Mixpanel, Amplitude). For each one not connected, say how to connect it (section 2) and offer to continue without it. Pulls are read only and saved as dated snapshots in `raw/voc/live/`.
5. **Customer data files.** List what is in `raw/voc/` (excluding `example/` and the READMEs). If there is nothing, ask the user to drop in or paste what they have, as listed in `raw/voc/README.md`: a customer export (CSV with an email and a revenue or spend column), reviews, support tickets, call notes, survey answers. Save anything pasted as Markdown in `raw/voc/`, verbatim, labelled with its source and date. Remind them this folder stays on their machine.
6. **Review pages.** Make sure `raw/voc/review-urls.md` exists (create it from the template in `raw/voc/README.md` if not), then ask: "Any public review pages for your product? G2, Capterra, Trustpilot, app stores. One per line." Save the answers there.
7. **Go or wait.** Summarise what you now have in one line each (strategy, research, live data, files, review pages), and ask whether to start or to add more first. No customer data at all: offer `example` instead.

## 1. Check the inputs

List what is in the source folder: files, row counts, and which of the inputs from `raw/voc/README.md` are present. Read `raw/voc/review-urls.md`.

- **Read `raw/voc/`** (including `research/` and `live/`) and the connected customer tools for who buys and what they say. Read `raw/strategy/` for direction only. Never read `raw/brand/` for this exercise.
- **Live data:** pull what step 0 agreed, following section 2 of `frameworks/live-data-and-research.md`: the customers with lifetime revenue and order or deal history, the source or channel, and whatever win rate, retention, or churn the tool holds. Save each pull to `raw/voc/live/` before using it.
- **No customer data at all** (own-data mode): stop. Say the ICP can't be built from guesses, and offer two routes: add data now (point to `raw/voc/README.md`), or run `/icp-dossier example` to learn the method on Acme Deals.
- **Thin data** (a list with no qualitative files, or quotes with no list): say what is missing and what it will cost (for example: "no revenue column, so the avatar is ranked by order count and tagged (inferred)"). Then continue.
- **Review URLs:** fetch each with whatever web tool this session has (WebFetch is built into Claude Code). Keep reviews verbatim with their URL as source. If a page blocks the fetch, say which one and move on; do not guess its contents.

## 2. Synthesize

Follow the seven steps in the `icp-synthesis` skill. The rules that matter most here:

- **Score the segments and tier them** (skill steps 1b and 1c): value and loyalty first, then conversion and cost to serve. Name the negative ICP. Compare the result with the strategy answers, and if they point at different customers, stop and ask which one to write the brain for.
- Every line traces to a file in `raw/voc/`, a live-data snapshot, or a review URL. Anything that is a reasonable reading but not stated gets **(inferred)**.
- **Never** generate a metric, a customer, or a quote. Missing means blank.
- Quotes stay verbatim: grammar, slang, and typos intact. Each carries its source: name, company, file.
- No email addresses anywhere in the output.

## 3. Write the ICP

If the target file's `status` is not `template`, show what would change and ask before replacing anything.

Fill the template section by section. Set `status: draft`, today's date in `last_updated` (`date +%F`), and every source file in `sources`. List every (inferred) line again under "Open (inferred) tags".

## 4. Build the dossier page

Write the HTML dossier from the template `frameworks/icp-dossier-example.html` (the Acme Deals dossier; with the plugin and no local copy, read `${CLAUDE_PLUGIN_ROOT}/frameworks/icp-dossier-example.html`). Keep its structure and replace every piece of content with this ICP's. All three exercise pages share one look, the CXL web styling: Work Sans 900 headings, Lato body, and the teal, red, beige, black and white tokens. Copy the template's `<style>` block unchanged; never restyle a page. One self-contained page, readable on a laptop and a phone. Top to bottom: the rich avatar with a short description and 3 or 4 key numbers from the data, "their words" as quote cards with sources, desires and pains side by side, the segments table (add the scorecard columns the data supports: value, loyalty, conversion, tier), a short "data vs strategy" note when they differed, and a methodology footer naming the sources, the connected tools, and their date ranges. Mark (inferred) lines visibly. No em dashes.

Then share it: if this session can publish an Artifact (claude.ai, Cowork, or Claude Code with the Artifact tool), publish the page as a private artifact titled "[Brand] ICP Dossier" and give the link. Otherwise give the file path and say to open it in a browser.

## 5. Feedback prompts

End with the two questions the workshop checks live, answered from what you wrote:
- **Who is it for,** by company type and role? Is that specific enough to pick them out of a crowd?
- **Is the problem in the customer's own words,** or in yours?
- **Is this the ICP you have, or the one you want?** If the data and the strategy differ, which one did you choose, and what would change your mind?

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
