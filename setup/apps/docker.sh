#!/bin/bash

# Docker official installation from: https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

if [ -x "$(command -v docker)" ]; then
  echo 'INFO: `docker` already installed, skipping...'
  exit 1
fi
 

# Remove older versions
sudo apt -y remove docker docker-engine docker.io

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update
sudo apt -y install docker-ce

# Install docker-compose through pipsi
pipsi install docker-compose

# Allow current user to use docker without "sudo"
sudo usermod -a -G docker $USER
