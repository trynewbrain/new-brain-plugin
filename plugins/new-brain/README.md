# New Brain for Claude Code

New Brain is one memory for all your work, shared by your AI tools. This plugin connects Claude Code to it.

What it adds:

- **New Brain's tools** (MCP server `brain`): `recall`, `remember`, `catch_up`, `search_sources` and `get_skill`, About you and the project pages as resources, and the `catch_me_up`, `what_did_we_decide` and `wrap_up` prompts. While you are setting up, the setup tools too.
- **Skills:**
  - `/new-brain:setup` fills New Brain with your projects, using the code from New Brain's setup page.
  - `/new-brain:projects` catches you up on a project when you start and keeps its decisions and status saved as you work.
  - `/new-brain:recall-and-remember` says when Claude reads from New Brain, when it saves, how it cites, and what it never saves.
  - `/new-brain:wrap-up` saves a session's decisions, status, preferences and lessons.
- **Session capture:** when a Claude Code session ends, a hook resumes it in a headless Claude in the background and runs `wrap-up`. Set `NEW_BRAIN_WRAP_UP=off` to turn this off. Its output goes to `$TMPDIR/new-brain-wrap-up.log`.

Claude picks the skills up by itself when they fit; you can also type them.

## Set up

1. Copy your brain's link from New Brain: Settings → Connected tools. It looks like `https://mcp.trynewbrain.com/b/<your-brain-id>`.
2. Install: `claude plugin marketplace add trynewbrain/new-brain-plugin`, then `claude plugin install new-brain@new-brain`.
3. Set the link: `/plugin configure new-brain@new-brain` in Claude Code, or `claude plugin configure new-brain@new-brain`.
4. In Claude Code, run `/mcp`, pick `plugin:new-brain:brain` and sign in. A browser opens on New Brain's sign-in page: choose which areas Claude can use and click Allow.

Then ask "what did we decide about pricing?" and Claude calls `recall`.

## Privacy

New Brain's privacy policy: https://trynewbrain.com/privacy
