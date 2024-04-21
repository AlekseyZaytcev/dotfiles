local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- DoomOne
-- Hybrid	- for work in dark
-- FirefoxDev	- for work in really dark
-- Tomorrow	- for work in light
-- GruvboxDark
-- Mariana
-- Dark+
-- Dracula / +
-- Molokai
-- Calamity	- smth interesting
-- Retro	- green hell
config.color_scheme = 'DoomOne'
config.font = wezterm.font 'JetBrainsMono Nerd Font'

return config
