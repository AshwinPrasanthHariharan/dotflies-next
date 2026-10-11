return{
    {
    "HiPhish/rainbow-delimiters.nvim",
    },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        event = "LspAttach", priority = 1000,
        config = function()
            require("tiny-inline-diagnostic").setup({
                preset = "modern",
            })
        end,
    },
  {
    "folke/lazydev.nvim",
    ft = "lua",

    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
  },
  ft = "python", -- Load when opening Python files
  keys = { { ",v", "<cmd>VenvSelect<cr>" } }, -- Open picker on keymap
  opts = {
    options = {}, -- plugin-wide options
    search = {}   -- custom search definitions
  },
},
}
