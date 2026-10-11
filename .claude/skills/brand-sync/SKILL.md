---
name: brand-sync
description: Keep the brand brain's .md files and their pages in step. Use whenever the ICP, positioning and messaging hub, voice guide or vocabulary is edited, by request in chat, by an edit to a file in wiki/brand/ or drafts/example-brain/, or when the user says they changed a published dossier, hub or voice guide page.
---

# Brand sync

The four files in `wiki/brand/` (`icp.md`, `positioning-messaging.md`, `voice-guide.md`, `vocabulary.md`) are the brand brain. Claude and every other AI tool read them, never the pages. Each page in `projects/marketing-brain/outputs/` is a view of one file:

| File | Page |
|---|---|
| `icp.md` | `icp-dossier.html` |
| `positioning-messaging.md` | `messaging-hub.html` |
| `voice-guide.md` and `vocabulary.md` | `voice-guide.html` |

Example runs use `drafts/example-brain/` and the `example-` pages. With `.claude/folders.json`, read every folder at its mapped name.

## An edit to the brain

1. **Write the .md first.** Make the change in the file, never only on the page.
2. **Check it** against `frameworks/quality-rules.md` (with the plugin and no local copy, or an older one, `${CLAUDE_PLUGIN_ROOT}/frameworks/quality-rules.md`): compact, no summary layer, the vagueness sweep, the fluff check on example lines, the tags, and the quality gate (rule 8) on the lines the edit touched. A fix that resolves a chip deletes its Gate notes row; a new fail adds one. Keep the file's framework structure (`frameworks/positioning-messaging-hub.md`, `frameworks/brand-voice-guide.md`, the `icp-synthesis` skill).
3. **Rebuild the page** from the .md, keeping its `<style>` block and layout. The page never holds a line the .md doesn't. Then count the tags, blank cells, and Gate notes rows against chips in both: the numbers must match.
4. **Republish** if the page was published as an artifact and this session can reach it. Otherwise say the local page is updated and the published one is not.
5. **Alignment pass.** Read the other brand files for lines the edit now contradicts (for example a new sub-problem with no matching pillar, or a voice trait the vocabulary breaks). List each as `file | line | conflict | proposed fix`, and apply only the fixes the user approves, one by one. Facts follow `icp` > `positioning-messaging` > `vocabulary` > `voice-guide`; wording follows the reverse.
6. **Close** with the review-and-trim step from the quality rules, for the lines this edit touched.

## Edits made on the page

When the user says they edited a published page (or pasted page text):

1. Read the page: the published artifact if this session has the Artifact tool, otherwise the local HTML file.
2. Compare it with its .md, line by line. List every difference as `file | section | the .md says | the page says`.
3. The user picks which wins for each line. When they don't choose, the .md wins.
4. Write the winners to the .md, then follow "An edit to the brain" from step 2.

Never copy a page edit into the .md without the user's yes: a page can hold an old version.

## When it can't run

- **No folder** (claude.ai chat, Cowork without a folder): give the updated .md as a file with the page, and say where it goes (`wiki/brand/`).
- **Hand edits Claude wasn't told about** (in VS Code, or on claude.ai) stay out of sync until someone runs `/marketing-brain:sync`. Say so once if you notice a page older than its .md.
