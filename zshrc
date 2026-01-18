export PATH="$HOME/bin:/usr/local/bin:$PATH"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
autoload -Uz compinit && compinit
eval "$(starship init zsh)"
alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
alias ls='eza'
alias ll='eza -lah --git'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY HIST_IGNORE_DUPS
source <(kubectl completion zsh)
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
eval "$(mise activate zsh)"
eval "$(uv generate-shell-completion zsh)"
