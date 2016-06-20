
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
plugins=(git ssh-agent httpie postgres sudo tmux virtualenvwrapper colored-man-pages)
source $ZSH/oh-my-zsh.sh

# Aliases
alias zshrc='$EDITOR ~/.zshrc'

alias s.='subl .'

alias fd='find . -type d -name'
alias ff='find . -type f -name'

alias mplay='playerctl play'
alias mpause='playerctl pause'
alias mstop='playerctl stop'

# No quotes are needed when running eg. 'pip install .[all,tests]'
alias pip='noglob pip'
alias pia='noglob pip install .[all]'
alias pie='noglob pip install -e $*'
alias piea='noglob pip install -e .[all]'
alias pipfind='pip freeze | grep $*'

alias gs='git status'
alias gca='git commit --amend'
alias gr='git remote -v'
alias gru='git remote update'
alias gd='git diff -w $*'
alias gdc='git diff -w --cached'
alias gl='git --no-pager log -20 --oneline --all --graph --decorate'

alias ggmail='git config user.email a.ioannidis.pan@gmail.com'
alias gcern='git config user.email a.ioannidis@cern.ch'

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
