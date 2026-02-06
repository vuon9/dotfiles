# Dotfiles
It's for my own use, on 💻 MacOS just for quickly have my dev environment quick 🧑🏼‍💻.

## Pre-requisites
Install [homebrew](https://brew.sh/) and see all packages in `./Brewfile`

### To install softwares
To have the terminal, shell, and command-line tools configured, run the following command:

```bash
brew bundle --file=~/path/to/dotfiles/Brewfile
```
[Read more](https://kevinmgrimes.com/post/homebrew-macos/) and [also this](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f) to understand Brewfile usages and tips.

### To use dotfiles
After having all softwares installed, can use the dotfiles by symlinking them to the home directory.

```bash
# Backup current config
mv ~/.gitconfig ~/.gitconfig.bak
mv ~/.config/kitty ~/.config/kitty.bak

# Apply config from this folder as symlink
ln -s /path/to/dotfiles/.gitconfig ~/.gitconfig
ln -s /path/to/dotfiles/kitty ~/.config/kitty

# Addtional in case using Go
mv ~/.golangci.yml ~/.golangci.yml.bak
ln -s /path/to/dotfiles/.golangci.yml ~/.golangci.yml
```

## List of softwares
- [kitty](https://sw.kovidgoyal.net/kitty/): A cross-platform, fast, feature full, GPU based terminal emulator
- [delta](https://github.com/dandavison/delta): A syntax-highlighting pager for git diff
- [fd](https://github.com/sharkdp/fd): To search files and directories by name
- [ripgrep](https://github.com/BurntSushi/ripgrep): To search files and directories by content
- [fzf](https://github.com/junegunn/fzf): A command-line fuzzy finder

### Language version management tools
- [nvm](https://github.com/nvm-sh/nvm): Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
- [gvm](https://github.com/moovweb/gvm): Go Version Manager
- [brew-php-switcher](https://github.com/philcook/brew-php-switcher): Use alias `phpvm` to switch between PHP versions installed via Homebrew