#!/bin/bash

rm -rf .git/hooks
mkdir -p .git/hooks

# for each file in .hooks directory
for file in $(ls .hooks); do
  # create a symlink to the file in .git/hooks
  echo "Creating symlink for $file"
  chmod +x .hooks/$file
  ln -s .hooks/$file .git/hooks/$file
done
