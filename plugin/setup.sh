#!/usr/bin/env bash
# Adds the Marketing Brain module to a personal OS folder (default: the current
# folder). Mirrors "Add the module to your existing repo" in the README:
# gitignore block first, then the module files, then the CLAUDE.md section.
# Never overwrites a file that already exists.
set -e
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-$PWD}"
cd "$TARGET"

if [ ! -f CLAUDE.md ]; then
  echo "No CLAUDE.md here. Set up the personal OS first: /personal-os:setup"
  exit 1
fi

# 1. Customer data stays local: the gitignore block goes in BEFORE raw/voc/.
touch .gitignore
if ! grep -qx 'raw/voc/\*' .gitignore; then
  printf '\n' >> .gitignore
  cat "$ROOT/plugin/gitignore-block.txt" >> .gitignore
  gi="added"
elif ! grep -qx 'raw/strategy/\*' .gitignore; then
  # Older install: add only the strategy and performance lines.
  printf '\n' >> .gitignore
  sed -n '/strategy docs and performance data/,$p' "$ROOT/plugin/gitignore-block.txt" >> .gitignore
  gi="strategy and performance lines added"
else
  gi="already there"
fi

# 2. Module files, skipping anything that exists.
created=0; kept=0
for p in raw/voc raw/brand raw/strategy raw/performance wiki/brand projects/marketing-brain \
         frameworks/live-data-and-research.md \
         frameworks/positioning-messaging-hub.md \
         frameworks/brand-voice-guide.md frameworks/vocabulary.md \
         frameworks/messaging-hub-example.html \
         frameworks/icp-dossier-example.html frameworks/voice-guide-example.html; do
  while IFS= read -r -d '' src; do
    rel="${src#"$ROOT/"}"
    if [ -e "$rel" ]; then kept=$((kept+1)); continue; fi
    mkdir -p "$(dirname "$rel")"
    cp "$src" "$rel"
    created=$((created+1))
  done < <(find "$ROOT/$p" -type f -print0)
done

# 3. The Marketing Brain section in CLAUDE.md, once.
if grep -q '^## Marketing Brain' CLAUDE.md; then
  cm="already there"
else
  cat "$ROOT/plugin/claude-md-section.md" >> CLAUDE.md
  cm="added"
fi

echo "Folder: $TARGET"
echo ".gitignore block: $gi"
echo "Files created: $created. Existing files kept: $kept."
echo "CLAUDE.md Marketing Brain section: $cm"
[ -f .claude/personal-os.json ] || echo "Note: no .claude/personal-os.json here. Daily logs need the personal-os plugin: /personal-os:setup"
