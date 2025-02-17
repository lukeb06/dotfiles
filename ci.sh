#!/bin/bash

./scripts/brew-install.sh
./scripts/install-hooks.sh
./scripts/stow.sh

zsh -c "clear; echo 'Installation complete!'"
