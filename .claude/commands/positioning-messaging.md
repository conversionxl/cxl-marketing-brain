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
