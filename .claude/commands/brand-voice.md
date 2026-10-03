---
description: Marketing Brain exercise 3. Draft your verbal identity guide (brand voice and writing guidelines) and vocabulary from on-brand and off-brand samples, into wiki/brand/voice-guide.md and vocabulary.md.
argument-hint: [example]
---

# /brand-voice

Exercise 3 of the Marketing Brain. Draft the voice guide and the vocabulary from what the brand already sounds like, what it should never sound like, and the first two brain files.

Read `frameworks/brand-voice-guide.md` and `frameworks/vocabulary.md` in full first (with the plugin and no local copy, read them from `${CLAUDE_PLUGIN_ROOT}/frameworks/`). They define every section and the output format.

## Mode

- **No argument:** own data. Samples from `raw/brand/on-brand/`, `raw/brand/off-brand/`, `raw/brand/guides/`, and `raw/brand/scraped/`; the ICP and hub from `wiki/brand/`; customer words from `raw/voc/` (excluding `example/`). Write to `wiki/brand/voice-guide.md` and `wiki/brand/vocabulary.md`.
- **`example`:** Acme Deals. Samples from `raw/brand/example/`; ICP and hub from `drafts/example-brain/`; customer words from `raw/voc/example/`. Write to `drafts/example-brain/voice-guide.md` and `drafts/example-brain/vocabulary.md`. Never write example data into `wiki/brand/`.

## 0. Before you run

Do all of this before step 1, and wait for the answers. Skip it in `example` mode.

1. **Is the module set up here?** Look for a `## Marketing Brain` section in `CLAUDE.md` and for `wiki/brand/`, `raw/voc/` and `raw/brand/`. If any is missing and this session has the marketing-brain plugin, run `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "$PWD"` with the shell and show its output: it creates the folders, the customer-data `.gitignore` rule and the CLAUDE.md section, and never overwrites a file. Without the plugin, create only the missing folders and their README files, and say so.
2. **On-brand samples.** Show what is in `raw/brand/on-brand/` and `raw/brand/urls.md`. If there is little, ask the user to paste 3 to 10 pieces that sound exactly right (emails, ads, landing page sections, posts). Save each as Markdown in `raw/brand/on-brand/`, labelled with where and when it ran.
3. **Off-brand samples.** Show what is in `raw/brand/off-brand/` and `raw/brand/off-brand/urls.md`. If there is little, ask for near misses: old copy, AI drafts that felt wrong, competitor lines, as pasted text or URLs. Save text in `raw/brand/off-brand/`, URLs in `off-brand/urls.md`, each with a note on what is wrong with it.
4. **Existing voice guides.** Ask for any tone of voice, style or brand guide the company already has. Save it to `raw/brand/guides/`. Nothing under NDA.
5. **Go or wait.** Summarise what you now have, and ask whether to start or to add more first.

## 1. Check the inputs

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

1. **Our voice in a nutshell.** The persona line, "[Brand]'s voice personified is a **'[Role] with a [quality]'**", drawn from how the on-brand samples sound. Then one prose paragraph starting "Our copy reads like...", three to five sentences, ending on the core personality. Then "**Voice blend:** our audience hears the following layers:" and the layers as a short list.
2. **Brand voice traits (matrix).** 3 to 5 traits, each with what it means, do, don't, which pillar it changes (vocabulary, cadence, or tone), and an example from a real sample. A trait with no effect gets cut, not kept.
3. **Tone profile.** One row per context the brand writes in (for example sales page, email, social post, support reply), each with the tone, what shifts, and an example from a sample. Fill only contexts the samples cover; list the rest as (inferred).
4. **Writing principles.**
   - **Cadence and sentence length:** measure them from the on-brand samples: average and longest sentence, how paragraphs open, fragments and questions. State the numbers. Rhythm rules, not word caps.
   - **Always / never:** specific enough to pass or fail a draft.
   - **This, not that:** 8 to 12 near-miss pairs from real sentences, each naming what changed. "This" is on-brand; "not that" comes from `off-brand/` or is a plausible drift of the same sentence, tagged (inferred). Near misses, never extremes.
   - **Fluff check:** audit each off-brand sample on the fluff matrix, claim by claim, with the two questions: "How, exactly?" and "Would a buyer say this out loud?" Fill one row per fluff quadrant with a real line and a fix that lands in the fluff-free zone (specific and natural).
5. **Language and terminology.** The jargon-vs-buzzword rule in one or two lines, then **Phrases to use** (top owned words and allowed jargon) and **Phrases to avoid** (top buzzwords, each with what to write instead) as short tables, then a link to `vocabulary.md` for the full lists. Keep the short lists consistent with step 4.
6. **Branded language: the [product] / [signature element].** Name both in the heading. **Overview: visual and verbal consistency:** product, feature and method names, owned terms, and the signature element (a mascot, a named concept, a recurring phrase), and how it stays consistent. **Practical application:** where it appears, where it never does, and how to write it. Only what the samples, guides or hub show; blank otherwise.

Then the **appendix**: the core four check from step 2, **Proof: before and after** (rewrite one off-brand sample using only the guide and the vocabulary; the before, the after, and what changed), sources, and open (inferred) tags.

## 4. Draft the vocabulary

- **Phrases to use:** owned words from the hub's owned key message (OKM), category, pillars and the signature element; allowed jargon, with evidence from `raw/voc/` that buyers use it.
- **Phrases to avoid:** banned buzzwords from the off-brand samples and any existing guide, each checked with the "how?" test. Each gets a "write instead", taken from customer language in `raw/voc/` wherever possible.
- **Customer words vs our words:** where `raw/voc/` and the brand's pages name the same thing differently.

## 5. Write

Every line traces to a sample, a scraped page, a guide, or a customer quote. Anything else is tagged **(inferred)**. Never invent a quote. The output carries the brand's name only: no Lion Words or Diane Wiredu name, logo, link, or credit, in the files or in the summary. The credit lives in `frameworks/`. If a target file's `status` is not `template`, show what would change and ask before replacing anything. Set `status: draft`, `last_updated`, and `sources` on both files, and list every (inferred) line under "Open (inferred) tags".

## 6. Checks

Answer each honestly from what you wrote:
- **Does each trait change vocabulary, cadence, or tone?** Name any that don't.
- **Jargon kept, buzzwords cut?** Name anything in the wrong list.
- **Is any this-not-that pair an extreme rather than a near miss?**
- **Could a competitor's page pass this guide unchanged?** If yes, the guide is too generic: say where.
- **Are all four core questions answered in the hub,** clearly and consistently?
- **Does every fix in the fluff check land in the fluff-free zone,** specific and natural?
- **Could a new hire, or Claude, write in this voice from the guide alone?** If not, say which section is too thin.

Then:
- The two file paths.
- The number of open (inferred) tags.
- **Take home:** write your own this-not-that pairs from real sentences, and run your homepage through the fluff matrix.
- The brand brain is now in place. The `brand-brain` skill loads it automatically before any customer-facing writing.

## Last. Connect it to the repo

Before the final summary, make sure this repository treats the brand brain as its source of truth. Do each step only if it is missing, and never overwrite the user's own text:

1. **CLAUDE.md** has this line in its Marketing Brain section. Add it if not:
   > **`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.
2. **AGENTS.md**, if the repo has one, has the same line, so Codex, Copilot, Cursor and other tools follow it too. Add it if not.
3. **Other voice or brand docs in the repo** (for example a `tone-of-voice.md`, a `brand/` folder, or a style section in `CLAUDE.md`): list them, say they now overlap with `wiki/brand/`, and ask whether to point them at `wiki/brand/` or leave them. Change nothing without a yes.
4. Say in one line what now points at the file you just wrote.
