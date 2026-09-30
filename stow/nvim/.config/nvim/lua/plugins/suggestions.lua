return {
  {
    "saghen/blink.cmp",
    version = "1.*", -- stay on the stable v1 release
    dependencies = {
      "rafamadriz/friendly-snippets",
    },

    opts = {
      keymap = {
        preset = "default",

      ["<CR>"] = { "accept", "fallback" },
      ["<C-y>"] = { "accept" }, -- keep as backup
      },

      appearance = {
        nerd_font_variant = "mono",
      },

      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
      },

      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },

      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },
  },
}
