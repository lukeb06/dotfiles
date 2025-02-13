#!/bin/bash

# for each file in .hooks directory
for file in $(ls .hooks); do
  # create a symlink to the file in .git/hooks
  chmod +x .hooks/$file
  ln -s .hooks/$file .git/hooks/$file
done
