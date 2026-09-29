---
description: Marketing Brain exercise 2. Scrape your pages and fill the positioning and messaging hub (Lion Words canvas) into wiki/brand/positioning-messaging.md, plus a shareable HTML canvas.
argument-hint: [example]
---

# /positioning-messaging

Exercise 2 of the Marketing Brain. Fill Diane Wiredu's positioning and messaging canvas from the ICP, your own published pages, and your brand guides. The output is one table, her Lite Positioning & Messaging Canvas and Messaging House merged into a single grid with the Messaging House colour code, in Markdown and as an HTML page.

Read `frameworks/lion-words-positioning-messaging-hub.md` in full first. It defines the canvas, every field, and the (inferred) rule.

## Mode

- **No argument:** own data. ICP from `wiki/brand/icp.md`, pages from `raw/brand/urls.md`, guides from `raw/brand/guides/`, customer words from `raw/voc/` (excluding `example/`). Write to `wiki/brand/positioning-messaging.md` and `projects/marketing-brain/outputs/positioning-messaging.html`.
- **`example`:** Acme Deals. ICP from `drafts/example-brain/icp.md`, brand material from `raw/brand/example/`, customer words from `raw/voc/example/`. Write to `drafts/example-brain/positioning-messaging.md` and `projects/marketing-brain/outputs/example-positioning-messaging.html`. Never write example data into `wiki/brand/`.

## 1. Check the inputs

- **ICP:** if it is still a template (or missing in example mode), stop and point to `/icp-dossier`. Positioning without a buyer is guesswork.
- **URLs:** read `raw/brand/urls.md`. Fetch each page with whatever web tool this session has (WebFetch is built into Claude Code) and save it to `raw/brand/scraped/<short-slug>.md`, with the URL and today's date at the top. Skip any URL already scraped today. If a fetch fails, say which and continue.
- **No URLs and no guides:** say the hub will be thin, mostly (inferred), and ask whether to continue or add URLs first.

## 2. Fill the canvas

Fill the Markdown file's `## Canvas` table row by row, top to bottom, keeping the exact structure of `wiki/brand/positioning-messaging.md`: the same sections, the same row labels, three content columns. It is one grid, Diane's Lite canvas and Messaging House merged, so there is no separate section under it. Never add, drop, rename, or reorder a row. Follow the Markdown conventions in the framework (single-value rows in column 1, labelled pairs in the Customer rows, `<br>` for lists inside a cell).

- **Pink anchor cells are bold.** Alternatives, sub-problems, the big idea, the internal value proposition, value themes, and pillar statements are the short lines copy lifts directly. Write them tight, one line each, and bold them. Nothing else in a cell is bold except a short lead-in label.
- **Customer** starts from the ICP. Do not re-derive the buyer.
- **Competitive alternatives:** consider doing nothing, doing it by hand, hiring someone, and competitors. The three a buyer would most recognise go in the three columns, with limitations directly below each. Any others go on the "Other alternatives" line under the table.
- **Problem in buyer language, both VOC validation rows:** verbatim quotes from `raw/voc/` with their source. Never paraphrased.
- **Columns run down:** struggle 1 sits under sub-problem 1; pillar 1's capability, benefit, outcome, quotes, features, and proof all sit in column 1, and so on.
- **Proof points** come only from the scraped pages, guides, or `raw/voc/`. None found means the cell reads "Blank." and the blank is a finding.
- **Differentiators** each name the alternative from the canvas they beat.

### The (inferred) tag: do not skip

This is the rule that makes the hub trustworthy. Apply it to every cell before writing the file.

- Every cell ends with its source in brackets: `(icp.md)`, `(scraped/pricing.md)`, `(Jordan Reyes, reviews.md)`.
- Any claim, or part of a claim, that no source states gets **(inferred)** in bold, right after that claim, inside the same cell. A cell can hold sourced and inferred parts side by side; tag only the inferred part.
- Never generate a metric, a customer, a quote, or a case study. Missing means blank, not inferred.
- Every (inferred) tag is listed again under "Open (inferred) tags" with its row and column (for example "Sub-problems, column 3"), plus what would resolve it.
- The HTML canvas carries the same tags, in the same cells, as visible badges. The count of open tags in the HTML header must equal the count in the Markdown list.

If the target file's `status` is not `template`, show what would change and ask before replacing anything. Set `status: draft`, `last_updated` (`date +%F`), and `sources`, and replace `COMPANY` in the heading with the brand name.

## 3. Build the HTML canvas

Copy `frameworks/lion-words-hub-canvas.html` to the output path and fill it from the Markdown file you just wrote. The shell already reproduces the merged grid, its merged cells, and the Messaging House colour code; do not change its rows, columns, or cell classes.

- Replace every `COMPANY` with the brand name, and fill the header line (status, date, open tag count).
- Fill each `<td>` from the matching Markdown cell, keeping its class: `anchor` (pink), `facing` (grey), or none (white). Bold Markdown text goes in an `anchor` cell as plain text; the colour does the work.
- Sources go in `<span class="src">`, (inferred) tags in `<span class="inf">inferred</span>`, and a blank cell gets `blank` added to its class, with the text "Blank." plus the reason.
- Fill the notes under the grid (other alternatives, anything the proof row reveals), the open (inferred) tags list, and the sources footer.
- Content must match the Markdown exactly: same claims, same sources, same tags. No em dashes.

Then offer, in one line, to publish the HTML as a private Artifact so it can be shared. Publish only on a yes.

## 4. Feedback prompts

End with the three questions the workshop checks live, each answered honestly from what you wrote:
- **Are the alternatives real?** Would a buyer recognise them as what they do today?
- **Could a competitor claim the same differentiators?** Name any that fail this test.
- **Does each pillar have proof, or is it blank?**

Then run the draft through the fluff matrix in `frameworks/brand-voice-guide.md`, starting with the pink anchor cells, and name the two lines most in need of a rewrite, with the quadrant each falls in.

Then:
- The two file paths and the pages scraped.
- The number of open (inferred) tags.
- **Take home:** test alternatives and differentiators against real sales conversations; add proof, never invent it.
- **Next:** `/brand-voice`.
