# Ridiculous dotfiles

## Installation

We're going straight GNU/Linux up in this repo, so we'll be using [`stow`](https://www.gnu.org/software/stow/manual/stow.html):

```bash
# First clone the repo in the home dir
git clone git@github.com:slint/dotfiles.git "~/.dotfiles"
cd ~/.dotfiles

# Symlink all the dotfiles from the parent dir (i.e. home) to this
# directory.
stow --dotfiles --adopt .

# Diff the changes
git diff

# Apply them
git reset --hard
```

