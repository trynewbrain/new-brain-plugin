#!/bin/sh
# SessionEnd hook. A finished session can't call tools any more, so this resumes it in a headless Claude in the
# background and runs the wrap-up skill there, which saves what was decided with the brain's remember tool.
# It is off unless the person turns it on with NEW_BRAIN_WRAP_UP=on (R180). The headless run inherits
# NEW_BRAIN_WRAP_UP_ACTIVE, so its own session end does not start another one.
[ "${NEW_BRAIN_WRAP_UP:-off}" = on ] || exit 0
[ -n "$NEW_BRAIN_WRAP_UP_ACTIVE" ] && exit 0

input=$(cat)
session=$(printf '%s' "$input" | sed -n 's/.*"session_id"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p')
reason=$(printf '%s' "$input" | sed -n 's/.*"reason"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/p')
[ -z "$session" ] && exit 0
[ "$reason" = clear ] && exit 0

log="${TMPDIR:-/tmp}/new-brain-wrap-up.log"
NEW_BRAIN_WRAP_UP_ACTIVE=1 nohup claude -p "/new-brain:wrap-up" --resume "$session" \
  --allowedTools mcp__plugin_new-brain_brain__remember mcp__plugin_new-brain_brain__recall >>"$log" 2>&1 &
exit 0
