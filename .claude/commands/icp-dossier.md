---
description: Marketing Brain exercise 1. Build your ICP from voice-of-customer data in raw/voc/, into wiki/brand/icp.md plus a shareable dossier page.
argument-hint: [example]
---

# /icp-dossier

Exercise 1 of the Marketing Brain. Turn the customer data in `raw/voc/` into an ICP: the rich avatar, the segments below it, their exact words, their pains and desires.

Read the `icp-synthesis` skill in full first (`.claude/skills/icp-synthesis/SKILL.md` in the repo, or the marketing-brain plugin's copy) and follow its method. Read `frameworks/quality-rules.md` too (with the plugin and no local copy, `${CLAUDE_PLUGIN_ROOT}/frameworks/quality-rules.md`): every output passes it. This command says where things come from and where they go.

**Framework versions.** With the plugin, compare the `version` in each local framework's frontmatter with the plugin's copy in `${CLAUDE_PLUGIN_ROOT}/frameworks/` (no `version` means 1). If the local copy is older, use the plugin's copy for this run, say so in one line, and offer to update the local file. Show what changed and replace it only on a yes: the user may have edited it.

The `.md` is the brain; the dossier page is a view of it. Always write the `.md`, even when the session has no folder (claude.ai chat, Cowork without a folder): then hand the `.md` over as a file with the page, and say it belongs in `wiki/brand/`.

## Mode

- **No argument:** use the user's own data in `raw/voc/`, excluding `example/`. Write to `wiki/brand/icp.md` and `projects/marketing-brain/outputs/icp-dossier.html`.
- **`example`:** use `raw/voc/example/` (Acme Deals, fictional). Write to `drafts/example-brain/icp.md` and `projects/marketing-brain/outputs/example-icp-dossier.html`. Never write example data into `wiki/brand/`.

## 0. Before you run

Do all of this before step 1, and wait for the answers. Skip it in `example` mode.

1. **Is the module set up here?** Look for a `## Marketing Brain` section in `CLAUDE.md` and for `wiki/brand/`, `raw/voc/` and `raw/brand/`. If any is missing and this session has the marketing-brain plugin, run `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "$PWD"` with the shell and show its output: it creates the folders, the customer-data `.gitignore` rule and the CLAUDE.md section, and never overwrites a file. Without the plugin, create only the missing folders and their README files, and say so. Then **sort loose drops:** if files sit in the top level of `raw/` (anything but `README.md` and the subfolders), propose a folder for each from the table in section 1 of `frameworks/live-data-and-research.md`, as `file | folder | why`, and move them after the user confirms. Keep them verbatim, add a source and date line (for a CSV, put it in the plan instead), and ask before anything goes into `raw/brand/`, which is committed to git.
2. **Business type.** Ask once: B2B, B2C, or services (an agency, a consultancy)? B2C runs drop the buying champion, department and buying-committee fields, and describe the buyer and the buying occasion instead.
3. **Strategy.** Read `frameworks/live-data-and-research.md` first (with the plugin and no local copy, `${CLAUDE_PLUGIN_ROOT}/frameworks/live-data-and-research.md`). Ask its four strategy questions (section 3): who they think the best customer is, whether anything is changing (a pivot, a new market or product, a price change), who owns the ICP, and any segment to grow or drop. Ask for any strategy doc and save it to `raw/strategy/`.
4. **Research and documents, before anything is scraped.** Ask for surveys, user research reports, interview notes, and message-testing results. They can drop them into `raw/voc/research/` now, paste or drop them into the chat (you file them, following the table in section 1), or name a doc in a connected tool (Google Drive, Notion, ClickUp, Asana) for you to fetch and save.
5. **Live data.** Say which customer tools this session can already reach. Then ask which they use: store or payments (Shopify, WooCommerce, Stripe, Paddle, Chargebee), CRM (HubSpot, Salesforce, Pipedrive, Attio), support (Intercom, Zendesk), product analytics (Mixpanel, Amplitude). For each one not connected, say how to connect it (section 2) and offer to continue without it. Pulls are read only and saved as dated snapshots in `raw/voc/live/`.
6. **What goes where.** Show this table once, so the user knows where to put what they have:

   | You have | Goes in |
   |---|---|
   | Customer export, orders, CRM list | `raw/voc/` |
   | Reviews, tickets, call notes, survey answers | `raw/voc/` |
   | Interviews, user research, win/loss, message tests | `raw/voc/research/` |
   | Existing personas, segment files, journey maps (triggers, channels) | `raw/strategy/` (direction only, never evidence of who buys) |
   | Strategy, pivot or target-market docs | `raw/strategy/` |
   | Public posts and reviews about the market or competitors | `raw/voc/proxy/` |

7. **Customer data files.** List what is in `raw/voc/` (excluding `example/` and the READMEs). If there is nothing, ask the user to drop in or paste what they have, as listed in `raw/voc/README.md`: a customer export (CSV with an email and a revenue or spend column), reviews, support tickets, call notes, survey answers. Save anything pasted as Markdown in `raw/voc/`, verbatim, labelled with its source and date. Remind them this folder stays on their machine.
8. **Review pages.** Make sure `raw/voc/review-urls.md` exists (create it from the template in `raw/voc/README.md` if not), then ask: "Any public review pages for your product? G2, Capterra, Trustpilot, app stores. One per line." Save the answers there.
9. **Stage.** From what is now in `raw/voc/`, pick the stage (the "Stage" section of the `icp-synthesis` skill): hypothesis, partly validated, or validated. Say which, and why, in one line. The user can override it.
10. **No or thin customer data: proxy VOC and public data.** At the hypothesis or partly validated stage, offer to collect proxy voice of customer, verbatim, into `raw/voc/proxy/`, tagged proxy. Suggest sources that fit the user's market and category, and ask which they use:
    - Review sites: G2, Capterra, TrustRadius, Trustpilot, the app stores, Amazon or retailer reviews for B2C.
    - Communities: LinkedIn posts and comments, niche forums, Slack or Discord groups, Quora, YouTube comments, Facebook groups.
    - Reddit: through web search (`site:reddit.com` plus the topic) or by copying threads by hand. Don't build on Reddit's API or RSS feeds. Reddit is strong in some markets (the US, the UK) and weak in others, so offer it only where it fits.
    Collect what people say about the problem, the category and competitors: desires, pains, objections and motivations, in their own words, each with its URL and date. Also offer public-data mode (section 7 of the quality rules) for the user's own site.
11. **Go or wait.** Summarise what you now have in one line each (business type, stage, strategy, research, live data, files, proxy, review pages), and ask whether to start or to add more first. No customer data at all: offer the hypothesis route, or `example` to learn the method first.

## 1. Check the inputs

List what is in the source folder: files, row counts, and which of the inputs from `raw/voc/README.md` are present. Read `raw/voc/review-urls.md`.

- **Read `raw/voc/`** (including `research/` and `live/`) and the connected customer tools for who buys and what they say. Read `raw/strategy/` for direction only. Never read `raw/brand/` for this exercise.
- **Live data:** pull what step 0 agreed, following section 2 of `frameworks/live-data-and-research.md`: the customers with lifetime revenue and order or deal history, the source or channel, and whatever win rate, retention, or churn the tool holds. Save each pull to `raw/voc/live/` before using it.
- **Leave out what doesn't describe the buyer.** List any file you won't use and why (for example: "a press release: says what we claim, not who buys"). Fewer relevant inputs beat many; noise makes a vaguer ICP.
- **No customer data at all** (own-data mode): build at the hypothesis stage (the "Stage" section of the skill), never from your own assumptions. Say plainly that every line is a hypothesis until customer data replaces it, and point to `raw/voc/README.md` for what to add. `example` stays available to learn the method first.
- **Thin data** (a list with no qualitative files, or quotes with no list): say what is missing and what it will cost (for example: "no revenue column, so the avatar is ranked by order count and tagged (inferred)"). Then continue.
- **Review URLs:** fetch each with whatever web tool this session has (WebFetch is built into Claude Code). Keep reviews verbatim with their URL as source. If a page blocks the fetch, say which one and move on; do not guess its contents.

## 2. Synthesize

Follow the seven steps in the `icp-synthesis` skill. The rules that matter most here:

- **Score the segments and tier them** (skill steps 1b and 1c): value and loyalty first, then conversion and cost to serve. Name the negative ICP. Compare the result with the strategy answers. If they point at different customers, write "who buys now" from the data and "who you want next" from the strategy as two separate profiles (skill step 1c), and ask which one copy should speak to today.
- Every line traces to a file in `raw/voc/`, a live-data snapshot, or a review URL. Anything that is a reasonable reading but not stated gets **(inferred)**.
- **Never** generate a metric, a customer, or a quote. Missing means blank.
- Quotes stay verbatim: grammar, slang, and typos intact. Each carries its source: name, company, file.
- No email addresses anywhere in the output.

## 3. Write the ICP

If the target file's `status` is not `template`, show what would change and ask before replacing anything.

Fill the template section by section, at the depth the stage allows: the core fields always, the scorecard and full segments only at the validated stage. Leave out sections the data can't fill (jobs to be done, who you want next) rather than writing them blank. Then run the quality rules on the file: compact, no summary layer, the vagueness sweep. Then run **the quality gate** (rule 8): Gate 0, then Gate 1 in the `icp-synthesis` skill. Fix every blocking fail from the data; tag what it can't fix (gate) and write a fix chip for it, plus two or three keep chips, into the file's Gate notes table (rule 9). Print the gate table. Set `status: draft`, today's date in `last_updated` (`date +%F`), and every source file in `sources`. List every tagged line again under "Open tags".

## 4. Build the dossier page

Write the HTML dossier from the template `frameworks/icp-dossier-example.html` (the Acme Deals dossier; with the plugin and no local copy, read `${CLAUDE_PLUGIN_ROOT}/frameworks/icp-dossier-example.html`). Keep its structure and replace every piece of content with this ICP's. Where the template and the current `wiki/brand/icp.md` template differ (templates can lag a release), the `.md` template wins: the page carries the same sections as the file, in the same order, and nothing the file doesn't hold. All three exercise pages share one look, the CXL web styling: Work Sans 900 headings, Lato body, and the teal, red, beige, black and white tokens. Copy the template's `<style>` block unchanged; never restyle a page. One self-contained page, readable on a laptop and a phone. Top to bottom: the stage badge, "who buys now" with its core fields and 3 or 4 key numbers from the data, "who you want next" beside it when the file has it, "their words" as quote cards with sources, desires and pains side by side, the segments table (add the scorecard columns the data supports: value, loyalty, conversion, tier), and a methodology footer naming the sources, the connected tools, and their date ranges. Mark every tagged line visibly. Render every Gate notes row as a feedback chip on its section or row, with the template's chip markup and script (quality rules, rule 9), and add the chip counts to the header. No summary block. No em dashes. In `example` mode, put the example banner from the quality rules at the top.

**Check the page against the file.** Count the tagged lines in the `.md` and on the page, and the Gate notes rows against the chips; both must match. If they differ, fix the page from the file.

Then share it, following the `share-output` skill: if this session can publish an Artifact (claude.ai, Cowork, or Claude Code with the Artifact tool), publish the page as a private artifact titled "[Brand] ICP Dossier" and give the link. Otherwise give the file path and say to open it in a browser.

## 5. Feedback prompts

End with the questions the workshop checks live, answered from what you wrote:
- **Who is it for,** by company type and role (B2C: by buyer and occasion)? Is that specific enough to pick them out of a crowd?
- **Is the problem in the customer's own words,** or in yours?
- **Is this the ICP you have, or the one you want?** If the data and the strategy differ, which one did you choose, and what would change your mind?

Then run the **review and trim** step from the quality rules: list every tagged line and offer cut, correct, or keep for each.

Then:
- **Where your files are:** the `.md` (`wiki/brand/icp.md`, the one Claude reads) and the page. To change anything, edit the `.md` directly or say what to change in chat (for example "in @wiki/brand/icp.md, cut the third pain"). The page updates from it. After hand edits, run `/marketing-brain:sync`.
- The stage, the number of open tags, and the one input that would move it up a stage or resolve the most tags.
- **Next:** `/positioning-messaging`.

## Last. Connect it to the repo

Before the final summary, make sure this repository treats the brand brain as its source of truth. Do each step only if it is missing, and never overwrite the user's own text:

1. **CLAUDE.md** has this line in its Marketing Brain section. Add it if not:
   > **`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.
2. **AGENTS.md**, if the repo has one, has the same line, so Codex, Copilot, Cursor and other tools follow it too. Add it if not.
3. **Other voice or brand docs in the repo** (for example a `tone-of-voice.md`, a `brand/` folder, or a style section in `CLAUDE.md`): list them, say they now overlap with `wiki/brand/`, and ask whether to point them at `wiki/brand/` or leave them. Change nothing without a yes.
4. Say in one line what now points at the file you just wrote.
