#!/bin/bash

if [ -x "$(command -v keybase)" ]; then
  echo 'INFO: `keybase` already installed, skipping...'
  exit 1
fi

# Kyebase from https://keybase.io/docs/the_app/install_linux
wget -q -O /tmp/keybase.deb https://prerelease.keybase.io/keybase_amd64.deb
sudo dpkg -i /tmp/keybase.deb
sudo apt-get install -f
rm /tmp/keybase.deb

# Install Keybase
run_keybase

