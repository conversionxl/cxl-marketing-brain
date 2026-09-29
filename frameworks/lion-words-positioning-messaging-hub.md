---
type: framework
source: Lion Words, Diane Wiredu
used_by: /positioning-messaging, wiki/brand/positioning-messaging.md, frameworks/lion-words-hub-canvas.html
tags: [marketing-brain, positioning, messaging]
---

# Positioning and messaging hub

> **Credit:** Diane Wiredu, [Lion Words](https://www.lionwords.com/). This is her Lite Positioning & Messaging Canvas and her Messaging House template merged into one grid, using the Messaging House colour code. Taught in the CXL AI Native Marketer cohort, Marketing Brain workshop.

The hub is the single page every other piece of copy draws from. The top half (positioning) decides where you stand. The bottom half (messaging) decides what you say about it. Exercise 2 fills it into [[wiki/brand/positioning-messaging|positioning-messaging]] and renders the same grid as an HTML canvas from [[frameworks/lion-words-hub-canvas.html|the canvas shell]].

## Before you start: the core four

If a prospect can't answer these four about you, no amount of voice work helps. The hub answers each one in detail.

| Question | Answered by |
|---|---|
| **Clarity:** what is it? | Market, our solution |
| **Relevance:** who is it for? | Customer (starts from [[wiki/brand/icp]]) |
| **Value:** why should I care? | Problems we solve, value proposition, messaging pillars |
| **Advantage:** what sets you apart? | Competitive alternatives, unique attributes, differentiation snapshot |

## The canvas

One grid: a section label down the left, a row label for each field, three content columns. Positioning rows come from the Lite canvas; messaging rows follow the Messaging House. Where both templates had the same row, it appears once.

| Section | Row | 1 | 2 | 3 | Colour |
|---|---|---|---|---|---|
| **CUSTOMER** (Who we're for) | Target segment | Buying champion (persona) | Company type(s) | | white |
| | Use case | Primary use case | Buying context | | white |
| **MARKET** (Where we compete) | Market category | *spans the row* | | | white |
| **COMPETITIVE ALTERNATIVES** (What we replace) | Alternative solutions | Approach 1 | Approach 2 | Approach 3 | **pink** |
| | Limitations | Limitations of 1 | Limitations of 2 | Limitations of 3 | white |
| **PROBLEMS WE SOLVE** | Problem summary | *core problem summary statement, spans the row* | | | white |
| | Problem in buyer language | *"VOC quote 1" "VOC quote 2", spans the row* | | | white |
| | Sub-problems | Problem 1 | Problem 2 | Problem 3 | **pink** |
| | Struggles / limitations | Description and limitations of 1 | of 2 | of 3 | white |
| **UNIQUE ATTRIBUTES** (How we're different) | Differentiation | *spans the row* | | | white |
| **BIG IDEA** ('OKM' messaging anchor) | Big idea / owned key message | *spans the row* | | | **pink** |
| | What it means | *spans the row* | | | white |
| | VOC validation / reframe messages | *spans the row* | | | white |
| **VALUE PROPOSITION** (Value we enable) | Internal (shorthand) | *the value we enable, spans the row* | | | **pink** |
| | Customer-facing | *customer-facing value proposition statement, spans the row* | | | grey |
| **MESSAGING PILLARS** | Value theme | 1st value theme | 2nd value theme | 3rd value theme | **pink** |
| | Messaging pillar statement | 1st pillar statement | 2nd | 3rd | **pink** |
| **OUR SOLUTION** (Product / solution) | Capability (what you can now do) | 1st capability statement | 2nd | 3rd | white |
| | Benefit (day-to-day impact) | 1st benefit message | 2nd | 3rd | white |
| | Outcome (long-term result) | 1st outcome message | 2nd | 3rd | white |
| | VOC validation (customer quotes) | "VOC quote" per pillar | | | white |
| | Supporting features | Features and components | | | white |
| | Proof points | Metrics and results, credibility, case studies | | | white |
| **DIFFERENTIATION SNAPSHOT** | Core summary | *core differentiation summary statement, spans the row* | | | white |
| | Differentiator 1 to 4 | *description, alternative, and context, spans the row* | | | white |

### Colour code (from the Messaging House)

| Colour | Means | Where |
|---|---|---|
| Black, white bold text | Section label | Left column |
| Pale grey-blue | Row label | Second column |
| **Pink, bold** | Anchor line: the short statement copy lifts directly | Alternatives, sub-problems, big idea, internal value proposition, value themes, pillar statements |
| Light grey | Customer-facing wording | Customer-facing value proposition |
| White | Supporting detail, evidence, and quotes | Everything else |

Read a column top to bottom and the pink cells give you the story in one line each; the white cells underneath prove it.

### Markdown conventions
- Colour cannot show in Markdown, so **pink anchor cells are written in bold**. Nothing else in a cell is bold except a short lead-in label (such as "Buying champion (persona):").
- *Spans the row* means merged across all three columns. In Markdown, write the value in column 1 and leave columns 2 and 3 empty.
- The Customer rows each hold two labelled values, in columns 1 and 2. Column 3 stays empty.
- The section label appears on the first row of its group only.
- Lists inside a cell are separated with `<br>`. Never put a `|` inside a cell.
- Each cell ends with its source in brackets, and carries **(inferred)** where a claim has none (see the rule below).

## Field definitions

### Customer (Who we're for)
- **Buying champion (persona):** the person who finds you, argues for you internally, and owns the result.
- **Company type(s):** the kinds of company that buy, and the ones that don't.
- **Primary use case:** the main job they hire you for.
- **Buying context:** what is happening when they go looking: the trigger, the deadline, who else is involved.

Start this section from [[wiki/brand/icp|icp]]. Do not re-derive the buyer here.

### Market (Where we compete)
- **Market category:** where you compete, in words a buyer would type into a search bar.

### Competitive alternatives (What we replace)
What buyers do today instead of buying you. Consider doing nothing, doing it by hand, hiring someone, and direct competitors, then put the three a buyer would most recognise in the three columns, each with its limitations directly below it. Any further alternatives go on one line under the canvas, headed "Other alternatives".

### Problems we solve
- **Problem summary:** the core problem in one or two sentences.
- **Problem in buyer language:** two or three verbatim customer quotes that state the core problem. From `raw/voc/` only.
- **Sub-problems 1 to 3:** the parts of the core problem, each named in a short line.
- **Struggles / limitations 1 to 3:** under each sub-problem, what it looks like and what it costs day to day, in the customer's words where you have them.

### Unique attributes (How we're different)
- **Differentiation:** what you have or do that the alternatives above don't. Each attribute must be true, provable, and something a buyer cares about.

### Big idea ('OKM' messaging anchor)
- **Big idea / owned key message:** the one message you want to own in your category. The anchor for everything below it.
- **What it means:** the key message unpacked in two or three plain sentences.
- **VOC validation / reframe messages:** evidence that customers already think or say this (quotes from `raw/voc/`), and any reframes of how buyers see the problem. Blank if none.

### Value proposition (Value we enable)
- **Internal (shorthand):** the value you enable, in the team's own words. One line.
- **Customer-facing:** the same value as a customer would read it on a page.

### Messaging pillars
Three pillars, one per column. Each is one reason to believe the value proposition, and everything below it in the same column (down through Our solution) supports that pillar.
- **Value theme:** the kind of value (time, money, risk, status, capability).
- **Messaging pillar statement:** the key idea of the pillar, as a short claim.

### Our solution (Product / solution)
- **Capability:** what the buyer can now do.
- **Benefit:** the day-to-day impact.
- **Outcome:** the long-term result.
- **VOC validation:** verbatim customer quotes that back this pillar, with their source file. Never paraphrased, never invented.
- **Supporting features:** the features and components behind the capability.
- **Proof points:** metrics and results, credibility, case studies. From sources only. None found means blank, and the blank is a finding.

### Differentiation snapshot
- **Core summary:** one sentence on why you and not the alternatives.
- **Differentiators 1 to 4:** each names the differentiator, the alternative from this canvas it beats, and why that matters to the buyer.

The test: could a competitor copy this row onto their own page and have it still be true? Then it is not a differentiator.

## The (inferred) rule

Every cell traces to a source: the ICP, a scraped page, a file in `raw/brand/`, or a customer quote in `raw/voc/`. Cite it in brackets at the end of the cell. A cell, or part of a cell, that is a reasonable reading but not stated in any source is tagged **(inferred)**, right after the claim it covers. The HTML canvas shows the same tag as a visible badge, on top of the cell's colour.

Metrics, customers, quotes, and case studies are never generated. Missing means blank. A hub with open (inferred) tags is not finished: list every one under "Open (inferred) tags" at the end of the file.

## Feedback lens

Critique every draft with the fluff matrix in [[frameworks/brand-voice-guide|brand-voice-guide]]. Most first drafts of a hub land in corporate blandspeak. Start with the pink cells: if an anchor line is bland, everything under it will be too.
