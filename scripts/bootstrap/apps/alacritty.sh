#!/bin/bash

tmp_install_dir=/tmp/alacritty-git

if [ -x "$(command -v alacritty)" ]; then
  echo 'INFO: `alacritty` already installed, skipping...'
  exit 1
fi

# Rust from: https://rustup.rs
curl https://sh.rustup.rs -sSf | sh

# Rust config
source $HOME/.cargo/env
rustup override set stable
rustup update stable

# Build Alacritty
if ! [ -d "$tmp_install_dir" ]; then
  git clone git@github.com:jwilm/alacritty.git $tmp_install_dir
fi

pushd $tmp_install_dir
cargo build --release
popd

