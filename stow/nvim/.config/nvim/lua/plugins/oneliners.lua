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
}
