# Linux Agent Setup

Vollständige Einrichtung eines autonomen Agent-Entwicklungsumfeldes auf Linux (Ubuntu/Debian).

## Quick Start

```bash
# 1. Git Config
git config --global user.name "Project Autonomous Agent"
git config --global user.email "agent@local.local"

# 2. Homebrew installieren
git clone --depth=1 https://github.com/Homebrew/brew ~/.linuxbrew
eval "$(~/.linuxbrew/bin/brew shellenv)"

# 3. Tools installieren
brew install git node jq htop tree ripgrep fd fzf tldr bat eza tmux wget curl pandoc
brew install zoxide starship duf gdu lazygit neovim thefuck
brew install fnm pnpm volta yarn
brew install go pyenv rbenv jenv pipx poetry
brew install kubectl helm ansible lazydocker

# 4. Rust (separat, nicht via Brew)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.cargo/env

# 5. Shell Config anpassen (siehe dotfiles/.bashrc)
# 6. VS Code: Extensions (siehe scripts/install-vscode-extensions.sh)
# 7. Auto-Commit Daemon aktivieren (siehe systemd/)
```

## Struktur

```
.
├── README.md
├── SKILL.md                  # Hermes Skill-Definition
├── dotfiles/
│   └── .bashrc              # Shell-Konfiguration
├── scripts/
│   ├── auto-commit-daemon.py
│   └── install-vscode-extensions.sh
├── systemd/
│   └── agent-autocommit.service
└── docs/
    └── PITFALLS.md
```

## Sicherheit

- Token NIEMALS in Logs/Chats speichern
- `gh auth login --with-token` nutzen (Keychain-Speicherung)
- SSH-Keys ohne Passphrase für Agent-Automatisierung

## Lizenz

MIT
