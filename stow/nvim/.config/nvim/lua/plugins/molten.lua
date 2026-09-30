return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    build = ":UpdateRemotePlugins",

    init = function()
      vim.g.molten_auto_open_output = true
      vim.g.molten_output_win_max_height = 20
      vim.g.molten_image_provider = "image.nvim"
    end,

    keys = {
      { "<leader>mi", "<cmd>MoltenInit<CR>", desc = "Molten Init" },
      { "<leader>me", "<cmd>MoltenEvaluateOperator<CR>", desc = "Evaluate Operator" },
      { "<leader>ml", "<cmd>MoltenEvaluateLine<CR>", desc = "Evaluate Line" },
      { "<leader>mr", "<cmd>MoltenReevaluateCell<CR>", desc = "Re-evaluate Cell" },
      { "<leader>mo", "<cmd>MoltenShowOutput<CR>", desc = "Show Output" },
      { "<leader>mh", "<cmd>MoltenHideOutput<CR>", desc = "Hide Output" },
    },
  },

  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      processor = "magick_cli",
    },
  },
}
