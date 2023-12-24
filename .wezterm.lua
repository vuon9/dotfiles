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
    disable_default_key_bindings = true,
    leader = { key = "n", mods = "SUPER", timeout_milliseconds = 2000 },
    keys = {
        { key = "r",        mods = "LEADER",       action = "ReloadConfiguration" },
        --
        {
            key = "h",
            mods = "LEADER",
            action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
        },
        { key = "v",        mods = "LEADER",       action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
        { key = "t",        mods = "LEADER",       action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
        { key = "X",        mods = "LEADER",       action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
        { key = "x",        mods = "LEADER",       action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
        { key = "z",        mods = "LEADER",       action = "TogglePaneZoomState" },
        { key = "f",        mods = "LEADER",       action = "QuickSelect" },
        { key = "w",        mods = "LEADER",       action = "ActivateCopyMode" },
        { key = "s",        mods = "LEADER",       action = wezterm.action({ Search = { CaseInSensitiveString = "" } }) },
        { key = "PageUp",   mods = "NONE",         action = wezterm.action({ ScrollByPage = -1 }) },
        { key = "PageDown", mods = "NONE",         action = wezterm.action({ ScrollByPage = 1 }) },
        --
        { key = "Tab",      mods = "LEADER",       action = wezterm.action({ ActivateTabRelative = 1 }) },
        { key = "Tab",      mods = "LEADER|SHIFT", action = wezterm.action({ ActivateTabRelative = -1 }) },
        --
        { key = "i",        mods = "LEADER",       action = wezterm.action({ ActivatePaneDirection = "Right" }) },
        { key = "n",        mods = "LEADER",       action = wezterm.action({ ActivatePaneDirection = "Left" }) },
        { key = "u",        mods = "LEADER",       action = wezterm.action({ ActivatePaneDirection = "Up" }) },
        { key = "e",        mods = "LEADER",       action = wezterm.action({ ActivatePaneDirection = "Down" }) },
        --
        -- 5 and 8 map to my arrow keys
        { key = "2",        mods = "ALT",          action = "ResetFontSize" },
        { key = "5",        mods = "ALT",          action = "DecreaseFontSize" },
        { key = "8",        mods = "ALT",          action = "IncreaseFontSize" },
        --
        { key = "w",        mods = "ALT",          action = wezterm.action({ CopyTo = "Clipboard" }) },
        { key = "y",        mods = "CTRL",         action = wezterm.action({ PasteFrom = "Clipboard" }) },
    },
}
