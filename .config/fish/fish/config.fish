if status is-interactive
    # Commands to run in interactive sessions can go here
end

set paths /opt/homebrew/bin /opt/homebrew/sbin $HOME/.bun/bin $HOME/.deno/bin $HOME/.cargo/bin /usr/local/bin $PATH
set -gx PATH $paths