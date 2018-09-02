export PATH="$HOME/bin:/usr/local/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
alias ll='ls -lah'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
export PATH="$HOME/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
nvm() {
  unset -f nvm
  . "$NVM_DIR/nvm.sh"
  nvm "$@"
}
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
