
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
plugins=(git ssh-agent httpie postgres sudo tmux virtualenvwrapper colored-man-pages)
source $ZSH/oh-my-zsh.sh

# Aliases
alias s.='subl .'

alias gs='git status'
alias gca='git commit --amend'
alias gr='git remote -v'
alias gru='git remote update'
alias gd='git diff -w $*'
alias gdc='git diff -w --cached'
alias gl='git --no-pager log -20 --oneline --all --graph --decorate'
<<<<<<< HEAD

alias v='workon $*'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv $*'
alias v.rm='rmvirtualenv $*'
alias v.cd='cdvirtualenv $*'
alias v.set='setprojectdir $*'
alias v.add2virtualenv='add2virtualenv $*'
alias v.cdsitepackages='cdsitepackages $*'
alias v.lssitepackages='lssitepackages $*'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
>>>>>>> 0022433... update tmux and zsh
