# Basic bin paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/games
export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts

# Pager
export PAGER="less -FX"

# Go bin
export PATH=$PATH:/usr/local/go/bin

# Docker services
export PATH=$PATH:$HOME/.docker-services/bin

# Heroku binary
export PATH=$PATH:/usr/local/heroku/bin

export EDITOR=vim
export VISUAL="code --wait"
export WORKON_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Source
export VIRTUALENVWRAPPER_WORKON_CD=0

export SSH_KEY_PATH=$HOME/.ssh/id_rsa.pub

export ULTRAHOOK_NAME=slint

export LPASS_CLIPBOARD_COMMAND="xclip -in -selection clipboard"

# alias-tips exceptions
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="g _"
export LPASS_AGENT_TIMEOUT=36000

# Android
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export ANDROID_HOME=/usr/local/lib/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools

# Pipenv (ignore some warnings)
export PIPENV_VERBOSITY=-1
