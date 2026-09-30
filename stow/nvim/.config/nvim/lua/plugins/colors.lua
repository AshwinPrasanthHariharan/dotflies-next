
-- ~/.config/nvim/lua/plugins/colors.lua
local glass = {
  base      = { color = "#1e1e2e", alpha = 0.9 },
}
return {
  -- 1. The Core Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true,
        integrations = {
          snacks = {
            enabled = true,
            indent_scope_color = "mauve",
          },
          cmp = true,
          gitsigns = true,
          neotree = true,
          telescope = true,
          treesitter = true,
          notify = true,
          lualine = {
            all = function(colors)
              return {
                normal = {
                  a = { bg = colors.mauve, fg = colors.base, gui = "bold" }
                },
                command = {
                  a = { bg = colors.mauve, fg = colors.base, gui = "bold" }
                }
              }
            end,
          }, -- Fixed: Added missing closing bracket and brace for lualine integration
        },   -- Fixed: Added missing closing brace for integrations
        custom_highlights = function(colors)
          return {
            -- Keeping your original color names intact
            LineNr = { fg = colors.lavender },
            CursorLineNr = { fg = colors.yellow, bg = glass.base.color, style = { "bold" } },
            CursorLine = { bg = glass.base.color },

            -- NeoTree colours
            NeoTreeRootName       = { fg = colors.mauve, style = { "bold" } },
            NeoTreeDirectoryName  = { fg = colors.mauve },
            NeoTreeDirArrowOpen   = { fg = colors.mauve },
            NeoTreeDirArrowClosed = { fg = colors.mauve },
            NeoTreeDirectoryIcon  = { fg = colors.mauve },
            NeoTreeFileIcon       = { fg = colors.mauve },

            -- Force Snacks Dashboard elements to match the mauve accent
            SnacksDashboardHeader = { fg = colors.mauve },
            SnacksDashboardFile   = { fg = colors.mauve },
            SnacksDashboardDesc   = { fg = colors.mauve },
            SnacksDashboardIcon   = { fg = colors.mauve },

            -- If you also use the Snacks Picker and want the search match in mauve
            SnacksPickerMatch     = { fg = colors.mauve },
          }
        end,
      })

      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },

  -- 2. The Status Line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "catppuccin/nvim",
    },
    config = function()
      require("lualine").setup({
        options = {
          component_separators = { left = "│", right = "│" },
          section_separators = { left = "", right = "" },
          globalstatus = true,
        },
        sections = {
          lualine_x = {
            {
              function()
                local reg = vim.fn.reg_recording()
                return reg ~= "" and ("recording @" .. reg) or ""
              end,
            },
            "fileformat",
            "filetype",
          },
        },
      })
    end,
  },
}
