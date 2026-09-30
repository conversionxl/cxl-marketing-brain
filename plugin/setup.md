---
description: Add the Marketing Brain to your personal OS. Adds the brand brain folders (raw/voc, raw/brand, wiki/brand), the frameworks, the project file, and a Marketing Brain section in CLAUDE.md. Never overwrites your files.
---

# /marketing-brain:setup

Add the Marketing Brain module to the personal OS in this folder.

1. **Check the folder.** It needs a personal OS: a `CLAUDE.md`, ideally with `.claude/personal-os.json`. If there is no `CLAUDE.md`, stop and tell the user to install the **personal-os** plugin and run `/personal-os:setup` first. If `wiki/brand/` already exists, say that existing files are kept, then continue.
2. **Run the setup script** with the shell and show its output:
   `bash "${CLAUDE_PLUGIN_ROOT}/plugin/setup.sh" "<this folder's absolute path>"`
   It adds the `.gitignore` block for customer data before anything lands in `raw/voc/`, copies the module files without overwriting, and appends the Marketing Brain section to `CLAUDE.md` once. If bash is not available (Windows without Git Bash), point to `winget install Git.Git` and stop.
3. **Explain the next step** in three lines: fill the inputs using the checklist in `projects/marketing-brain/marketing-brain.md`; `raw/voc/` stays on this machine (gitignored); every exercise takes `example` to try it on Acme Deals first, starting with `/marketing-brain:icp-dossier example`.
4. If the folder is a git repo, show `git status --short` and ask whether to commit ("Add the Marketing Brain module"). Wait for the answer and commit only on a yes. If nobody can answer (a non-interactive run), do not commit.
