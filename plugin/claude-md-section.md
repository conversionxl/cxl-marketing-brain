
---

## Marketing Brain

<!-- Added by /marketing-brain:setup. Edit freely. -->

**`wiki/brand/` is this repo's tone of voice, messaging and positioning documentation.** Read it before writing anything customer-facing: `icp.md` for who, `positioning-messaging.md` for what to say, `voice-guide.md` and `vocabulary.md` for how to say it.

| Folder | What goes in it |
|---|---|
| `raw/voc/` | Voice of customer: customer exports, reviews, tickets, call notes, survey answers. Gitignored except the README and the Acme Deals example. `/personal-os:ingest` leaves files here alone, and moves matching dumps from the top of `raw/` in. |
| `raw/brand/` | The brand's own words: URLs, on-brand and off-brand samples, existing guides. Committed, so nothing confidential. `/personal-os:ingest` leaves files here alone, and moves matching dumps from the top of `raw/` in. |
| `raw/strategy/` | Where the business is going: strategy and pivot docs, internal positioning and messaging docs, confidential brand books. Gitignored. Read for direction, never as evidence of who buys. |
| `raw/performance/` | Evidence of what works: GA4, lead-gen, conversion, order, ad, email and social performance, including dated snapshots from connected tools. Gitignored. |
| `wiki/brand/` | The brand brain: `icp.md`, `positioning-messaging.md`, `voice-guide.md`, `vocabulary.md`. A fixed contract later workshops read. |

**Every exercise asks for research, documents and live data first** (`frameworks/live-data-and-research.md`): drop files into the folders, paste them into the chat for the command to file, or let it fetch them through a connected tool (Google Drive, Notion, ClickUp, Asana; a CRM, store, GA4, social or email platform). Surveys, user research and message tests go in `raw/voc/research/`; live customer pulls in `raw/voc/live/`.

The brand brain is four files in `wiki/brand/` that Claude reads before it writes anything customer-facing. Three exercises fill them, in order, because each feeds the next:

| Exercise | Command | Reads | Writes | Framework |
|---|---|---|---|---|
| 1. ICP | `/marketing-brain:icp-dossier` | `raw/voc/` only | `wiki/brand/icp.md`, `projects/marketing-brain/outputs/icp-dossier.html` | `icp-synthesis` skill (Nick Christensen) |
| 2. Positioning and messaging | `/marketing-brain:positioning-messaging` | ICP, `raw/brand/`, `raw/voc/` | `wiki/brand/positioning-messaging.md`, `projects/marketing-brain/outputs/messaging-hub.html` | `frameworks/positioning-messaging-hub.md` |
| 3. Brand voice | `/marketing-brain:brand-voice` | ICP, hub, `raw/brand/`, `raw/voc/` | `wiki/brand/voice-guide.md`, `wiki/brand/vocabulary.md`, `projects/marketing-brain/outputs/voice-guide.html` | `frameworks/brand-voice-guide.md`, `frameworks/vocabulary.md` |
| Optional: campaign | Ask for "an example campaign from my ICP" | The brain | `projects/marketing-brain/outputs/campaign.html` | `ad-copy` skill (Nick Christensen) |

Each command takes `example` to run on Acme Deals, the fictional brand in `raw/voc/example/` and `raw/brand/example/`. Example runs write to `drafts/example-brain/`, never to `wiki/brand/`.

**Rules for the brand brain:**
- **The (inferred) rule.** Every line in `wiki/brand/` traces to a scraped page, a file in `raw/brand/`, or a customer quote in `raw/voc/`. Any line that doesn't is tagged **(inferred)**. Metrics, customers, quotes, and case studies are never generated: missing means blank. A file with open tags is not finished.
- **Customer words stay separate from brand words.** The ICP reads only `raw/voc/`, so the brand's own copy never leaks into "their words". Customer quotes are verbatim, grammar and slang intact.
- **The paths are a contract.** Later workshops, starting with Campaign Engine, read `wiki/brand/` by these exact file names. Never rename or move them.
- **When two files disagree:** wording follows `voice-guide` > `vocabulary` > `positioning-messaging` > `icp`; facts follow the reverse. Say when you hit a disagreement.
- **Brand voice vs your voice.** Copy written for the brand follows `wiki/brand/` (the `brand-brain` skill loads it). Messages the owner writes as themselves follow the `my-voice` skill.
- **Customer data stays local.** Never copy an email address from `raw/voc/` into any other file.

Credits: the ICP workflow and the Acme Deals data are Nick Christensen's ([ship-icp-ads-automate-monitoring](https://github.com/nickyc1/ship-icp-ads-automate-monitoring), MIT). The positioning, messaging, and voice frameworks credit their author in `frameworks/`.
