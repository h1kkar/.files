local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Ashes (base16)"

config.font = wezterm.font("Iosevka")
config.font_size = 8.0

config.window_padding = {
	left = 35,
	right = 35,
	top = 35,
	bottom = 35,
}

config.window_decorations = "NONE"
config.enable_tab_bar = false

return config
