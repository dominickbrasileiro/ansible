#!/bin/zsh

for dir in */; do
    echo $dir
    stow -D $dir
    stow $dir
done
