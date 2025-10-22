local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.font = wezterm.font { family = 'Iosevka Nerd Font Mono', weight = 'Regular' }
config.color_scheme = 'nord'
config.font_size = 14.0
config.window_background_opacity = 0.9
config.warn_about_missing_glyphs = false
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

return config
