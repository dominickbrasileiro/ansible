#! /bin/zsh

for dir in */; do
    stow -D $dir
    stow $dir
done
