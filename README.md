# My Dotfiles

It's for my own use, mostly for simple setup of my dev environment.

## Backup & copy

Backup and use Kitty config from this folder:
```bash
# Backup current config
mv ~/.config/kitty ~/.config/kitty.bak
mv ~/.config/fish ~/.config/fish.bak

# Apply config from this folder as symlink
ln -s /path/to/dotfiles/kitty ~/.config/kitty
ln -s /path/to/dotfiles/fish ~/.config/fish
```

## Tools
- [rsync](https://rsync.samba.org/): A fast, versatile, remote (and local) file-copying tool
- [homebrew](https://brew.sh/): The missing package manager for macOS
- [fzf](https://github.com/junegunn/fzf): A command-line fuzzy finder
- [fd](https://github.com/sharkdp/fd): fd is a simple, fast and user-friendly alternative to find
- [ripgrep](https://github.com/BurntSushi/ripgrep): ripgrep recursively searches directories for a regex pattern
- [nvm](https://github.com/nvm-sh/nvm): Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
- [gvm](https://github.com/moovweb/gvm): Go Version Manager
- [golangci-lint](https://golangci-lint.run/): Fast linters runner for Go
- [gh](https://cli.github.com/): GitHub’s official command line tool
    - `gh-copilot`: GitHub Copilot is your AI pair programmer
- [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/): Fontconfig is a library for configuring and customizing font access

## Terminal and plugins
- [kitty](https://sw.kovidgoyal.net/kitty/): A cross-platform, fast, feature full, GPU based terminal emulator
- [fish](https://fishshell.com/): The friendly interactive shell
    - `jorgebucaran/fisher`: A plugin manager for Fish
    - `ilancosman/tide@v6`: A modern prompt manager for the Fish shell
    - `edc/bass`: Make Bash utilities usable in Fish shell
    - `jgantunes/fish-gvm`: Fish plugin for GVM
    - `franciscolourenco/done`: Automatically receive notifications when long-running commands finish
    - `kenji-miyake/reload.fish`: Reload fish shell configuration
- [delta](https://github.com/dandavison/delta): A syntax-highlighting pager for git diff
- [commitizen](https://github.com/commitizen/cz-cli): The commitizen command line utility

## Notes

Template for `.github-gitconfig`:

```properties
[user]
	name = 'Your name'
	email = 'your-noreply-email'
```