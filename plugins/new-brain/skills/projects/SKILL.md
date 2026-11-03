---
name: projects
description: Keep a project's memory in New Brain current. Use when the user starts or returns to work on a project ("where were we?", "jump back in", "catch me up on…"), before planning next steps, and whenever a decision is made or the project's status changes.
---

# Keep a project current in New Brain

## Work out the project

New Brain files every memory under a project, and a memory saved without one is hard to find later. Use the name New Brain already has:

- Read the `brain://projects` resource if you can, or call `catch_up` with no project, to see the project names it knows.
- Match the user's words, the repository name or the folder to one of those names. If two could fit, or none does, ask the user once and use their answer for the rest of the session.
- A new project is fine when the user says it is new. Use the name they give it.

## At the start

1. Call `catch_up` with `project` (and `since` if the user gave a time, such as "since Monday"), before you answer about the project or plan next steps.
2. Summarise in a few lines: where it stands, what changed and when, open questions, next steps. Use only what came back and name the source and date of each point.
3. If the user asks about a detail it doesn't cover, call `recall` with their question and the same `project`.
4. If nothing came back, say New Brain has nothing on it yet. Do not guess.

## While you work

Save with `remember`, always with `project` set, right after:

- a decision ("we'll go with…", "let's not…"): `kind: "decision"`, with `why` when they gave a reason;
- a change in where things stand ("the migration is done", "beta moves to 4 Nov"): `kind: "status"`;
- a lesson you both learned ("the staging database needs a reset after seeding"): `kind: "lesson"`.

One clear sentence per item that still makes sense a month from now. Leave out what the repository already shows (code, commit history) and small talk. If an item changes something `recall` or `catch_up` returned, pass that memory's id in `replaces`.

## At the end

Use the `wrap-up` skill to save anything from the session that is not saved yet.

If a result has `limit_reached: true`, stop and tell the user its message.
