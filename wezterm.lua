-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = "ayu"
config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { "liga=1" }

if wezterm.target_triple:find("windows") then
    config.default_prog = { "wsl.exe" }
end

config.enable_wayland = false
config.window_decorations = "NONE"
config.hide_tab_bar_if_only_one_tab = true

-- finally, return the configuration to wezterm
return config
