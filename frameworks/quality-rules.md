---
type: framework
version: 2
used_by: /icp-dossier, /positioning-messaging, /brand-voice, brand-sync skill
tags: [marketing-brain, quality]
---

# Quality rules for the brand brain

Every Marketing Brain output passes these rules: the `.md` files in `wiki/brand/` first, then the pages built from them. Each command reads this file before it writes and checks against it before it finishes. The `brand-sync` skill applies it to every later edit.

The `.md` files are the brain. Claude and any other AI tool read them, never the pages. A page is a view of its `.md`: it never holds a line the `.md` doesn't.

## 1. Compact

A first draft has to be scannable, or nobody reviews it.

- No section repeats another. If two sections say the same thing, keep the one later sections depend on.
- Table cells stay under about 25 words. Longer means two ideas: split the row or cut one.
- Columns are capped per output: the traits table has 4, and every other table has only the columns its framework names.
- No filler sections. A section with no source material is left out, not padded. A blank inside a section that must exist stays a blank.

## 2. No summary layer

Hard rule. Never add an executive summary, overview, TL;DR, "at a glance" or "key takeaways" block, in the `.md` or on the page. A summary filters the message down, and later readers (people and AI) stop at it instead of reading the rows that carry the decisions. The frameworks already put the anchor lines first; that is the summary.

## 3. Vagueness sweep

Diane Wiredu's test, run on every line before the draft is shown:

1. **"What does this mean?"** If the line needs explaining, rewrite it so it doesn't.
2. **"Would someone handed this have a question?"** Picture a new hire, or another AI with only this file. If they would ask "like what?" or "how?", the line is too vague.
3. **Interchangeable?** If a competitor could paste the line onto their own page and it would still be true, it says nothing about this brand.

A line that fails gets rewritten from the sources. If the sources can't make it specific, keep it and tag it **(vague)**, so the closing review lists it.

## 4. Fluff check on example lines

Every example line (quotes excluded: customer words stay verbatim) is placed on the fluff matrix in `frameworks/brand-voice-guide.md`:

| | Vague | Specific |
|---|---|---|
| **Natural** | Empty charm | **Fluff-free zone** |
| **Formulaic** | Corporate blandspeak | Jargon jungle |

Only the fluff-free zone ships: natural words a buyer would say out loud, and specific enough to answer "how, exactly?". Anything else is rewritten with the two questions in the matrix section: "How, exactly?" and "Would a buyer say this out loud?"

## 5. Review and trim, to close

The last step of every command and every `brand-sync` edit:

1. List every line tagged **(inferred)**, **(vague)**, **hypothesis** or **proxy**, with its section.
2. For each, offer three choices: **cut** it, **correct** it (the user gives the fact), or **keep** it tagged.
3. Apply the choices to the `.md`, then rebuild the page from it.

Never remove a tag without the user's answer.

## 6. Example mode banner

Pages built with `example` carry this line at the top: "Built from Acme Deals, a fictional brand with dummy data. Your own run will look different, and so will the CXL demo." The example `.md` files carry the same line under the title.

## 7. Public-data input

When the user has no private data, or can't use it, offer to build from public pages instead:

- Ask for a site, or one section of it (a product line, a services area, a blog category).
- Fetch the pages with whatever web tool the session has (WebFetch is built into Claude Code; Firecrawl when connected) and save each to `raw/brand/scraped/` with its URL and date.
- Turn them into reference notes: what the brand says it does, for whom, its claims, and its words.
- Every line built from them names a public page as its source. Public pages tell you what a brand claims, not who buys: in the ICP they count as proxy evidence, never as customer data.

## Tags used across the brain

| Tag | Means | Set by |
|---|---|---|
| **(inferred)** | A reasonable reading the sources don't state | Any command |
| **(vague)** | Failed the vagueness sweep and the sources can't fix it | Any command |
| **hypothesis** | ICP line with no customer data behind it | `/icp-dossier` at the hypothesis stage |
| **proxy** | Built from public posts or reviews about the market, not from the brand's own customers | `/icp-dossier` |

The `brand-brain` skill treats every tagged line as unconfirmed: usable for direction, never stated as fact in copy.
