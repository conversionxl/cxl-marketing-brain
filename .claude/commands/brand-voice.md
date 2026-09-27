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

## 1. Check the inputs

- **On-brand samples** are the main input. If there are none, and nothing in `scraped/`, stop: a voice guide can't be drafted from nothing. Point to `raw/brand/README.md`, or to `/brand-voice example`.
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
