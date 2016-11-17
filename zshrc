
# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom
plugins=(git ssh-agent pip httpie postgres docker docker-compose
         github fasd sudo tmux virtualenvwrapper colored-man-pages
         thefuck zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ZSH Syntax Highlighting
source $ZSH_CUSTOM/plugins/zsh-syntax-highlightning/zsh-syntax-highlighting.zsh

# FZF Integration
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# Aliases
[ -f $HOME/.zsh-aliases ] && source $HOME/.zsh-aliases
