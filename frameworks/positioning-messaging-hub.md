---
type: framework
version: 3
source: Lion Words, Diane Wiredu
used_by: /positioning-messaging, wiki/brand/positioning-messaging.md
tags: [marketing-brain, positioning, messaging]
---

# Positioning and messaging hub

> **Credit:** Diane Wiredu, [Lion Words](https://www.lionwords.com/). This is her Lite Positioning & Messaging Hub, with three items added from her Messaging House template: the owned key message (OKM), customer words, and the differentiation snapshot. Taught in the CXL AI Native Marketer cohort, Marketing Brain workshop. The credit lives here, in the framework. The hub and the hub page this produces carry the brand's name only: no Lion Words or Diane Wiredu name, logo, link or credit in any output.

The hub is the single page every other piece of copy draws from. Part 1 decides where you stand. Part 2 decides what you say about it. Exercise 2 fills it into [[wiki/brand/positioning-messaging|positioning-messaging]].

## Before you start: the core four

If a prospect can't answer these four about you, no amount of voice work helps. The hub answers each one in detail.

| Question | Answered by |
|---|---|
| **Clarity:** what is it? | Market, our solution |
| **Relevance:** who is it for? | Customer (starts from [[wiki/brand/icp]]) |
| **Value:** why should I care? | Problems we solve, value proposition |
| **Advantage:** what sets you apart? | Competitive alternatives, unique attributes, differentiation snapshot |

The command runs this as a pass/fail gate after the hub is filled: each of the four is answered, clear, and consistent across the hub, or it says which one fails and why.

**B2C, or a "vitamin" product** (bought for delight, not to fix a pain): the four still hold. Lead the problems and pillars with the benefit the buyer gains, and keep pains for where they are real. B2B products are usually painkillers: lead with the problem.

## How the hub is laid out

The hub is one grid: ten sections, in two parts, with the same rows in the Markdown file and on the hub page (`frameworks/messaging-hub-example.html`). Every row below is a row on the page, in the same order, with the same name. Rows marked **anchor** are the lines to lift straight into copy; they show teal on the page. The **customer-facing** row shows in the teal tint. Rows marked **×3** have three cells side by side.

Every cell cites its source. Anything not traceable to a source is tagged **(inferred)**. A cell with no source stays blank: a striped cell on the page, "Blank." in the Markdown.

## Part 1: Positioning (where we stand)

### Customer (who we're for)
Start from [[wiki/brand/icp|icp]]. Do not re-derive the buyer here.
- **Target segment:**
  - **Buying champion (persona):** the person who finds you, argues for you internally, and owns the result. Name roles and titles: who reaches out, who gets on the first call.
  - **Company type(s):** the kinds of company that buy, and the ones that don't. Firmographics only: industry, size, model. Triggers and launch plans belong in use case and buying context.
- **Use case:**
  - **Primary use case:** the job the buyer is trying to get done, in their words, from their side: "add a payment option at checkout", "build a creator program that drives sales". Never what you do for them ("handoff", "ongoing production", "full-service support"). Test: could the buyer say this sentence about their own week?
  - **Buying context:** what is happening when they go looking: the trigger and what it makes them ask, what they do today that isn't working, the deadline, who else is involved. Nothing here repeats the use case.

### Market (where we compete)
- **Market category:** the shelf buyers shop on, in words they would type into a search bar. Test: would this phrase show up as a category on G2 or Capterra, or in a buyer's search? Your own phrase ("curated freelance teams", a coined name, a line from your homepage) is an owned message: it belongs in the OKM, not here. When the brand has a canonical description, the category leads and the description follows.
- **Today vs target:** how the business is positioned now (from its pages and the data) and where it wants to be (from the strategy answers), in one line each. Blank when nothing is changing. When the two differ, the rest of the hub is written for the target, and every row the evidence doesn't support yet is tagged (inferred).

### Competitive alternatives (what we replace)
What buyers do today instead of buying you. Buyers rarely compare you with nothing: they compare you with these. One cell per type, in this order:
1. **DIY or do nothing:** doing it themselves, by hand, with free resources, or living with the problem.
2. **A direct competitor:** the named product or provider they would otherwise pick.
3. **A different approach:** another way to get the job done (hire someone, an agency, a different kind of tool).

- **Alternative solutions** ×3, anchor: one approach per cell, named the way a buyer would say it.
- **Limitations** ×3: concretely why each falls short, in the same column order. Name the cost the buyer feels (time, risk, money, trust), not a slogan. "Free content is a second job: hours of sorting with no way to tell what's current" passes; "Learning is a second job" doesn't. "Leaves gaps" and "easy to pick the wrong one" fail: say which gaps, and what wrong looks like.
- Check the alternative itself is framed right. "A larger agency" may really be "an agency that doesn't know my industry": name the alternative by the thing that makes it fall short.

### Problems we solve
- **Problem summary:** the one overarching problem, in one or two plain sentences a buyer would recognise. It is the insight one level above the sub-problems, not the sub-problems joined with commas. Ask: what do all three have in common, and what does it stop the buyer doing? ("Research that doesn't give buyers the confidence to make a big decision", not "slow research, high cost and generic findings".)
- **Problem in buyer language:** one customer quote that says the whole problem, verbatim from `raw/voc/` with its source. Blank when there is no VOC.
- **Sub-problems** ×3, anchor: the 2 or 3 parts of the core problem, each in plain words. Two is fine; never pad to three. Each must pass "what does this mean?" without explanation. Each is a problem the buying champion has and you solve. "Big firms bring prestige, small ones lack depth" describes the competitors: that belongs under Limitations. If buyers stay put because switching is hard, that is a sub-problem too.
- **Struggles / limitations** ×3: what living with each sub-problem feels like day to day, in the customer's words where you have them.

### Unique attributes (how we're different)
- **Differentiation:** what you have or do that the alternatives above don't. Each attribute must be true, provable, and something a buyer cares about. Features (price, a tool, a dashboard, "one tool, not five") are rarely the difference on their own: include how you work, your method and your lens. Service businesses especially win on approach.

## Part 2: Messaging (what we say)

### Owned key message (OKM: the messaging anchor)
- **Owned key message (OKM)**, anchor: the one message you want to own in your category. The anchor for everything else.
- **What it means:** the key message unpacked in two or three plain sentences.
- **VOC validation / reframe messages:** evidence that customers already think or say this (a quote from `raw/voc/`), and the reframe it lets you make. Blank if there is none.

### Value proposition (value we enable)
- **Internal (shorthand)**, anchor: one sticky, memorable sentence that names the differentiator. Sayable out loud in one breath.
- **Customer-facing:** the same outcome as a customer would read it. Write it for the buyer's awareness level: "add the BNPL option your stack is missing" only lands if they already know it is missing. Say which level it targets.

The value proposition is about the customer: the value they get. It is not the company's mission (the bigger change the company wants to make in the world). Keep mission statements out of this section.

### Messaging pillars
One pillar per sub-problem, in the same order: pillar 1 answers sub-problem 1, and so on. Each is one reason to believe the value proposition. Vague sub-problems make vague pillars, so fix the problems first.
- **Value theme** ×3, anchor: the kind of value each pillar carries (time, money, risk, status, capability), and how this brand delivers it. Time, money and risk alone are table stakes in most categories: "Trust: every claim traces to a source" passes, "Trust" doesn't.
- **Messaging pillar statement** ×3, anchor: the pillar's key idea in a few words.

### Our solution (product / solution)
One column per pillar, in the same order.
- **Capability** ×3: what the customer can now do that they couldn't before. Specific enough to picture; "hand production to AI you can check" fails, "draft a week of emails in an hour, with every claim linked to a source" passes. A promise or guarantee ("live on the date we promise") is not a capability: say what the customer can do because of what sits underneath it.
- **Benefit** ×3: the day-to-day impact.
- **Outcome** ×3: the long-term result.
- **VOC validation** ×3: verbatim customer quotes from `raw/voc/`, with the source file. Never paraphrased, never invented.
- **Supporting features** ×3: the features that deliver the capability.
- **Proof points** ×3: numbers, results, case studies, from a source only.

A pillar with no customer quote or no proof stays blank there: that gap is the finding.

### Differentiation snapshot
- **Core summary:** one sentence on why you and not the alternatives, readable aloud in one breath. If it needs a second clause to make sense, it is two ideas.
- **Differentiator 1 to 4:** each set against a named alternative from Part 1, with why it matters to the buyer and which problem it answers. If price or a feature is a differentiator, that problem must show up in Problems we solve; if it doesn't, it isn't winning anything.

The test: could a competitor copy this row onto their own page and have it still be true? Then it is not a differentiator.

## Optional: battle cards

Off by default. After the hub, offer one card per competitive alternative, built only from the hub and its sources: **what they say** (their claim, from their pages), **where they fall short** (the limitation row), **how we win** (the matching differentiator), and **proof** (from the proof points; blank if none). Cards go in `projects/marketing-brain/outputs/battle-cards.md`, never into `wiki/brand/`.

## After the grid: evidence

The hub says what you claim. The evidence section says whether it works. For the owned key message, each pillar, and each landing page that carries them, record what the performance data shows (conversion against the site average, leads and deals, orders, message-test results), whether the people converting match the ICP's core segment, and a verdict: supported, contradicted, or can't judge. It sits under the grid in the Markdown and on the page. How to get the data: [[frameworks/live-data-and-research|live-data-and-research]].

## Quality gate: the hub (Gate 2)

Runs after Gate 0 in `frameworks/quality-rules.md` (rule 8). A fail on a blocking check is rewritten from the sources; if they can't fix it, the line is tagged (gate) and gets a fix chip that says what to do (rule 9).

| Check | Question | Type |
|---|---|---|
| H.1 Use case | Is the primary use case a job the buyer is trying to get done, in their words, and not a description of the service? | Blocking |
| H.2 Use case vs context | Does buying context hold only the trigger, the current workaround, the deadline and who's involved, with nothing repeated from the use case? | Blocking |
| H.3 Market category | Would this phrase appear as a category on G2 or Capterra, or in a buyer's search? If it is the brand's own phrase, move it to the OKM. | Blocking |
| H.4 Champion and company type | Does the champion name roles? Does company type hold firmographics only? | Blocking |
| H.5 Limitations | Does each limitation name a concrete cost (time, money, risk, trust) that answers "what's the gap?" | Blocking |
| H.6 Problem summary | Is it one insight one level above the sub-problems, and not a list of them? | Blocking |
| H.7 Sub-problems | Is each one a problem the buying champion has and the brand solves, and not a description of competitors? | Blocking |
| H.8 Pillar mapping | Does pillar N answer sub-problem N fully, including the struggles listed under it? | Blocking |
| H.9 Capability | Is each capability something the customer can now do, and not a promise or guarantee? | Blocking |
| H.10 Differentiators | Is each one set against a named alternative, tied to a listed problem, and impossible for a competitor to paste onto their own page? Is at least one about approach or method, not features? | Blocking |
| H.11 Core summary | Is the differentiation core summary one sentence you can read aloud in one breath? | Blocking |
| H.12 Value themes | Does each theme say how this brand delivers it, beyond time, money or risk in general? | Flag |
| H.13 Awareness | Does the customer-facing value proposition say, or make obvious, which awareness level it targets? | Flag |
| H.14 Switching | If the sources say switching is the main barrier, does a sub-problem, pillar or differentiator address it? | Flag |
| H.15 Simplicity | Can the positioning half be read as who, the job, the category and what we replace, in under a minute? | Flag |

## Feedback lens

Every draft passes [[frameworks/quality-rules|quality-rules]]: compact, no summary layer, the vagueness sweep, and the fluff matrix from [[frameworks/brand-voice-guide|brand-voice-guide]] on every example line. Most first drafts of a hub land in corporate blandspeak.
