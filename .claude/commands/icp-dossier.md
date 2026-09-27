---
description: Marketing Brain exercise 1. Build your ICP from voice-of-customer data in raw/voc/, into wiki/brand/icp.md plus a shareable dossier page.
argument-hint: [example]
---

# /icp-dossier

Exercise 1 of the Marketing Brain. Turn the customer data in `raw/voc/` into an ICP: the rich avatar, the segments below it, their exact words, their pains and desires.

Read `.claude/skills/icp-synthesis/SKILL.md` in full first and follow its method. This command says where things come from and where they go.

## Mode

- **No argument:** use the user's own data in `raw/voc/`, excluding `example/`. Write to `wiki/brand/icp.md` and `projects/marketing-brain/outputs/icp-dossier.html`.
- **`example`:** use `raw/voc/example/` (Acme Deals, fictional). Write to `drafts/example-brain/icp.md` and `projects/marketing-brain/outputs/example-icp-dossier.html`. Never write example data into `wiki/brand/`.

## 1. Check the inputs

List what is in the source folder: files, row counts, and which of the inputs from `raw/voc/README.md` are present. Read `raw/voc/review-urls.md`.

- **Read only `raw/voc/`.** Never read `raw/brand/` for this exercise.
- **No customer data at all** (own-data mode): stop. Say the ICP can't be built from guesses, and offer two routes: add data now (point to `raw/voc/README.md`), or run `/icp-dossier example` to learn the method on Acme Deals.
- **Thin data** (a list with no qualitative files, or quotes with no list): say what is missing and what it will cost (for example: "no revenue column, so the avatar is ranked by order count and tagged (inferred)"). Then continue.
- **Review URLs:** fetch each with whatever web tool this session has (WebFetch is built into Claude Code). Keep reviews verbatim with their URL as source. If a page blocks the fetch, say which one and move on; do not guess its contents.

## 2. Synthesize

Follow the seven steps in the `icp-synthesis` skill. The rules that matter most here:

- Every line traces to a file in `raw/voc/` or a review URL. Anything that is a reasonable reading but not stated gets **(inferred)**.
- **Never** generate a metric, a customer, or a quote. Missing means blank.
- Quotes stay verbatim: grammar, slang, and typos intact. Each carries its source: name, company, file.
- No email addresses anywhere in the output.

## 3. Write the ICP

If the target file's `status` is not `template`, show what would change and ask before replacing anything.

Fill the template section by section. Set `status: draft`, today's date in `last_updated` (`date +%F`), and every source file in `sources`. List every (inferred) line again under "Open (inferred) tags".

## 4. Build the dossier page

Write the HTML dossier: one self-contained page with inline CSS, readable on a laptop and a phone. Top to bottom: the rich avatar with a short description and 3 or 4 key numbers from the data, "their words" as quote cards with sources, desires and pains side by side, the segments table, and a methodology footer naming the sources. Mark (inferred) lines visibly. No em dashes.

## 5. Feedback prompts

End with the two questions the workshop checks live, answered from what you wrote:
- **Who is it for,** by company type and role? Is that specific enough to pick them out of a crowd?
- **Is the problem in the customer's own words,** or in yours?

Then:
- The two file paths.
- The number of open (inferred) tags, and the one input that would resolve the most of them.
- **Next:** `/positioning-messaging`.
