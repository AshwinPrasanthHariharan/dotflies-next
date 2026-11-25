return {
  {
    "romus204/tree-sitter-manager.nvim",
    config = function()
      -- Detect Kanata configuration files
      vim.filetype.add({
        extension = {
          kbd = "kanata",
        },
      })

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
          "kanata",
        },

        highlight = true,

        -- Custom parser definitions
        languages = {
          kanata = {
            install_info = {
              url = "https://github.com/postsolar/tree-sitter-kanata",
              branch = "master",
              use_repo_queries = true,
              queries = "queries",
            },
          },
        },
      })
    end,
  },
}
