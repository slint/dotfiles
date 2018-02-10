#!/bin/bash

if [ -x "$(command -v xcape)" ]; then
  echo 'INFO: `xcape` already installed, skipping...'
  exit 1
fi

# Fetch dependecies
sudo apt install -y libx11-dev libxtst-dev libxi-dev

# Get from repository and build
git clone https://github.com/alols/xcape.git /tmp/xcape
pushd /tmp/xcape
make
sudo make install
sudo rm -rf /tmp/xcape
