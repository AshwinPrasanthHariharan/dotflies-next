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

-- Paddings and Alingment
local x=10
local y=5
config.window_padding = {
  left = x/2 ,
  right = x/2,
  top = y/2,
  bottom = y/2,
}
config.window_content_alignment = {
  horizontal = "Center",
  vertical = "Center",
}
config.enable_wayland = false
config.window_close_confirmation = "NeverPrompt"
config.use_fancy_tab_bar = false

config.default_prog = { 'zsh', '-l' }
config.color_scheme = "Noctalia"
-- 1. Boost text weight and contrast to match Ghostty
config.freetype_load_target = "HorizontalLcd"
config.freetype_render_target = "HorizontalLcd"
config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.05,
  brightness = 1.15, -- Makes white text pop like Ghostty
}

-- 2. Keep dark backgrounds rich even with transparency
config.text_background_opacity = 1.0
return config
