#!/usr/bin/env bash
# Brings the Marketing Brain module in a folder up to this copy's version.
# Run from a fresh copy (the updated plugin, or a fresh clone or ZIP of the repo):
#   bash <fresh copy>/plugin/update.sh [--dry-run] [folder]
# Refreshes the files the module owns: frameworks, example pages and data, the
# input READMEs, and the exercise commands and skills where the folder has its
# own copies. Never touches your brand brain (a wiki/brand/ file is refreshed
# only while it is still a template), raw/ inputs, projects, logs or CLAUDE.md.
# Every file it replaces is backed up first.
set -e
DRY=0
if [ "${1:-}" = "--dry-run" ]; then DRY=1; shift; fi
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-$PWD}"
cd "$TARGET"
if [ "$ROOT" = "$(pwd)" ]; then echo "Run this from a fresh copy of the module, not from the folder you are updating."; exit 1; fi
VERSION="$(sed -n 's/.*"version": *"\([^"]*\)".*/\1/p' "$ROOT/.claude-plugin/plugin.json" | head -1)"
BACKUP="drafts/marketing-brain-backup-$(date +%F)"
added=0; updated=0; same=0; kept=0

sync_file() { # $1 = path relative to the module root
  local rel="$1" src="$ROOT/$1"
  if [ ! -e "$rel" ]; then
    echo "  add     $rel"; added=$((added+1))
    [ $DRY = 1 ] || { mkdir -p "$(dirname "$rel")"; cp "$src" "$rel"; }
  elif cmp -s "$src" "$rel"; then
    same=$((same+1))
  else
    echo "  update  $rel"; updated=$((updated+1))
    [ $DRY = 1 ] || { mkdir -p "$BACKUP/$(dirname "$rel")"; cp "$rel" "$BACKUP/$rel"; cp "$src" "$rel"; }
  fi
}

# 1. Files the module owns: always refreshed.
for p in frameworks/live-data-and-research.md frameworks/positioning-messaging-hub.md \
         frameworks/brand-voice-guide.md frameworks/vocabulary.md \
         frameworks/icp-dossier-example.html frameworks/messaging-hub-example.html \
         frameworks/voice-guide-example.html \
         raw/voc/README.md raw/brand/README.md wiki/brand/README.md \
         raw/voc/example raw/brand/example; do
  while IFS= read -r -d '' src; do sync_file "${src#"$ROOT/"}"; done < <(find "$ROOT/$p" -type f -print0)
done

# 2. Commands and skills: only where this folder keeps its own copies (the repo
#    route). With the plugin, they update with the plugin itself.
for p in .claude/commands/icp-dossier.md .claude/commands/positioning-messaging.md \
         .claude/commands/brand-voice.md .claude/commands/update-brain.md \
         .claude/skills/icp-synthesis .claude/skills/brand-brain .claude/skills/ad-copy; do
  [ -e .claude/commands/icp-dossier.md ] || break
  while IFS= read -r -d '' src; do sync_file "${src#"$ROOT/"}"; done < <(find "$ROOT/$p" -type f -print0)
done

# 3. The brand brain: a file is refreshed only while it is still a template.
for f in icp positioning-messaging voice-guide vocabulary; do
  rel="wiki/brand/$f.md"
  if [ -e "$rel" ] && ! grep -q '^status: template' "$rel"; then
    kept=$((kept+1))
  else
    sync_file "$rel"
  fi
done

echo
echo "Marketing Brain $VERSION -> $TARGET"
[ $DRY = 1 ] && echo "Dry run: nothing changed."
echo "Added: $added. Updated: $updated. Already current: $same. Brand brain files kept (yours): $kept."
[ $DRY = 0 ] && [ $updated -gt 0 ] && echo "Old versions of updated files: $BACKUP/"
exit 0
