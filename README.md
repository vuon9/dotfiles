# My Dotfiles
It's for my own use, on 💻 MacOS, mostly for simple setup of my 🧑🏼‍💻 dev environment.

## Pre-requisites
Install [homebrew](https://brew.sh/) and see all packages in `./Brewfile`

### Clone this repository
```bash
git clone https://github.com/vuon9/dotfiles.git
```

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
mv ~/.config/fish ~/.config/fish.bak
mv ~/.gitconfig ~/.gitconfig.bak
mv ~/.config/.wezterm.lua ~/.config/.wezterm.lua.bak

# Apply config from this folder as symlink
ln -s /path/to/dotfiles/fish ~/.config/fish
ln -s /path/to/dotfiles/.gitconfig ~/.gitconfig
ln -s /path/to/dotfiles/.wezterm.lua ~/.config/.wezterm.lua

# Addtional in case using Go
mv ~/.golangci.yml ~/.golangci.yml.bak
ln -s /path/to/dotfiles/.golangci.yml ~/.golangci.yml
```

### Customized CommitMono font
I use [CommitMono](https://github.com/eigilnikolajsen/commit-mono) but I customized it a bit to make it more readable with my personal preference. Can find the font in `./fonts` folder.
1. To install the font, just double click on the font file and click `Install Font` button.
2. To use it in editor, terminal, etc. need to set it 'CommitMono-Vng' as the font name.

## List of softwares
- [wezterm](https://wezfurlong.org/wezterm/): A GPU-accelerated cross-platform terminal emulator and multiplexer written by @wez and implemented in Rust
- [fish](https://fishshell.com/): The friendly interactive shell
    - `jorgebucaran/fisher`: A plugin manager for Fish
    - `ilancosman/tide@v6`: A modern prompt manager for the Fish shell
    - `edc/bass`: Make Bash utilities usable in Fish shell
    - `jgantunes/fish-gvm`: Fish plugin for GVM
    - `franciscolourenco/done`: Automatically receive notifications when long-running commands finish
    - `kenji-miyake/reload.fish`: Reload fish shell configuration
- [delta](https://github.com/dandavison/delta): A syntax-highlighting pager for git diff
- [fzf](https://github.com/junegunn/fzf): A command-line fuzzy finder
- [fd](https://github.com/sharkdp/fd): fd is a simple, fast and user-friendly alternative to find
- [ripgrep](https://github.com/BurntSushi/ripgrep): ripgrep recursively searches directories for a regex pattern

### Language version management tools
- [nvm](https://github.com/nvm-sh/nvm): Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
- [gvm](https://github.com/moovweb/gvm): Go Version Manager
- [brew-php-switcher](https://github.com/philcook/brew-php-switcher): Use alias `phpvm` to switch between PHP versions installed via Homebrew