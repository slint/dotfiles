# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
zstyle :omz:plugins:ssh-agent identities id_rsa

ZSH_THEME="amuse"
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
plugins=(git ssh-agent gpg-agent pip httpie postgres docker docker-compose
         sudo tmux virtualenvwrapper colored-man-pages ripgrep
         zsh-syntax-highlighting alias-tips extract zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh-async/async.zsh

autoload -U zmv

# ZSH Syntax Highlighting
source $ZSH_CUSTOM/plugins/zsh-syntax-highlightning/zsh-syntax-highlighting.zsh

# FZF Integration
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Aliases
[ -f $HOME/.zsh-aliases ] && source $HOME/.zsh-aliases
[ -f $HOME/.zsh-aliases-local ] && source $HOME/.zsh-aliases-local

# NVM
export NVM_DIR="$HOME/.nvm"
function load_nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}
# Initialize nvm asynchronously
async_start_worker nvm_worker -n
async_register_callback nvm_worker load_nvm
async_job nvm_worker sleep 0.1

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

# Add ruby to PATH
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi

#compdef pipenv
_pipenv() {
  eval $(env COMMANDLINE="${words[1,$CURRENT]}" _PIPENV_COMPLETE=complete-zsh  pipenv)
}
if [[ "$(basename ${(%):-%x})" != "_pipenv" ]]; then
  autoload -U compinit && compinit
  compdef _pipenv pipenv
fi

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# hub
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# https://github.com/zsh-users/zsh-autosuggestions/issues/351
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)

# preload git completions for usage in aliases
_git 2>/dev/null
