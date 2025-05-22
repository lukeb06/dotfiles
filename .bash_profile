#!/usr/bin/env bash
. "$HOME/.aftman/env"


source ~/.zshconfig/main.zsh

eval "$(starship init bash)"

source ~/.zshconfig/path.zsh

alias l="lsd -lAhF && pwd"
