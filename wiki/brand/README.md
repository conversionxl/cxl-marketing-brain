# wiki/brand/

Your brand brain: four files Claude reads before it writes anything customer-facing. They ship as empty templates. The three Marketing Brain exercises fill them, and you finish them at home.

**These paths are a fixed contract.** Later workshops, starting with Campaign Engine, read these exact files. Do not rename or move them; add to them.

| File | What it holds | Filled by | Framework |
|---|---|---|---|
| `icp.md` | Who buys: the rich avatar, the segments, their words, pains and desires | Exercise 1, `/icp-dossier` | Nick Christensen's ICP workflow (`.claude/skills/icp-synthesis/`) |
| `positioning-messaging.md` | Where you stand and what you say: the positioning and messaging hub | Exercise 2, `/positioning-messaging` | `frameworks/lion-words-positioning-messaging-hub.md` |
| `voice-guide.md` | How you sound: persona, traits, cadence, always / never, this-not-that | Exercise 3, `/brand-voice` | `frameworks/brand-voice-guide.md` |
| `vocabulary.md` | Which words: owned words, allowed jargon, banned buzzwords, customer words | Exercise 3, `/brand-voice` | `frameworks/vocabulary.md` |

## When two files disagree

- **Wording** (how to say it) follows: `voice-guide.md` > `vocabulary.md` > `positioning-messaging.md` > `icp.md`.
- **Facts** (what is true about the buyer, the market, the product) follow the reverse: `icp.md` > `positioning-messaging.md` > `vocabulary.md` > `voice-guide.md`.

So a customer quote in `icp.md` settles what the buyer cares about, and `voice-guide.md` settles how you phrase it. When Claude spots a disagreement, it says so rather than picking one silently.

## The (inferred) rule

Every line is traceable to a source: a scraped page, a file in `raw/brand/`, or a customer quote in `raw/voc/`. Any line Claude cannot trace is tagged **(inferred)**. Metrics, customers, quotes, and case studies are never generated: missing means blank.

A file with open (inferred) tags is not finished. For each tag, confirm it and add the source, or cut it.

## Status

Each file's frontmatter carries `status`: `template` (untouched), `draft` (filled in the workshop, tags still open), or `final` (every tag resolved). Update `last_updated` whenever you change it.
