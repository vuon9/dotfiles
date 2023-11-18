#!/bin/bash

# Use rsync to sync the dotfiles
whitelist=("fish" "kitty")
whitelistFiles=(".gitconfig")
sourceDir="$HOME/.config"

echo "Started syncing folders in $sourceDir"
for item in "${whitelist[@]}"; do
    destDir=".config/$item"
    rsync -a --delete "$sourceDir/$item" "$destDir"
    echo "Synced dir: $sourceDir/$item -> $destDir"
done
for item in "${whitelistFiles[@]}"; do
    cp -f "$HOME/$item" "$item"
    echo "Synced file: $HOME/$item -> $item"
done
echo "Everything is synced now.\n"