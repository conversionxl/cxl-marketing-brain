---
type: framework
version: 3
used_by: /icp-dossier, /positioning-messaging, /brand-voice, brand-sync skill
source: "Rules 3 and 8: Lion Words, Diane Wiredu, from her workshop and her reviews of the first cohort's outputs (October 2026)"
tags: [marketing-brain, quality]
---

# Quality rules for the brand brain

Every Marketing Brain output passes these rules: the `.md` files in `wiki/brand/` first, then the pages built from them. Each command reads this file before it writes and checks against it before it finishes. The `brand-sync` skill applies it to every later edit.

Rules 1 to 7 shape the draft. Rule 8, the quality gate, checks it before anyone sees it. Rule 9 turns what the gate finds into feedback chips on the page, so the output teaches its owner what to fix and why.

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

1. List every line tagged **(inferred)**, **(vague)**, **(gate)**, **hypothesis** or **proxy**, with its section. For a (gate) line, give its chip note too: it says what to do.
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

## 8. The quality gate

Runs after rules 1 to 7 and before Review and trim, on every command and every `brand-sync` edit. It comes from expert reviews of the first cohort's outputs: the same few mistakes showed up again and again, and almost none were about missing data. They were lines written from the company's side, cells that bundle several ideas, and examples that teach AI nothing. The test under all of it: **if you have a question reading a line, the AI building from it will too.**

Each check is a yes/no question. **Blocking** checks must pass before the output is shown: rewrite the line from the sources, and if the sources can't fix it, tag it **(gate)** and give it a fix chip (rule 9). **Flag** checks never stop the output; a fail gets a fix chip.

Gate 0 runs on every output. Each framework adds its own gate: Gate 1 in the `icp-synthesis` skill, Gate 2 in `frameworks/positioning-messaging-hub.md`, Gate 3 in `frameworks/brand-voice-guide.md`.

### Gate 0: every output

| Check | Question | Type |
|---|---|---|
| G0.1 Question test | Read each line as a new hire with only this file. Would you ask "meaning what?" or "like what?" | Blocking |
| G0.2 No source chatter | Does a cell say where it came from ("the homepage says", "pulled from HubSpot", "inferred from the site") instead of citing it in the source caption? | Blocking |
| G0.3 One idea per cell | Does a cell need "and" twice, or run past about 25 words? | Blocking |
| G0.4 Multi-meaning words | Does a line lean on a word that means different things in different contexts (production, launch, vision, platform, solution, trigger)? Pin it down or swap it. | Blocking |
| G0.5 Findable blanks | Is a blank fillable from the inputs already given, or from one public search? Fill it, or say in the cell why not. | Flag |
| G0.6 Owner edits | Are there (inferred) lines the owner hasn't confirmed? They are the first thing to edit, from the owner's own knowledge, before anything is built on the file. | Flag |

Print the gate as a short table at the end of the run: check, pass or fail, the line that failed. Then record every chip in the file's Gate notes (rule 9).

## 9. Feedback chips: the gate on the page

A tag says a line is unconfirmed. A chip says what to do about it. Every gate fail, and a few strong passes, become chips: a short label on the page, with a note that opens on hover, focus or tap.

**Two kinds:**
- **Fix** (red outline): a gate check failed and the sources couldn't fix it. The note says what is wrong with this line, what to do, and the test to run.
- **Keep** (teal dot): a line that passes a check other outputs often fail. The note says why it passes, so the owner can do the same elsewhere. Two or three per page, never more: they teach by example.

**Writing a chip:**
- **Label:** two to four plain words naming the problem, not the rule number: "Use case is yours", "Not a category", "Hazy problem", "Promise, not capability", "Pair not like for like". Keep labels: "Clear and sticky", "Strong pillar".
- **Note, for a fix:** what is wrong with this line, in one sentence; what to do, in one sentence, with an example when the sources give one; then "Test:" and the gate question. Under about 60 words.
- **Note, for a keep:** why this line passes, then "Test:" and the gate question.
- One chip per cell at most. Put it on the cell it is about, or on the row label when it is about the whole row.
- Chips never name a reviewer, a workshop guest or a framework author. They speak for the brand's own file.

**Where chips live.** Chips are review notes, not brand content, but the `.md` is still the source. Each file ends with a Gate notes table, after Open tags:

```markdown
## Gate notes

| Where | Check | Chip | Label | Note |
|---|---|---|---|---|
| Use case: primary use case | H.1 | fix | Use case is yours | Describes what we do, not the job the buyer is trying to get done. ... Test: is this a job the buyer is trying to get done, in their words? |
| Value proposition: internal | H.10 | keep | Clear and sticky | ... |
```

Every **(gate)** tag in the file has a fix row here, and every row here is one chip on the page. The `brand-brain` skill never reads Gate notes as brand content.

**On the page,** every template carries the same chip markup, styles and script:

```html
<button type="button" class="fb" data-tip="Note text.">Label</button>
<button type="button" class="fb ok" data-tip="Note text.">Label</button>
```

The page header shows the count ("Gate: 4 to fix, 2 to keep") beside the open-tag count, and the legend explains the two chips. When a fix is resolved, rewrite the line, delete its Gate notes row, and the chip goes with it.

**Count check:** the fix rows in Gate notes equal the red chips on the page, and the keep rows equal the teal chips. If they differ, rebuild the page from the file.

## Tags used across the brain

| Tag | Means | Set by |
|---|---|---|
| **(inferred)** | A reasonable reading the sources don't state | Any command |
| **(vague)** | Failed the vagueness sweep and the sources can't fix it | Any command |
| **hypothesis** | ICP line with no customer data behind it | `/icp-dossier` at the hypothesis stage |
| **proxy** | Built from public posts or reviews about the market, not from the brand's own customers | `/icp-dossier` |
| **(gate)** | Failed a blocking gate check the sources couldn't fix. Has a fix chip with what to do | Any command, rule 8 |

The `brand-brain` skill treats every tagged line as unconfirmed: usable for direction, never stated as fact in copy.
