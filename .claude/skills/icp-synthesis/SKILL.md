---
name: icp-synthesis
description: Turn voice-of-customer data in raw/voc/ (a customer list with email and revenue at minimum, plus reviews, tickets, and call notes) into a grounded ICP, the rich avatar, the segments, and the exact language they use. Use when /icp-dossier runs, and before writing ad copy if wiki/brand/icp.md is still a template.
---

# ICP synthesis

> Adapted from the `icp-synthesis` skill in Nick Christensen's [ship-icp-ads-automate-monitoring](https://github.com/nickyc1/ship-icp-ads-automate-monitoring) (MIT, see `raw/voc/example/LICENSE`). Changes: paths point at `raw/voc/` and `wiki/brand/icp.md`, and the (inferred) tag rule is added. The method is Nick's.

You turn a customer list into an ICP that is real enough to write copy from. Not a demographic, not a stock persona. A specific person you could call, pulled out of the data.

## The core rule

The customer data is the **only** source of truth for who buys and what they say: `raw/voc/` (including `research/` and the live snapshots in `live/`) and any connected store, CRM, or support tool. Read nothing from `raw/brand/`: the brand's own copy must never leak into "their words". `raw/strategy/` is read for direction only (who the business wants to sell to), never as evidence of who buys. Company name, job title, buyer description, the words they use: every field must be grounded in a real signal from the data or enrichment. If there is no signal, leave it blank. **Empty cells beat hallucinated cells every time.** A confident guess that's wrong poisons every piece of copy downstream.

If a pattern is a reasonable reading of the data but not stated in it, write it and tag it **(inferred)**. Never generate metrics, customers, or quotes.

## Step 0: Strategy first, then live data

Ask the strategy questions in `frameworks/live-data-and-research.md` (section 3) before reading the data, and write the user's answer down: it is the hypothesis the data tests. Then pull live data through whatever store, payment, CRM, support, or product analytics tools are connected, following section 2 of that file: read only, smallest set, saved as a dated snapshot in `raw/voc/live/`, no personal data outside the local folders.

## Step 1: Find the rich avatar

Rank by trailing revenue. The top ~10% is where your avatar lives. At AppSumo, 10% of buyers drove about half the revenue; the other 90% bought once and left. Building around that 10% took the business from $7M to $90M.

Look at what the top cohort has in common: the same job, the same business model, the same reason for buying again and again. Name them. "Marketing Agency Matt" was a one-person agency serving 5 to 20 clients, buying 2 to 3 deals a month for years, because *"lifetime deals are a cheat code for an agency. Overhead kills agencies."* He was punching way above his weight, and that was the whole point.

Codie Sanchez: *"Every single business has a rich avatar."* Your job is to find yours, not invent one.

If the data has no revenue column, say so, rank by order count or the closest signal available, and tag the avatar (inferred).

**With live data, rank on lifetime value, not first-order revenue.** First orders mislead: a discount hunter and a loyal buyer can look the same on day one. Model value per customer over their whole history, and for subscriptions include expansion and churn.

## Step 1b: Score the segments

Group customers into candidate segments by what the data holds: company type and size, role, industry, acquisition source or channel, first product bought, plan. Then score every segment on whatever of these the data supports, and leave a column blank when it does not:

| Signal | Store or payments | CRM and sales | Why it matters |
|---|---|---|---|
| **Value** | LTV, average order value, revenue share | Deal size, expansion revenue | Who is worth the most |
| **Loyalty** | Repeat purchase rate, time to second order, RFM score | Retention, renewal, churn rate | Who stays. Repeat rate is the leading signal in a store |
| **Conversion** | Visitor or lead to first order, by source | Win rate, sales cycle length, lead to customer rate | Who is easiest to win |
| **Cost to serve** | Refunds, discount dependence | Support tickets per account, onboarding time | Who is cheap to keep |
| **Volume** | Share of customers | Share of pipeline | Whether the segment is big enough to build on |

Rank the segments on value and loyalty first, then conversion and cost to serve as tie-breakers. Then tier them:
- **Core:** high on value and loyalty, converts well. This is the avatar.
- **Adjacent:** valuable, but slower to win or more expensive to serve.
- **Stretch:** a segment the strategy wants that the data does not yet support.
- **Negative ICP:** the ones who churn fast, buy once on discount, or cost more than they pay. Name them; copy should not speak to them.

Say how many customers sit behind each number. A segment of four is a hint, not a finding.

## Step 1c: Compare the data with the strategy

Put the data's core segment next to the user's answer from Step 0 and anything in `raw/strategy/`. If they match, say so. If they differ (a pivot, a new market, a segment the business wants to leave), **do not choose.** Show both, with what each would win and cost, and ask which one the brain should be written for. Record the decision and the reason in the ICP.

## Step 2: Map the segments below the avatar

The avatar isn't the only buyer, just the most valuable. Identify the other distinct groups: who they are, what they buy, where they fall short of the avatar. This keeps you honest about who you're choosing to ignore.

## Step 3: Enrich with public signals

For each high-value record, add what's verifiable: title, company, company size, industry. Public, checkable, grounded. Tier your confidence: full CRM data beats a LinkedIn guess beats a pattern-match. Mark which tier each field came from.

## Step 4: Layer the qualitative

Numbers tell you who. Words tell you why. Pull from support tickets, reviews (including the pages in `raw/voc/review-urls.md`), NPS verbatims, survey answers, user research and message-testing reports in `raw/voc/research/`, connected support and call-recording tools, and especially recorded sales calls. This is where the buying motivation and the real objections live.

## Step 5: Keep their exact language

When you capture how a customer talks, **keep grammar, slang, and phrasing intact.** Do not clean it up. Do not paraphrase. The moment you smooth "saving money AND making money on the same tools" into "cost-effective multi-tool value," you've thrown away the only thing that makes the copy convert. People buy words that sound like their own thoughts.

## Step 6: Cross-validate

Check the synthesized avatar against real sales calls. Does the person on the call match the person on the page? If not, the data lied to you somewhere. Phone calls stay irreplaceable: AI tells you who to call, not what they'll say.

## Step 7: Compile into the brand brain

Write the result to `wiki/brand/icp.md`, following its template. Every later exercise and workshop reads that file, so the synthesis compounds instead of living in one chat.

## Output

- `wiki/brand/icp.md`: the avatar at the top, the segment scorecard and tiers, the negative ICP, the data-versus-strategy decision, the segments below, a "their words" section of verbatim language with a source on every quote, the pains and desires, the sources, and the open (inferred) tags.
- `projects/marketing-brain/outputs/icp-dossier.html`: the same content as a single-page dossier you can open in a browser and share.

No email addresses in either file. Refer to customers by name, company, and source file.
