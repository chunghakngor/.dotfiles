local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false
config.font_size = 13.0

config.color_scheme = "Catppuccin Frappe"

return config
