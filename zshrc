export PATH="$HOME/bin:/usr/local/bin:$PATH"
source ~/.zplugin/bin/zplugin.zsh
zplugin light zsh-users/zsh-autosuggestions
zplugin light zdharma/fast-syntax-highlighting
autoload -Uz compinit && compinit
PROMPT='%F{blue}%~%f %# '
alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm
  . "$NVM_DIR/nvm.sh"
  nvm "$@"
}
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
pyenv() {
  unset -f pyenv
  eval "$(command pyenv init -)"
  pyenv "$@"
}
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY HIST_IGNORE_DUPS
source <(kubectl completion zsh)
eval "$(/opt/homebrew/bin/brew shellenv)"
