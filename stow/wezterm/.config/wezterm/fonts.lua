-- ~/.config/wezterm/fonts.lua
local wezterm = require "wezterm"

-- 1. Central font list
local font_families = {
  'JetBrainsMonoNL Nerd Font',
  'Noto Sans Tamil'
}

-- 2. Clean helper function to generate fallbacks dynamically
local function make_font(opts)
  local fallback_list = {}
  for _, family in ipairs(font_families) do
    table.insert(fallback_list, {
      family = family,
      weight = opts.weight,
      italic = opts.italic,
    })
  end
  return wezterm.font_with_fallback(fallback_list)
end

-- 3. Package everything into a single exported dictionary
local M = {}

-- Define your global font size here
M.size = 14.0

-- Main font configuration
M.default = make_font({ weight = 'Regular', italic = false })

-- Override font rules (bold/italic variants)
M.rules = {
  {
    intensity = 'Bold',
    italic = false,
    font = make_font({ weight = 'Bold', italic = false }),
  },
  {
    intensity = 'Bold',
    italic = true,
    font = make_font({ weight = 'Bold', italic = true }),
  },
  {
    intensity = 'Normal',
    italic = true,
    font = make_font({ weight = 'Regular', italic = true }),
  },
}

return M
