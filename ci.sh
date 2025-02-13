#!/bin/bash

./brew-install.sh
./install-hooks.sh
./stow.sh

zsh -c "clear; echo 'Installation complete!'"
