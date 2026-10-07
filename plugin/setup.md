---
description: Add the Marketing Brain to your personal OS. Adds the brand brain folders (raw/voc, raw/brand, wiki/brand), the frameworks, the project file, and a Marketing Brain section in CLAUDE.md. Never overwrites your files.
---

# /marketing-brain:setup

Add the Marketing Brain module to the personal OS in this folder.

1. **Check the folder.** Any folder works. A personal OS (a `CLAUDE.md` with `.claude/personal-os.json`) is recommended, not required: without one, the setup script starts a minimal `CLAUDE.md`, and everything in the Marketing Brain still works. Say in one line what the **personal-os** plugin would add (daily logs, memory, its own commands) and continue; never stop for it. If `wiki/brand/` already exists, say that existing files are kept, then continue.
   **Their own folders.** If `.claude/folders.json` exists, the module uses it: run `bash "${CLAUDE_PLUGIN_ROOT}/.claude/hooks/folder-map.sh" show` and say in one line where the module's folders will land. If there is no map and the folder holds folders of the user's own, offer one before the script runs, for this module's slots (`brand-wiki` for `wiki/brand/`, `voc` for `raw/voc/`, `brand-inputs` for `raw/brand/`, `strategy`, `performance`) and the parent slots they sit in (`raw`, `wiki`, `projects`). Same steps as "Your own folders" in `/personal-os:start`: match by purpose, show the table, ask (reroute or standard layout), and on reroute write only the slots that differ to `.claude/folders.json` with the shell (`mkdir -p .claude` first; keep any keys already there). A module slot that is not mapped follows its parent: with `raw` mapped to `Inbox`, `voc` is `Inbox/voc/`.
2. **Run the setup script** with the shell and show its output:
   `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "<this folder's absolute path>"`
   It adds the `.gitignore` block for customer data before anything lands in `raw/voc/`, mirrors those rules onto any renamed folders, copies the module files into the mapped folders without overwriting, and appends the Marketing Brain section to `CLAUDE.md` once. If bash is not available (Windows without Git Bash), point to `winget install Git.Git` and stop.
3. **Explain the next step** in three lines: fill the inputs using the checklist in `projects/marketing-brain/marketing-brain.md`; `raw/voc/` stays on this machine (gitignored); every exercise takes `example` to try it on Acme Deals first, starting with `/marketing-brain:icp-dossier example`.
4. If the folder is a git repo, show `git status --short` and ask whether to commit ("Add the Marketing Brain module"). Wait for the answer and commit only on a yes. If nobody can answer (a non-interactive run), do not commit.
