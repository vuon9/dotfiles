if status is-interactive
    # Commands to run in interactive sessions can go here
end

set paths /opt/homebrew/bin /opt/homebrew/sbin $HOME/go/bin $HOME/.bun/bin $HOME/.deno/bin $HOME/.cargo/bin /usr/local/bin $PATH
set -gx PATH $paths
set -gx FONTCONFIG_PATH $HOME/.config/fontconfig
set fish_greeting