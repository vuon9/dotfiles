# Dotfiles
It's for my own use, on 💻 MacOS just for quickly have my dev environment quick 🧑🏼‍💻.

It includes:

- Brew packages list
- Dotfiles
- Utility script `_script/*`

### Install packages from Brewfile

Install [homebrew](https://brew.sh/) and see all packages in `./Brewfile`

```bash
brew bundle --file=~/path/to/dotfiles/Brewfile
```
[Read more](https://kevinmgrimes.com/post/homebrew-macos/) and [also this](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f) to understand Brewfile usages and tips.

### Use dotfiles
After having all softwares installed, can use the dotfiles by symlinking them to the home directory.

To backup

```bash
mv ~/.gitconfig ~/.gitconfig.bak
```

Make symlinks from existing config

```bash
cd dotfiles
ln -s $(pwd)/.gitconfig ~/.gitconfig

# Then all config for all supported app
ln -s $(pwd)/.config ~/.config

# OR choosing apps one-by-one
# ln -s $(pwd)/.config/kitty ~/.config/kitty
# ln -s $(pwd)/.config/ghostty ~/.config/ghostty
```

Make current real config folder into dotfiles and symlink it back to its original place

```bash
cd dotfiles
sh _scripts/dotconfig_make.sh karabiner
```

Delete current symlink of config folder and remap

```bash
cd dotfiles
sh _scripts/dotconfig_remap.sh karabiner
```
