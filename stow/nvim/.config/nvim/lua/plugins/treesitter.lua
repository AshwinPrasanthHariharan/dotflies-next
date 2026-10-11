return {
  {
    "romus204/tree-sitter-manager.nvim",
    config = function()
      require("tree-sitter-manager").setup({
        auto_install = true,
        ensure_installed = {
          "python",
          "lua",
          "rust",
          "bash",
          "zsh",
          "c",
          "markdown",
        },
        highlight = true,
      })
    end,
  },
}
