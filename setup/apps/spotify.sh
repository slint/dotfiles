#!/bin/bash

if [ -x "$(command -v spotify)" ]; then
  echo 'INFO: `spotify` already installed, skipping...'
  exit 1
fi

# Found at https://www.spotify.com/ch-de/download/linux/

# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt update

# 4. Install Spotify
sudo apt -y install spotify-client
