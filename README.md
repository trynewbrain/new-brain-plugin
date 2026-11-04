# New Brain plugin

[New Brain](https://trynewbrain.com) is one memory for all your work, across every project. Your AI tools use it too: what you decide, where each project stands, your preferences and the lessons you learn, each with the source it came from.

This repository holds the New Brain plugin for Claude Code. It connects Claude to your brain and adds skills to set New Brain up, keep each project's memory current, and recall and save as you work.

## Install in Claude Code

```
claude plugin marketplace add trynewbrain/new-brain-plugin
claude plugin install new-brain@new-brain
```

Then run `/mcp` in Claude Code, pick `plugin:new-brain:brain` and sign in to New Brain. Everyone uses the same address; signing in picks your brain. More in [plugins/new-brain/README.md](plugins/new-brain/README.md).

You need a New Brain account. New Brain is in early access: [trynewbrain.com](https://trynewbrain.com).

## Privacy

The plugin sends New Brain only what Claude looks up or saves for you. It runs no code on your computer. During setup Claude asks what it may look at before it looks, and nothing is saved until you say OK. It never reads or sends passwords, keys or settings. Privacy policy: https://trynewbrain.com/privacy

## Licence

MIT. See [LICENSE](LICENSE).
