#!/bin/zsh
for dir in */; do
    echo "stowing $dir"
    stow -D $dir --target=$HOME
    stow $dir --target=$HOME
done
