#!/bin/bash

if [ -x "$(command -v gitter)" ]; then
  echo 'INFO: `gitter` already installed, skipping...'
  exit 1
fi

google-chrome https://update.gitter.im/linux64/latest

read -n1 -r -p "When the download finished press any key..." key

sudo dpkg -i ~/Downloads/gitter_*.deb && rm ~/Downloads/gitter_*.deb
