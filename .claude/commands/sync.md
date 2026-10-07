---
description: Bring the brand brain's .md files and their pages back in step after edits made by hand, in VS Code or on a published page. Checks all three outputs.
argument-hint: [example]
---

# /sync

Run the `brand-sync` skill across the whole brain (`.claude/skills/brand-sync/SKILL.md` in the repo, or the marketing-brain plugin's copy). Use it after hand edits Claude wasn't told about. Edits made through Claude sync on their own.

- **No argument:** `wiki/brand/` and the pages in `projects/marketing-brain/outputs/`.
- **`example`:** `drafts/example-brain/` and the `example-` pages.

1. For each output, compare the .md with its local page and, if this session can reach it, the published artifact. Skip a file still at `status: template`.
2. List the differences per file as `file | section | the .md says | the page says`. No differences: say "in sync" for that file.
3. The user picks the winner per line; the .md wins when they don't choose. Write the winners to the .md, rebuild each changed page, and republish where you can.
4. Flag any page built in the old format (a voice blend, a traits table with more than four columns) and offer to rebuild it from the .md in the current structure.
5. Run the alignment pass and the review-and-trim step from the skill.
6. End with one line per file: in sync, updated, or needs the user.
