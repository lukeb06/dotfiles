#!/bin/bash

rm -rf .git/hooks
mkdir -p .git/hooks

for file in $(ls .hooks); do
  echo "Installing hook: $file"
  cp .hooks/$file .git/hooks/$file
  chmod +x .git/hooks/$file
done
