#!/usr/bin/env bash
# PostToolUse hook (Write, Edit, MultiEdit). When Claude edits a brand brain
# file, tell it to rebuild the matching page and run the brand-sync checks.
# The .md is the source; the page is a view of it. Prints nothing for any
# other file. Marketing Brain module only: not a shared cohort hook.
#
# Usage: brand-sync.sh [plugin]
#   plugin: called from the plugin's hooks.json. Skips when the project
#   registers its own copy, so the reminder never shows twice.

ROOT="${CLAUDE_PROJECT_DIR:-$PWD}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ "${1:-}" = "plugin" ] && [ -f "$ROOT/.claude/settings.json" ] \
  && grep -q 'brand-sync.sh' "$ROOT/.claude/settings.json" 2>/dev/null; then
  exit 0
fi

# shellcheck source=/dev/null
. "$HERE/lib-folders.sh" 2>/dev/null || exit 0

input="$(cat)"
if command -v jq >/dev/null 2>&1; then
  file="$(printf '%s' "$input" | jq -r '.tool_input.file_path // .tool_input.path // empty' 2>/dev/null)"
else
  file="$(printf '%s' "$input" | sed -n 's/.*"file_path"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p' | head -1)"
fi
[ -n "$file" ] || exit 0
case "$file" in /*) ;; *) file="$ROOT/$file" ;; esac

brand="$(pos_dir "$ROOT" brand-wiki)"
example="$(pos_dir "$ROOT" drafts)/example-brain"
dir="$(dirname "$file")"
name="$(basename "$file")"

case "$dir" in
  "$brand") prefix="" ;;
  "$example") prefix="example-" ;;
  *) exit 0 ;;
esac

case "$name" in
  icp.md) page="icp-dossier.html" ;;
  positioning-messaging.md) page="messaging-hub.html" ;;
  voice-guide.md|vocabulary.md) page="voice-guide.html" ;;
  *) exit 0 ;;
esac

out="$(pos_rel "$ROOT" projects)/marketing-brain/outputs/${prefix}${page}"
rel="${file#"$ROOT"/}"
msg="Brand brain edited: $rel. Follow the brand-sync skill now: check the edit against frameworks/quality-rules.md, rebuild $out from the .md (the .md is the source, the page never holds a line the .md doesn't), republish it if it was published as an artifact, then offer the alignment pass on the other brand files."

if command -v jq >/dev/null 2>&1; then
  jq -n --arg m "$msg" '{hookSpecificOutput:{hookEventName:"PostToolUse",additionalContext:$m}}'
else
  esc="$(printf '%s' "$msg" | sed 's/\\/\\\\/g; s/"/\\"/g')"
  printf '{"hookSpecificOutput":{"hookEventName":"PostToolUse","additionalContext":"%s"}}\n' "$esc"
fi
