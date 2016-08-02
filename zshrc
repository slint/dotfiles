
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
plugins=(git ssh-agent httpie postgres github sudo tmux virtualenvwrapper colored-man-pages)
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshrc='$EDITOR ~/.zshrc'

alias s.='subl .'
alias http='noglob http'

alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Music player
alias mplay='playerctl play'
alias mpause='playerctl pause'
alias mstop='playerctl stop'

# pip
alias pip='noglob pip'
alias pia='noglob pip install .[all]'
alias pie='noglob pip install -e'
alias piea='noglob pip install -e .[all]'
alias pipfind='pip freeze | grep -i '

# Git
alias gs='git status'
alias gca='git commit --amend --date=now'
alias gr='git remote -v'
alias gru='git remote update'
alias gd='git diff -w'
alias gdc='git diff -w --cached'
alias gl='noglob git log -25 --all --graph --pretty=format:"%C(auto,yellow)%h%C(auto)%d %C(auto,reset)%s [%C(auto,blue)%<(6,trunc)%an%x08%x08%C(auto,reset), %C(auto,cyan)%ar%C(auto,reset)]"'
alias gpr='f() { git fetch -fu ${2:-upstream} refs/pull/$1/head:pr/$1; }; f'

alias ggmail='git config user.email a.ioannidis.pan@gmail.com'
alias gcern='git config user.email a.ioannidis@cern.ch'

# Virtualenv
alias v='workon'
alias v.deactivate='deactivate'
alias v.mk='mkvirtualenv'
alias v.rm='rmvirtualenv'
alias v.cd='cdvirtualenv'
alias v.set='setprojectdir'
alias v.add2virtualenv='add2virtualenv'
alias v.cdsitepackages='cdsitepackages'
alias v.lssitepackages='lssitepackages'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
