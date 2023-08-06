-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = {
}
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'ayu'
config.font = wezterm.font 'JetBrains Mono'

if wezterm.target_triple:find("windows") then
  config.default_prog = {"pwsh.exe"}
end

-- finally, return the configuration to wezterm
return config

