return {
  {
    "folke/snacks.nvim",

    opts = {
      dashboard = {
        enabled = true,

        preset = {

 header = [[
                                                                   
      ████ ██████           █████      ██                 btw
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████
]],
          keys = {
            {
              icon = "󰱼 ",
              key = "f",
              desc = "Find File",
              action = function()
                Snacks.picker.files()
              end,
            },

            {
              icon = "󰈞 ",
              key = "g",
              desc = "Find Text",
              action = function()
                Snacks.picker.grep()
              end,
            },

            {
              icon = " ",
              key = "p",
              desc = "Projects",
              action = function()
                vim.cmd.cd(vim.fn.expand("~/Projects"))
                Snacks.picker.files()
              end,
            },


            {
              icon = " ",
              key = "c",
              desc = "Neovim Config",
              action = function()
                vim.cmd.cd(vim.fn.expand("~/.config/nvim"))
                Snacks.picker.files()
              end,
            },

            {
              icon = "󰒲 ",
              key = "l",
              desc = "Lazy",
              action = ":Lazy",
            },

            {
              icon = "󰗼 ",
              key = "q",
              desc = "Quit",
              action = ":qa",
            },
          },
        },

        sections = {
          -- Header
          {
            section = "header",
            align = "left",
            padding = 1,
          },

          -- Date
          {
            text = {
              {
                os.date("%A, %d %B %Y"),
                hl = "key",
              },
            },
            align = "center",
            padding = 1,
          },

          -- Shortcuts
          {
            section = "keys",
            gap = 1,
            padding = 1,
          },

          -- Projects
          {
            pane = 1,
            icon = " ",
            title = "Projects",
            section = "projects",
            indent = 2,
            padding = 1,
          },


          -- Recent Files
          {
            pane = 2,
            icon = " ",
            title = "Recent Files",
            section = "recent_files",
            indent = 4,
          },

          -- Startup
          {
            pane = 1,
            section = "startup",
          },
        },
      },
    },
  },
}
