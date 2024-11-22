#!/bin/zsh
for dir in */; do
    echo "unstowing $dir"
    stow -D $dir --target=$HOME
done
