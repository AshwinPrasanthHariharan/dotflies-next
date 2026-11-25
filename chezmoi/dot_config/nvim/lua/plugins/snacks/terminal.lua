return {
  {
    "folke/snacks.nvim",

    keys = {
      {
        "<leader>tt",
        function()
          Snacks.terminal.toggle(nil,{count = 1})
        end,
        mode = { "n", "t" },
        desc = "Toggle Terminal",
      },

      {
        "<leader>tf",
        function()
          Snacks.terminal.toggle(nil, {count =2,
            win = {
              position = "float",
              width = 0.75,
              height = 0.65,
              border = "rounded",
              backdrop = 60,

              wo = {
                winblend = 10,
                winhighlight = "Normal:SnacksTerminalNormal,NormalFloat:SnacksTerminalNormal",
              },
            },
          })
        end,
        mode = { "n", "t" },
        desc = "Toggle Floating Terminal",
      },
    },

    opts = {
      terminal = {
        enabled = true,
      },
    },

    config = function(_, opts)
      vim.api.nvim_set_hl(0, "SnacksTerminalNormal", {
        bg = "#1e1e2e",
      })

      require("snacks").setup(opts)
    end,
  },
}
