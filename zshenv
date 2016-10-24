# Basic bin paths
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts

# Heroku binary
export PATH=$PATH:/usr/local/heroku/bin

export EDITOR=vim
export WORKON_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Source

export SSH_KEY_PATH="~/.ssh/dsa_id"

export ULTRAHOOK_NAME=slint

export JAVA_HOME=/usr/lib/jvm/default-java
export ANDROID_HOME=/usr/local/lib/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools

# NPM in home
export NPM_CONFIG_PREFIX=$HOME/.npm-global
export PATH=$PATH:$HOME/.npm-global/bin
