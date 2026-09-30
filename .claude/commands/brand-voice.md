---
description: Marketing Brain exercise 3. Draft your brand voice guide and vocabulary (Lion Words approach) from on-brand and off-brand samples, into wiki/brand/voice-guide.md and vocabulary.md.
argument-hint: [example]
---

# /brand-voice

Exercise 3 of the Marketing Brain. Draft the voice guide and the vocabulary from what the brand already sounds like, what it should never sound like, and the first two brain files.

Read `frameworks/brand-voice-guide.md` and `frameworks/vocabulary.md` in full first. They define every section.

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

## 2. Draft the voice guide

- **Persona:** one line, "a [role] with a [quality]", drawn from how the on-brand samples sound.
- **Traits:** 3 to 5. Each must name which of vocabulary, cadence, or sentence length it changes, and how it shows on the page, with an example from a sample. A trait with no effect gets cut, not kept.
- **Cadence rules:** measure them from the on-brand samples: average and longest sentence, how paragraphs open, fragments and questions. State the numbers you measured.
- **Always / never:** specific enough to pass or fail a draft.
- **This, not that:** 8 to 12 near-miss pairs from real sentences. "This" is on-brand, "not that" is a near miss (from `off-brand/`, or a plausible drift of the same sentence, tagged (inferred)). Near misses, never extremes.
- **Tone:** leave the optional section blank unless the samples clearly show the voice flexing by context.

## 3. Draft the vocabulary

- **Owned words:** from the hub's big idea, category, and pillars.
- **Allowed jargon:** terms buyers use in `raw/voc/`, with the evidence.
- **Banned buzzwords:** from the off-brand samples and any existing guide, each with what to write instead.
- **Customer words vs our words:** where `raw/voc/` and the brand's pages name the same thing differently.

## 4. Write

Every line traces to a sample, a scraped page, a guide, or a customer quote. Anything else is tagged **(inferred)**. Never invent a quote. If a target file's `status` is not `template`, show what would change and ask before replacing anything. Set `status: draft`, `last_updated`, and `sources` on both files, and list every (inferred) line under "Open (inferred) tags".

## 5. Feedback prompts

End with the two questions the workshop checks live:
- **Does each trait change vocabulary, cadence, or sentence length?** Name any that don't.
- **Jargon kept, buzzwords cut?** Name anything in the wrong list.

Then prove the guide works: rewrite one off-brand sample using only the guide and the vocabulary, and show before and after.

Then:
- The two file paths.
- The number of open (inferred) tags.
- **Take home:** write your own this-not-that pairs from real sentences.
- The brand brain is now in place. The `brand-brain` skill loads it automatically before any customer-facing writing.

## Last. Connect it to the repo

Before the final summary, make sure this repository treats the brand brain as its source of truth. Do each step only if it is missing, and never overwrite the user's own text:

1. **CLAUDE.md** has this line in its Marketing Brain section. Add it if not:
   > **`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.
2. **AGENTS.md**, if the repo has one, has the same line, so Codex, Copilot, Cursor and other tools follow it too. Add it if not.
3. **Other voice or brand docs in the repo** (for example a `tone-of-voice.md`, a `brand/` folder, or a style section in `CLAUDE.md`): list them, say they now overlap with `wiki/brand/`, and ask whether to point them at `wiki/brand/` or leave them. Change nothing without a yes.
4. Say in one line what now points at the file you just wrote.
