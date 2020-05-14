#!/bin/bash

# Display/Windows manager, drivers, UNIX utils, etc...
sudo apt update && sudo apt -y upgrade
sudo apt -y install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings \
  i3 i3blocks ubuntu-drivers-common mesa-utils mesa-utils-extra compton xorg \
  xserver-xorg nautilus gnome-terminal volumeicon-alsa intel-microcode \
  build-essential software-properties-common curl wget ncdu lynx htop \
  wmctrl cmake libfreetype6-dev libfontconfig1-dev xclip fonts-font-awesome \
  ttf-mscorefonts-installer gnupg-agent gnupg2 pinentry-curses scrot tree \
  imagemagick rofi ranger thunderbird evince fonts-dejavu ruby ruby-dev \
  python-setuptools udisks python-gobject python-yaml libgio2.0 \
  gobject-introspection libgtk2.0-0 libnotify4 gettext gir1.2-notify-0.7 \
  confget

# Python
sudo apt update
sudo apt install -y make libssl-dev zlib1g-dev libbz2-dev \
  libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
  xz-utils tk-dev libffi-dev liblzma-dev python-openssl

sudo apt install -y python3.6-dev libffi-dev libxml2-dev libxslt1-dev libjpeg8-dev \
  zlib1g-dev libcairo2-dev libfreetype6-dev
sudo pip install -U pip
sudo pip3 install -U pip
pip install --user virtualenv virtualenvwrapper


# pyenv
if ! [ -x "$(command -v pyenv)" ]; then
  echo 'INFO: installing `pyenv`...'
  curl https://pyenv.run | bash
fi

# pipx
if ! [ -x "$(command -v pipx)" ]; then
  echo 'INFO: installing `pipx`...'
  python3 -m pip install --user pipx
fi

declare -a pipx_apps=("httpie" "pgcli" "unp" "cookiecutter" "seashells" "thefuck")
for pa in "${pipx_apps[@]}"; do pipx install "$pa"; done

# Zsh
if ! [ -x "$(command -v zsh)" ]; then
  echo 'INFO: installing `zsh`...'
  sudo apt -y install zsh
  sudo chsh -s /bin/zsh $USER
fi

# fzf
if ! [ -x "$(command -v fzf)" ]; then
  echo 'INFO: installing `fzf`...'
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
fi

# Docker
(. ./apps/docker.sh)

# Fonts
fonts_folder="$HOME/.local/share/fonts"
if [ ! -d $fonts_folder ]; then
  git clone https://github.com/powerline/fonts.git /tmp/fonts-git --depth=1
  (. /tmp/fonts-git/install.sh)
fi

# Alacritty
(. ./apps/alacritty.sh)

# xcape
(. ./apps/xcape.sh)

# Dotfiles from: slint/dotfiles
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone git@github.com:slint/dotfiles.git ~/.dotfiles
fi
(. ~/.dotfiles/install)

# NVM
if ! [ -x "$(command -v nvm)" ]; then
  echo 'INFO: installing `nvm`...'
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
fi

# Playerctl
if ! [ -x "$(command -v playerctl)" ]; then
  echo 'INFO: installing `playerctl`...'
  wget -q -O /tmp/playerctl.deb https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb
  sudo dpkg -i /tmp/playerctl.deb
fi

# JQ
if ! [ -x "$(command -v jq)" ]; then
  echo 'INFO: installing `jq`...'
  wget -q -O ~/.local/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64
  chmod +x ~/.local/bin/jq
fi

# Other applications
(. ./apps/google-chrome.sh)
(. ./apps/spotify.sh)
(. ./apps/vscode.sh)
(. ./apps/gitter.sh)
(. ./apps/keybase.sh)
