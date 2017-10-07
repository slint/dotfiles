
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
plugins=(git ssh-agent gpg-agent pip httpie postgres docker docker-compose
         github fasd sudo tmux virtualenvwrapper colored-man-pages
         thefuck zsh-nvm zsh-syntax-highlighting alias-tips mix yarn)

source $ZSH/oh-my-zsh.sh

autoload -U zmv

# ZSH Syntax Highlighting
source $ZSH_CUSTOM/plugins/zsh-syntax-highlightning/zsh-syntax-highlighting.zsh

# FZF Integration
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Aliases
[ -f $HOME/.zsh-aliases ] && source $HOME/.zsh-aliases

# NVM
export NVM_DIR="/home/alex/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# added by travis gem
[ -f /home/alex/.travis/travis.sh ] && source /home/alex/.travis/travis.sh

# Add ruby to PATH
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

#compdef pipenv
_pipenv() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _PIPENV_COMPLETE=complete-zsh  pipenv)
}
if [[ "$(basename ${(%):-%x})" != "_pipenv" ]]; then
  autoload -U compinit && compinit
  compdef _pipenv pipenv
fi

