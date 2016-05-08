
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
plugins=(git ssh-agent tmux virtualenvwrapper colored-man-pages)
source $ZSH/oh-my-zsh.sh

# Aliases
alias gs='git status'
alias gru='git remote update'
alias gd='git diff'
alias gl='git log --graph --oneline --decorate --date=relative --all'

alias v='workon'
alias v.cd='cdvirtualenv'
alias v.mk='mkvirtualenv'
alias v.rm='rmvirtualenv'
