---
description: Marketing Brain exercise 4. Update the module to the latest version (the plugin, or a fresh copy of the repo), refresh its frameworks and templates, and keep your brand brain.
argument-hint: [check]
---

# /update-brain

Exercise 4 of the Marketing Brain. The module improves while you use it: in the workshop, the facilitator updates it live from your feedback on exercises 1 and 2. This brings your copy up to date without touching your work.

**What it changes:** the files the module owns: the frameworks, the example pages and Acme Deals data, the input READMEs, and the exercise commands and skills where this folder keeps its own copies. A `wiki/brand/` file is refreshed only while it is still a template.
**What it never changes:** your filled brand brain in `wiki/brand/`, anything else in `raw/`, `projects/`, daily logs, memory, or `CLAUDE.md`. Every file it replaces is backed up to `drafts/marketing-brain-backup-<date>/` first.

`check` shows what would change and stops.

## 1. Which route

- **Plugin** (this session has `${CLAUDE_PLUGIN_ROOT}` set): the commands and skills update with the plugin itself. Ask whether they have already pulled the new version. If not, walk them through it and stop until they have:
  - Claude app or Cowork: **Plugins → Add → Manage marketplaces → ⋮** next to `cxl-marketing-brain` → **Check for updates**, then update **marketing-brain**.
  - Terminal or VS Code: `/plugin marketplace update cxl-marketing-brain`, then `/plugin` and update **marketing-brain**.
  - Then start a new session in this folder, so it loads the new version, and run `/marketing-brain:update-brain` again.
  The fresh copy is `${CLAUDE_PLUGIN_ROOT}`.
- **Repo** (no plugin): fetch a fresh copy into the scratchpad or a temp folder, never into this folder:
  `git clone --depth 1 https://github.com/conversionxl/cxl-marketing-brain "<temp>/cxl-marketing-brain"`
  No git: download the ZIP from https://github.com/conversionxl/cxl-marketing-brain (**Code → Download ZIP**), unzip it outside this folder, and use that path.

Say the version you are updating to: `"version"` in `<fresh copy>/.claude-plugin/plugin.json`.

## 2. Preview

Run with the shell and show the output:
`bash "<fresh copy>/plugin/update.sh" --dry-run "<this folder's absolute path>"`

If this folder is a git repo, also run `git status --short`. Uncommitted changes to a file the update replaces: name them, and offer to commit first ("Before Marketing Brain update").

Then say in plain words what will change, file by file, and that the brand brain files marked "kept" are theirs and stay as they are. In `check` mode, stop here.

## 3. Update

Ask whether to go ahead. On a yes, run the same command without `--dry-run` and show the output. If bash is not available (Windows without Git Bash), point to `winget install Git.Git` and stop.

## 4. What is new

- Repo route with git: `git diff --stat`, then a one-line summary of what changed in each updated command or framework.
- Plugin route, or no git: compare each updated file with its backup in `drafts/marketing-brain-backup-<date>/` and summarise the same way.
- If a framework or template changed the shape of a brain file (a new section, a new row), say which of the user's `wiki/brand/` files now lacks it and which exercise to re-run to fill it. Never edit their brain file here.

## 5. Finish

- If this folder is a git repo, show `git status --short` and offer to commit ("Update the Marketing Brain module to <version>"). Commit only on a yes.
- Delete the temp clone if you made one.
- **Next:** re-run whichever exercise the changes touch, or carry on with the take-home list in `projects/marketing-brain/marketing-brain.md`.
