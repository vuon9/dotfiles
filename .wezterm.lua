-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- Startup commands
wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return {
    -- OS specific tweaks
    enable_wayland = false,
    enable_scroll_bar = true,
    default_prog = { '/opt/homebrew/bin/fish' },
    adjust_window_size_when_changing_font_size = false,
    window_decorations = "TITLE | RESIZE | MACOS_FORCE_ENABLE_SHADOW",
    window_background_opacity = 0.85,
    tab_bar_at_bottom = true,
    initial_rows = 39,
    initial_cols = 165,

    -- Font & appearance
    font = wezterm.font 'CommitMono-Vng',
    font_size = 15.0,
    color_scheme = 'Abernathy',


    -- Keybindings
    leader = { key = "n", mods = "SUPER", timeout_milliseconds = 2000 },
    keys = {
        { key = "h", mods = "CMD|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
        { key = "v", mods = "CMD|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
    },
}
