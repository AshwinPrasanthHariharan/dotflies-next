
return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      options = {
        mode = "buffers",
        separator_style = "pipe",
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        -- FIXED: offsets is now safely nested inside the options table
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          }
        },
      }, -- Closes options table

      -- Removes the bar background, but preserves individual tab identities
    }, -- Closes opts table

    -- FIXED: config is now a root plugin key, outside of opts
    config = function(_, opts)
      require("bufferline").setup(opts)

      local map = vim.keymap.set

      map("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", {
        desc = "Previous Buffer",
      })

      map("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", {
        desc = "Next Buffer",
      })

      map("n", "<leader>bd", "<Cmd>bdelete<CR>", {
        desc = "Delete Buffer",
      })

      map("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", {
        desc = "Pin Buffer",
      })

      map("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", {
        desc = "Close Other Buffers",
      })

      map("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", {
        desc = "Close Buffers to Right",
      })

      map("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", {
        desc = "Close Buffers to Left",
      })
    end, -- Closes config function
  }, -- Closes the plugin table
} -- Closes the return table (Extra bracket removed)
