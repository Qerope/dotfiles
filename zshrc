export PATH="$HOME/bin:/usr/local/bin:$PATH"
source ~/.zplugin/bin/zplugin.zsh
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
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
