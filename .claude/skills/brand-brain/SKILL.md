---
name: brand-brain
description: Read the brand brain in wiki/brand/ before writing anything customer-facing. Apply automatically to ads, landing pages, emails, social posts, blog posts, sales copy, product copy, campaign briefs, and any other text a customer or prospect will read, and whenever a later workshop command (such as Campaign Engine) needs the ICP, positioning, messaging, or voice.
---

# Brand brain

The brand brain is four files in `wiki/brand/`. Load them before the first line of any customer-facing copy. Copy written without them is generic by default.

Read the `.md` files, never the HTML pages in `projects/marketing-brain/outputs/`: the pages are views of the files and can lag behind them. Any command in any repo that needs the ICP, messaging or voice reads these files first and asks the user only for what is missing, so the brand is defined once.

## Load

1. Read `wiki/brand/README.md`, then `icp.md`, `positioning-messaging.md`, `voice-guide.md`, and `vocabulary.md`.
2. Check each file's `status` in the frontmatter:
   - `template`: empty. Say which file is empty, point to the exercise that fills it (`/icp-dossier`, `/positioning-messaging`, `/brand-voice`), and ask whether to continue without it. Never fill the gap from your own assumptions.
   - `draft`: usable. Mention in one line that it still has open tags, and do not lean on a tagged line as fact.
3. **Tagged lines are unconfirmed.** Lines tagged (inferred), (vague), (gate), hypothesis or proxy (see `frameworks/quality-rules.md`) can steer direction, but never become a claim, a number or a promise in copy. An ICP at the hypothesis stage means the whole buyer is a guess: say so before writing.
   - `final`: use it.
4. **Skip the Gate notes table** at the end of each file. It holds review notes for the owner, not brand content.

## Apply

- **Who and why** come from `icp.md`. Write to the rich avatar unless told otherwise.
- **What to say** comes from `positioning-messaging.md`: the owned key message (OKM), the value proposition, the pillars and their proof points. Use only proof points that are in the file.
- **Lines to reuse first** are the hub's anchor rows: alternative solutions, sub-problems, the owned key message, the internal value proposition, the value themes, and the pillar statements (`frameworks/positioning-messaging-hub.md` marks them). Lift them into headlines and openers before writing new lines. The customer-facing value proposition is the one line already written for a customer: use it as is.
- **How to say it** comes from `voice-guide.md`: the persona, the traits matrix, the tone profile for this context, the writing principles (cadence, always / never), the Do and Don't pairs in the traits matrix, and the signature element.
- **Which words** come from `vocabulary.md`: use owned words and allowed jargon, never a banned buzzword, and prefer the customer's word where the two differ. Section 5 of `voice-guide.md` (Phrases to use, Phrases to avoid) is the short version of the same lists. `vocabulary.md` is the full list and the authority: if the two disagree, follow `vocabulary.md` and say which line differs, so the guide gets fixed.
- **When files disagree:** wording follows `voice-guide` > `vocabulary` > `positioning-messaging` > `icp`; facts follow the reverse. Say when you hit a disagreement.

## Check before returning

- Every claim, number, customer, and quote is in the brain or in `raw/`. Never invent one.
- Run the draft through the fluff lens in `frameworks/brand-voice-guide.md`. Anything in blandspeak, empty charm, or jargon jungle gets rewritten.
- Check it against every Always and Never line in `voice-guide.md` and every banned word in `vocabulary.md`.
- No em dashes.

## Scope

The brand brain governs copy written for the brand. Messages the owner writes as themselves (a Slack reply, an email to a colleague) follow the `my-voice` skill instead.
