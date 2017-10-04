# Ridiculous dotfiles

> By the seventh day God had finished the work he had been doing; so on the
> seventh day he rested from all his work...

## Installation

Currently only a lightly "supervised" installations is possible, since digging
through all of the different packages/installations and their flags was too
time-consuming...

To get started on a fresh Debian-based machine (with no display manager):

```shell
sudo apt install git
# Use HTTPS since there's probably no .ssh folder yet...
git clone https://github.com/slint/dotfiles.git
bash scripts/setup.sh

# Follow instructions of various applications as they get installed...
```
