---
name: icp-synthesis
description: Turn voice-of-customer data in raw/voc/ (a customer list with email and revenue at minimum, plus reviews, tickets, and call notes) into a grounded ICP, the rich avatar, the segments, and the exact language they use. Use when /icp-dossier runs, and before writing ad copy if wiki/brand/icp.md is still a template.
---

# ICP synthesis

> Adapted from the `icp-synthesis` skill in Nick Christensen's [ship-icp-ads-automate-monitoring](https://github.com/nickyc1/ship-icp-ads-automate-monitoring) (MIT, see `raw/voc/example/LICENSE`). Changes: paths point at `raw/voc/` and `wiki/brand/icp.md`, and the (inferred) tag rule is added. The method is Nick's.

You turn a customer list into an ICP that is real enough to write copy from. Not a demographic, not a stock persona. A specific person you could call, pulled out of the data.

## The core rule

The customer data in `raw/voc/` is the **only** source of truth. Read nothing from `raw/brand/`: the brand's own copy must never leak into "their words". Company name, job title, buyer description, the words they use: every field must be grounded in a real signal from the data or enrichment. If there is no signal, leave it blank. **Empty cells beat hallucinated cells every time.** A confident guess that's wrong poisons every piece of copy downstream.

If a pattern is a reasonable reading of the data but not stated in it, write it and tag it **(inferred)**. Never generate metrics, customers, or quotes.

## Step 1: Find the rich avatar

Rank by trailing revenue. The top ~10% is where your avatar lives. At AppSumo, 10% of buyers drove about half the revenue; the other 90% bought once and left. Building around that 10% took the business from $7M to $90M.

Look at what the top cohort has in common: the same job, the same business model, the same reason for buying again and again. Name them. "Marketing Agency Matt" was a one-person agency serving 5 to 20 clients, buying 2 to 3 deals a month for years, because *"lifetime deals are a cheat code for an agency. Overhead kills agencies."* He was punching way above his weight, and that was the whole point.

Codie Sanchez: *"Every single business has a rich avatar."* Your job is to find yours, not invent one.

If the data has no revenue column, say so, rank by order count or the closest signal available, and tag the avatar (inferred).

## Step 2: Map the segments below the avatar

The avatar isn't the only buyer, just the most valuable. Identify the other distinct groups: who they are, what they buy, where they fall short of the avatar. This keeps you honest about who you're choosing to ignore.

## Step 3: Enrich with public signals

For each high-value record, add what's verifiable: title, company, company size, industry. Public, checkable, grounded. Tier your confidence: full CRM data beats a LinkedIn guess beats a pattern-match. Mark which tier each field came from.

## Step 4: Layer the qualitative

Numbers tell you who. Words tell you why. Pull from support tickets, reviews (including the pages in `raw/voc/review-urls.md`), NPS verbatims, survey answers, and especially recorded sales calls. This is where the buying motivation and the real objections live.

## Step 5: Keep their exact language

When you capture how a customer talks, **keep grammar, slang, and phrasing intact.** Do not clean it up. Do not paraphrase. The moment you smooth "saving money AND making money on the same tools" into "cost-effective multi-tool value," you've thrown away the only thing that makes the copy convert. People buy words that sound like their own thoughts.

## Step 6: Cross-validate

Check the synthesized avatar against real sales calls. Does the person on the call match the person on the page? If not, the data lied to you somewhere. Phone calls stay irreplaceable: AI tells you who to call, not what they'll say.

## Step 7: Compile into the brand brain

Write the result to `wiki/brand/icp.md`, following its template. Every later exercise and workshop reads that file, so the synthesis compounds instead of living in one chat.

## Output

- `wiki/brand/icp.md`: the avatar at the top, the segments below, a "their words" section of verbatim language with a source on every quote, the pains and desires, the sources, and the open (inferred) tags.
- `projects/marketing-brain/outputs/icp-dossier.html`: the same content as a single-page dossier you can open in a browser and share.

No email addresses in either file. Refer to customers by name, company, and source file.
