
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- -----------------------------
-- PRIMARY FONT (Normal/Regular)
-- -----------------------------
-- Require the bundle once
local fonts = require 'fonts'
-- Apply the configurations flawlessly
config.font = fonts.default
config.font_size = fonts.size
config.font_rules = fonts.rules

-- -----------------------------
-- APPEARANCE & TABS (Konsole-like)
-- -----------------------------
config.window_background_opacity = 0.8
config.default_cursor_style = 'BlinkingBar'
config.cursor_blink_rate = 500
config.scrollback_lines = 10000
-- Tab Bar Layout
config.use_fancy_tab_bar = false -- Set to false for a clean powerline/retro feel
config.tab_bar_at_bottom = false -- Tab bar on top like Konsole
config.hide_tab_bar_if_only_one_tab = true
config.use_resize_increments = false

-- Paddings and Alingment
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}
config.window_content_alignment = {
  horizontal = "Center",
  vertical = "Center",
}

config.enable_wayland = false

config.window_decorations = "NONE"
config.use_fancy_tab_bar = false
config.color_scheme = "Noctalia"

config.default_prog = { 'zsh', '-l' }

return config
