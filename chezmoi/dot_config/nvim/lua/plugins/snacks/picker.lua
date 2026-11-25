return {
  {
    "folke/snacks.nvim",

    keys = {
      -- Find files
      {
        "<leader>ff",
        function()
          Snacks.picker.files({
            cwd = vim.fn.getcwd(),
          })
        end,
        desc = "Find Files",
      },

      -- Live grep
      {
        "<leader>fg",
        function()
          Snacks.picker.grep({
            cwd = vim.fn.getcwd(),
          })
        end,
        desc = "Live Grep",
      },

      -- Buffers
      {
        "<leader>fb",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Buffers",
      },

      -- Help
      {
        "<leader>fh",
        function()
          Snacks.picker.help()
        end,
        desc = "Help Tags",
      },
    },

    opts = {
      picker = {
        enabled = true,

        sources = {
          files = {
            hidden = true,
            ignored = false,
            follow = false,

            exclude = {
              ".git",
              ".pixi",
              ".venv",
              "venv",
              "__pycache__",
              ".pytest_cache",
              ".ruff_cache",
              ".mypy_cache",
              "node_modules",
            },
          },

          grep = {
            hidden = true,
            ignored = false,

            exclude = {
              ".git",
              ".pixi",
              ".venv",
              "venv",
              "__pycache__",
              ".pytest_cache",
              ".ruff_cache",
              ".mypy_cache",
              "node_modules",
            },
          },
        },
      },
    },
  },
}
