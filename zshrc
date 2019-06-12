
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
zstyle :omz:plugins:ssh-agent identities id_rsa

ZSH_THEME="amuse"
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
plugins=(git ssh-agent gpg-agent pip httpie postgres docker docker-compose
         fasd sudo tmux virtualenvwrapper colored-man-pages
         thefuck zsh-nvm zsh-syntax-highlighting alias-tips mix yarn extract
         nvm)

source $ZSH/oh-my-zsh.sh

autoload -U zmv

# ZSH Syntax Highlighting
source $ZSH_CUSTOM/plugins/zsh-syntax-highlightning/zsh-syntax-highlighting.zsh

# FZF Integration
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Aliases
[ -f $HOME/.zsh-aliases ] && source $HOME/.zsh-aliases

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

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

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# hub
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
