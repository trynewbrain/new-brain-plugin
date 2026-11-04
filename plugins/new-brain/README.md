# New Brain

New Brain is one memory for all your work, shared by your AI tools. This plugin connects your AI tool to it: Claude (Claude Code, the web and the desktop app), ChatGPT and Codex. The steps below are for Claude Code.

What it adds:

- **New Brain's tools** (the server `brain`, at `https://mcp.trynewbrain.com/mcp`): `recall`, `remember`, `catch_up`, `search_sources` and `get_skill`, About you and the project pages, and the `catch_me_up`, `what_did_we_decide` and `wrap_up` prompts. While you are setting up, the setup tools too.
- **Skills:**
  - `/new-brain:setup` fills New Brain with your projects, using the code from New Brain's setup page.
  - `/new-brain:projects` catches you up on a project when you start and keeps its decisions and status saved as you work.
  - `/new-brain:recall-and-remember` says when Claude reads from New Brain, when it saves, how it cites, and what it never saves.
  - `/new-brain:wrap-up` saves a session's decisions, status, preferences and lessons when you ask.

Claude picks the skills up by itself when they fit; you can also type them.

## Set up

1. Install: `claude plugin marketplace add trynewbrain/new-brain-plugin`, then `claude plugin install new-brain@new-brain`.
2. In Claude Code, run `/mcp`, pick `plugin:new-brain:brain` and sign in. A browser opens on New Brain's sign-in page. If you have more than one brain, pick the one Claude should use; then choose which areas it can use and click Allow.

Everyone uses the same address; signing in is what ties it to your brain. To use a second brain as well, connect again and pick that one.

Then ask "what did we decide about pricing?" and Claude calls `recall`.

## What leaves your computer

- Only what Claude sends to New Brain's tools: your question when it looks something up, and the sentence it saves when it remembers something. Nothing is sent in the background.
- During setup, Claude first tells you what it would look at (folder names, READMEs and notes, recent commit messages, session titles) and waits until you say what it may use. It never opens passwords, keys or settings files, and nothing is saved until you say OK to the list.
- Things Claude guesses rather than hears from you wait in your To check list in New Brain until you keep them.
- You can see every connection, what it read and saved, and turn it off, in New Brain under Settings, AI tools.

## Privacy

New Brain's privacy policy: https://trynewbrain.com/privacy
