-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "catppuccin-mocha"

config.font = wezterm.font_with_fallback({
	"Monoid",
	"FiraCode Nerd Font",
})

config.font_size = 16.5

-- and finally, return the configuration to wezterm
return config
