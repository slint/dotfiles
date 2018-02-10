# Basic bin paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/usr/games
export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts

# Heroku binary
export PATH=$PATH:/usr/local/heroku/bin

export EDITOR=vim
export VISUAL=code
export WORKON_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Source

export SSH_KEY_PATH=$HOME/.ssh/id_rsa.pub

export ULTRAHOOK_NAME=slint

export LPASS_CLIPBOARD_COMMAND="xclip -in -selection clipboard"

# alias-tips exceptions
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="g _"
export LPASS_AGENT_TIMEOUT=36000

# Android
export JAVA_HOME=/usr/lib/jvm/default-java
export ANDROID_HOME=/usr/local/lib/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools

