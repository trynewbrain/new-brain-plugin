---
name: setup
description: Set up New Brain for the user by filling it with their projects. Use when the user says "set up New Brain", gives a setup code like NB-7K4Q-2M, or has just connected New Brain and it is empty.
---

# Set up New Brain

The steps for this live on the New Brain server, not in this skill, so they are the same steps the setup page asks for and they can improve without a new plugin. This skill only gets you to them.

1. Get the setup code. The user may have given it already (it looks like `NB-7K4Q-2M`). If not, ask them to open New Brain, go to the setup page ("Set up with your AI tool") and tell you the code it shows. Codes stop working after 30 minutes without use; if one is refused, ask for a fresh one.
2. Call the New Brain `start_onboarding` tool with the code, before you look at anything else.
3. Its result has `instructions`: the steps written for the app you are running in. Follow them in order, including every place they say to stop and wait for the user. They come with safety rules; those rules come before every step.
4. If `start_onboarding` is not among your tools, the user has no setup open yet, or New Brain is not connected. Ask them to start setup on the New Brain page, then reconnect New Brain in this app (in Claude Code, run `/mcp`) and try again.

Never save anything to New Brain during setup except with the tools the steps name, and never before the user says OK.
