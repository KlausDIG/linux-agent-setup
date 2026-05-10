# ===== Project Agent Config (Linux) =====
# Vollständige Config siehe README.md
# Platzhalter: USERNAME → tatsächlichen Linux-Username ersetzen

# Homebrew
eval "$(/home/USERNAME/.linuxbrew/bin/brew shellenv)"

# zoxide
if command -v zoxide > /dev/null 2>&1; then
  eval "$(zoxide init bash)"
  alias cd=z
fi

# starship
if command -v starship > /dev/null 2>&1; then
  eval "$(starship init bash)"
fi

# fnm Node Manager
export PATH="/home/USERNAME/.local/share/fnm:$PATH"
if command -v fnm > /dev/null 2>&1; then
  eval "$(fnm env --use-on-cd)"
fi

# Node + pnpm + bun + deno
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Go
export PATH="/home/USERNAME/.linuxbrew/opt/go/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Rust
export CARGO_HOME="$HOME/.cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv > /dev/null 2>&1; then
  eval "$(pyenv init - bash)"
fi

# rbenv
if command -v rbenv > /dev/null 2>&1; then
  eval "$(rbenv init - bash)"
fi

# pipx + local bin
export PATH="$HOME/.local/bin:$PATH"

# Kubernetes
if command -v kubectl > /dev/null 2>&1; then
  source <(kubectl completion bash) 2>/dev/null
  alias k=kubectl
fi

# Aliases
if command -v eza > /dev/null 2>&1; then
  alias ls=eza
  alias ll="eza -la"
else
  alias ll="ls -la"
fi
if command -v bat > /dev/null 2>&1; then alias cat=bat; fi
if command -v lazygit > /dev/null 2>&1; then alias lg=lazygit; fi
if command -v fzf > /dev/null 2>&1; then alias f=fzf; fi
if command -v thefuck > /dev/null 2>&1; then eval "$(thefuck --alias)"; fi

# ===== End Agent Config =====
