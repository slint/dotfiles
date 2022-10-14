# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
setopt HIST_IGNORE_SPACE
zstyle :omz:plugins:ssh-agent identities id_rsa

ZSH_THEME="amuse"
plugins=(git ssh-agent gpg-agent pip httpie postgres docker docker-compose
         sudo tmux colored-man-pages ripgrep
         zsh-syntax-highlighting alias-tips extract zsh-autosuggestions)

DISABLE_MAGIC_FUNCTIONS=true
source $ZSH/oh-my-zsh.sh

source $HOME/.zsh-async/async.zsh

autoload -U zmv

# ZSH-specific config
unsetopt autocd
unsetopt beep
unsetopt nomatch

# FZF Integration
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Aliases
[ -f $HOME/.zsh-aliases ] && source $HOME/.zsh-aliases
[ -f $HOME/.zsh-aliases-local ] && source $HOME/.zsh-aliases-local

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
eval "$(pyenv init -)"
pyenv virtualenvwrapper

# pipx
export PIPX_DEFAULT_PYTHON="$HOME/.pyenv/versions/3.8.12/bin/python"

# gh-cli
eval "$(gh completion -s zsh)"

# invenio-cli
eval "$(_INVENIO_CLI_COMPLETE=source_zsh invenio-cli)"

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
DISABLE_MAGIC_FUNCTIONS=true

# https://github.com/zsh-users/zsh-autosuggestions/issues/351
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste)

# preload git completions for usage in aliases
_git 2>/dev/null

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
