#!/bin/bash

./scripts/brew-install.sh
./scripts/install-hooks.sh
./scripts/stow.sh

./scripts/install-neovim-config.sh
./scripts/install-tmux-config.sh

zsh -c "clear; echo 'Installation complete!'"
