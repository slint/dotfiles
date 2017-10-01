#!/bin/bash

if [ -x "$(command -v code)" ]; then
  echo 'INFO: `code` already installed, skipping...'
  exit 1
fi

# Visual Studio Code installation from: https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions

# Install key
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Install repo
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update
sudo apt -y install code
