---
name: wrap-up
description: Save this session's decisions, project status, preferences and lessons to New Brain. Use when a work session ends, or when the user says "wrap up", "save this", "remember what we decided".
---

# Wrap up into New Brain

1. Go back over this session. List what is worth keeping:
   - decisions the user made ("we'll go with…", "let's not…"),
   - project status changes ("the migration is done", "beta moves to 4 Nov"),
   - preferences the user stated ("I want numbers in pounds"),
   - lessons you both learned ("the staging DB needs a reset after seeding").
     Leave out small talk, code you can read in the repo, and anything already saved with `remember` in this session.
2. Save each item with the New Brain `remember` tool:
   - one clear sentence that makes sense on its own a month from now,
   - `kind`: decision, status, preference, fact or lesson,
   - `project` when you know it,
   - `stated_by: "user"` only for what the user said directly; `"ai"` for what you inferred (it goes to the user's To check list),
   - `replaces` set to a memory id when the item corrects something `recall` returned,
   - `session_ref`: this session's id.
3. If `remember` returns `possible_replaces`, check them; if one is the same fact, save again with `replaces` set to its id.
4. If a result has `limit_reached: true`, stop and tell the user its message.
5. Tell the user in one short list what you saved. If nothing was worth saving, say so in one line.

The brain also has this as the `wrap_up` prompt.
