#!/bin/bash

# Use rsync to sync the dotfiles
whitelist=("fish" "kitty" "gh" "gh-copilot" "fontconfig")
whitelistFiles=(".gitconfig" ".golangci.yml")
sourceDir="$HOME/.config"

destDir=".config"

echo ""
echo "Syncing dotfiles from $sourceDir to $destDir:\n"
for item in "${whitelist[@]}"; do
    rsync -a --delete "$sourceDir/$item" "$destDir"
    echo "* $sourceDir/$item -> DONE"
done
for item in "${whitelistFiles[@]}"; do
    cp -f "$HOME/$item" "$item"
    echo "* $HOME/$item -> DONE"
done

echo "\nEverything is synced now.\n"