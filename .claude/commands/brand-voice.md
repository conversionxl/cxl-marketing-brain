---
description: Marketing Brain exercise 3. Draft your verbal identity guide (brand voice and writing guidelines) and vocabulary from on-brand and off-brand samples, into wiki/brand/voice-guide.md and vocabulary.md.
argument-hint: [example]
---

# /brand-voice

Exercise 3 of the Marketing Brain. Draft the voice guide and the vocabulary from what the brand already sounds like, what it should never sound like, and the first two brain files.

Read `frameworks/brand-voice-guide.md` and `frameworks/vocabulary.md` in full first (with the plugin and no local copy, read them from `${CLAUDE_PLUGIN_ROOT}/frameworks/`). They define every section and the output format. Read `frameworks/quality-rules.md` too: every output passes it.

**Framework versions.** With the plugin, compare the `version` in each local framework's frontmatter with the plugin's copy in `${CLAUDE_PLUGIN_ROOT}/frameworks/` (no `version` means 1). If the local copy is older, use the plugin's copy for this run, say so in one line, and offer to update the local file. Show what changed and replace it only on a yes: the user may have edited it.

The `.md` files are the brain; the guide page is a view of them. Always write the `.md` files, even when the session has no folder (claude.ai chat, Cowork without a folder): then hand them over as files with the page, and say they belong in `wiki/brand/`.

## Mode

- **No argument:** own data. Samples from `raw/brand/on-brand/`, `raw/brand/off-brand/`, `raw/brand/guides/`, and `raw/brand/scraped/`; the ICP and hub from `wiki/brand/`; customer words from `raw/voc/` (excluding `example/`). Write to `wiki/brand/voice-guide.md`, `wiki/brand/vocabulary.md` and `projects/marketing-brain/outputs/voice-guide.html`.
- **`example`:** Acme Deals. Samples from `raw/brand/example/`; ICP and hub from `drafts/example-brain/`; customer words from `raw/voc/example/`. Write to `drafts/example-brain/voice-guide.md`, `drafts/example-brain/vocabulary.md` and `projects/marketing-brain/outputs/example-voice-guide.html`. Never write example data into `wiki/brand/`.

## 0. Before you run

Do all of this before step 1, and wait for the answers. Skip it in `example` mode.

1. **Is the module set up here?** Look for a `## Marketing Brain` section in `CLAUDE.md` and for `wiki/brand/`, `raw/voc/` and `raw/brand/`. If any is missing and this session has the marketing-brain plugin, run `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "$PWD"` with the shell and show its output: it creates the folders, the customer-data `.gitignore` rule and the CLAUDE.md section, and never overwrites a file. Without the plugin, create only the missing folders and their README files, and say so. Then **sort loose drops:** if files sit in the top level of `raw/` (anything but `README.md` and the subfolders), propose a folder for each from the table in section 1 of `frameworks/live-data-and-research.md`, as `file | folder | why`, and move them after the user confirms. Keep them verbatim, add a source and date line (for a CSV, put it in the plan instead), and ask before anything goes into `raw/brand/`, which is committed to git.
2. **Existing voice guides, wherever they live.** Read `frameworks/live-data-and-research.md` first (with the plugin and no local copy, `${CLAUDE_PLUGIN_ROOT}/frameworks/live-data-and-research.md`). Ask for any tone of voice, style, or brand guide the company already has. It may live in Notion, ClickUp, Asana, Confluence, or a Google Doc owned by someone else. Take it three ways: dropped in a folder, pasted or dropped in the chat (you file it), or fetched through a connected docs tool from a name or link. Shareable guides go to `raw/brand/guides/`; internal or confidential ones to `raw/strategy/`. If someone else owns the voice, say the draft will need their sign-off.
3. **Research.** Ask for message-testing results, surveys, user research, or content feedback that says how the audience reacts to the brand's words. Same three ways in; they go to `raw/voc/research/`.
4. **Live data: which content performs?** Say which tools this session can already reach. Then ask which they use for: social (LinkedIn, X, Instagram, YouTube), blog or site (WordPress, Webflow, plus GA4 for engagement and conversion), email (Customer.io, Klaviyo, Mailchimp), and ads (Google, Meta, LinkedIn). For each one not connected, say how to connect it (section 2 of the framework) and offer to continue without it. Pull the top and bottom performers over a stated period (engagement rate, click-through, conversion), read only, and save the snapshot to `raw/performance/`.
5. **On-brand samples.** Show what is in `raw/brand/on-brand/` and `raw/brand/urls.md`. If there is little, ask for 3 to 10 pieces that sound exactly right, following "Which samples to feed it" in the framework: only pieces they want copied, from as many channels as they have (emails that perform, onboarding and welcome flows, ads and campaigns that worked, landing page sections, social posts, thought leadership, sales proposals, one-pagers, client emails), plus the brand's values. Say plainly: leave out anything you have doubts about, even if it's on the website. Save each as Markdown in `raw/brand/on-brand/`, labelled with where and when it ran.
6. **Off-brand samples.** Show what is in `raw/brand/off-brand/` and `raw/brand/off-brand/urls.md`. If there is little, ask for near misses: old copy, AI drafts that felt wrong, competitor lines, as pasted text or URLs. Save text in `raw/brand/off-brand/`, URLs in `off-brand/urls.md`, each with a note on what is wrong with it.
7. **Go or wait.** Summarise what you now have (guides, research, live data, on-brand and off-brand samples), and ask whether to start or to add more first.

## 1. Check the inputs

- **Performance-backed samples.** From the step 0 snapshot, offer the top performers as on-brand candidates and the bottom performers as off-brand candidates, each with its number and source. **The user decides.** Performance is evidence, not taste: a high performer that sounds wrong is worth a conversation, not an automatic sample. Save each confirmed piece in `on-brand/` or `off-brand/` with its metric, period, and source at the top.
- **Guides and research:** read `raw/brand/guides/`, `raw/strategy/` (voice and brand docs only), and `raw/voc/research/`. An existing guide is the starting point: carry its decisions over, cite it, and flag where the samples or the data disagree with it.
- **On-brand samples** are the main input. If there are none, and nothing in `scraped/`, stop: a voice guide can't be drafted from nothing. Point to `raw/brand/README.md`, or to `/brand-voice example`.
- **Off-brand URLs** in `raw/brand/off-brand/urls.md`: fetch each and save it to `raw/brand/off-brand/scraped-<short-slug>.md` with the URL and date at the top. Skip any already scraped.
- **Off-brand samples** are what the this-not-that pairs are built from. If there are none, say the pairs will be weaker, and continue.
- **ICP and hub:** read them if filled. They supply the customer words and the owned words. If either is a template, say so and continue without it.

## 2. Check the core four

Read `positioning-messaging.md` (or the example hub). For each of the four questions, check the sub-questions in the framework: category and use case; target customer; problem solved and benefits; alternatives and unique attributes. Fill the "Core four check" table in the appendix. Name any that are blank, unclear, or inconsistent across the hub and the samples, and say the voice can't fix them.

## 3. Draft the voice guide, in the verbal identity format

Lay the guide out exactly as "The output format" in `frameworks/brand-voice-guide.md` shows, starting from the template in `wiki/brand/voice-guide.md`:
- Title **"Verbal Identity: Brand Voice & Writing Guidelines"**, then the 💡 **BRAND VOICE** callout with its **Use case** line.
- A numbered contents list of links, with Phrases to use and Phrases to avoid indented under 5, and Overview and Practical application indented under 6. Update the section 6 link if you rename its heading.
- A horizontal rule, then the six sections in order. Working material goes in the appendix after section 6.

Then fill each section:

1. **Our voice in a nutshell.** Short and punchy. The persona line, "[Brand]'s voice personified is a **'[Role] with a [quality]'**", drawn from how the on-brand samples sound: bold and specific to this brand, dialled up, never a generic persona. Then at most two sentences starting "Our copy reads like...". No voice blend.
2. **Brand voice traits (matrix).** 3 or 4 traits, in a 4-column table: trait, what it means, do, don't. Each trait is a voice quality you can hear (like challenger), never a behaviour ("show the work" belongs in section 4) or a generic word ("human", "friendly"). "What it means" says what the trait changes in vocabulary, cadence or tone; a trait with no visible effect gets cut. Do and Don't are quoted copy lines: Do from a real on-brand sample, Don't from an off-brand sample or a plausible drift of the same line, tagged (inferred). Two or three pairs per trait, one row each, every pair like for like: the same message in the same format (headline for headline, button for button), with a caption under the Don't naming what changed. Real near misses first: an old line and the one that replaced it.
3. **Tone profile.** Only when the samples cover more than one channel: one row per channel they cover, with the tone, what shifts, and an example. With one channel, keep the heading and the one line the framework gives. No (inferred) rows.
4. **Writing principles.**
   - **Cadence and sentence length:** measure them from the on-brand samples: average and longest sentence, how paragraphs open, fragments and questions. State the numbers. Rhythm rules, not word caps.
   - **Always / never:** specific enough to pass or fail a draft. Say which assets a rule applies to when it doesn't apply to all.
   - **This, not that:** one line pointing to the traits matrix. The pairs live there only.
   - **Fluff check:** audit each off-brand sample on the fluff matrix, claim by claim, with the two questions: "How, exactly?" and "Would a buyer say this out loud?" Fill one row per fluff quadrant with a real line and a fix that lands in the fluff-free zone (specific and natural).
5. **Language and terminology.** The jargon-vs-buzzword rule in one or two lines, then **Phrases to use** (top owned words and allowed jargon) and **Phrases to avoid** (top buzzwords, each with what to write instead) as short tables, then a link to `vocabulary.md` for the full lists. Keep the short lists consistent with step 4.
6. **Branded language: the [product] / [signature element].** Name both in the heading. **Overview: visual and verbal consistency:** product, feature and method names, owned terms, and the signature element (a mascot, a named concept, a recurring phrase), and how it stays consistent. **Practical application:** where it appears, where it never does, and how to write it. Only what the samples, guides or hub show; blank otherwise.

Then the **appendix**: the core four check from step 2, **Performance evidence** when live data was used (which traits, phrases, or formats appear in the top performers and not the bottom ones, with numbers and sources; never claim a trait causes performance), **Proof: before and after** (rewrite one off-brand sample using only the guide and the vocabulary; the before, the after, and what changed), sources, and open (inferred) tags.

## 4. Draft the vocabulary

- **Phrases to use:** owned words from the hub's owned key message (OKM), category, pillars and the signature element; allowed jargon, with evidence from `raw/voc/` that buyers use it.
- **Phrases to avoid:** banned buzzwords from the off-brand samples and any existing guide, each checked with the "how?" test. Each gets a "write instead", taken from customer language in `raw/voc/` wherever possible.
- **Customer words vs our words:** where `raw/voc/` and the brand's pages name the same thing differently.

## 5. Write

Every line traces to a sample, a scraped page, a guide, or a customer quote. Anything else is tagged **(inferred)**. Never invent a quote. The output carries the brand's name only: no Lion Words or Diane Wiredu name, logo, link, or credit, in the files or in the summary. The credit lives in `frameworks/`. If a target file's `status` is not `template`, show what would change and ask before replacing anything. Set `status: draft`, `last_updated`, and `sources` on both files, and list every tagged line under "Open tags". Then run the quality rules on both files: compact, no summary layer, the vagueness sweep, the fluff check on example lines. Then run **the quality gate** (rule 8): Gate 0, then Gate 3 in the framework. Rewrite every blocking fail from the samples; tag what they can't fix (gate) and write a fix chip for it, plus two or three keep chips, into the voice guide's Gate notes table (rule 9). Print the gate table.

## 6. Build the voice guide page

Always, in both modes. Render the voice guide, with the vocabulary appended below a rule, as one self-contained HTML page. Use `frameworks/voice-guide-example.html` (the Acme Deals guide) as the template; with the plugin and no local copy, read `${CLAUDE_PLUGIN_ROOT}/frameworks/voice-guide-example.html`.

- Keep its structure: the title, the BRAND VOICE callout, the linked contents list, the six sections, the appendix, then the vocabulary. Every contents link must land on its heading. Where the template and the current framework differ (templates can lag a release: a voice blend, a traits table with more than four columns), the framework and the `.md` win. The page carries only what the `.md` files hold.
- All three exercise pages share one look, the CXL web styling: Work Sans 900 headings, Lato body, and the teal, red, beige, black and white tokens. Copy the template's `<style>` block unchanged; never restyle a page.
- Show every tag ((inferred), (vague), (gate)) as the template's red `inferred` chip, with the tag's own word.
- Render every Gate notes row as a feedback chip on its section, trait row or table row, with the template's chip markup and script (quality rules, rule 9), and add the chip counts under the title.
- No summary block. In `example` mode, put the example banner from the quality rules at the top.
- **Check the page against the files:** the tag count on the page equals the count in the two `.md` files, and the chips equal the Gate notes rows.
- When the appendix has performance evidence, render it as a table after the core four check.
- Write it to `projects/marketing-brain/outputs/voice-guide.html` (own data) or `projects/marketing-brain/outputs/example-voice-guide.html` (`example`).

Then share it, following the `share-output` skill: if this session can publish an Artifact (claude.ai, Cowork, or Claude Code with the Artifact tool), publish the page as a private artifact titled "[Brand] Verbal Identity" and give the link. Otherwise give the file path and say to open it in a browser.

## 7. Checks

Answer each honestly from what you wrote:
- **Does each trait change vocabulary, cadence, or tone?** Name any that don't. Is any trait a behaviour or a generic word?
- **Is the nutshell short and bold,** or could a competitor use the same persona line?
- **Jargon kept, buzzwords cut?** Name anything in the wrong list.
- **Is any Do and Don't pair an extreme rather than a near miss, or two different messages?**
- **Could a competitor's page pass this guide unchanged?** If yes, the guide is too generic: say where.
- **Are all four core questions answered in the hub,** clearly and consistently?
- **Does every fix in the fluff check land in the fluff-free zone,** specific and natural?
- **Could a new hire, or Claude, write in this voice from the guide alone?** If not, say which section is too thin.

Then run the **review and trim** step from the quality rules: list every tagged line and offer cut, correct, or keep for each.

Then:
- **Where your files are:** the two `.md` files (`wiki/brand/voice-guide.md` and `vocabulary.md`, the ones Claude reads) and the page. To change anything, edit a `.md` directly or say what to change in chat. The page updates from it. After hand edits, run `/marketing-brain:sync`.
- The number of open tags.
- **Take home:** replace any (inferred) Don't line with a real near miss from your own drafts, and run your homepage through the fluff matrix.
- The brand brain is now in place. The `brand-brain` skill loads it automatically before any customer-facing writing.

## Last. Connect it to the repo

Before the final summary, make sure this repository treats the brand brain as its source of truth. Do each step only if it is missing, and never overwrite the user's own text:

1. **CLAUDE.md** has this line in its Marketing Brain section. Add it if not:
   > **`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.
2. **AGENTS.md**, if the repo has one, has the same line, so Codex, Copilot, Cursor and other tools follow it too. Add it if not.
3. **Other voice or brand docs in the repo** (for example a `tone-of-voice.md`, a `brand/` folder, or a style section in `CLAUDE.md`): list them, say they now overlap with `wiki/brand/`, and ask whether to point them at `wiki/brand/` or leave them. Change nothing without a yes.
4. Say in one line what now points at the file you just wrote.
