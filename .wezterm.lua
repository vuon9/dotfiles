-- Pull in the wezterm API
local wezterm = require 'wezterm'
local mux = wezterm.mux

-- Startup commands
wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():set_position(288, 211)
end)

-- and finally, return the configuration to wezterm
return {
    -- OS specific tweaks
    default_prog = { '/opt/homebrew/bin/fish' },
    enable_scroll_bar = true,
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
    keys = {
        {
            key = 'd',
            mods = 'CMD',
            action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
        },
        {
            key = 'd',
            mods = 'CMD|SHIFT',
            action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
        },
    }
}
