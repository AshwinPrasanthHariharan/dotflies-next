return {
  "natecraddock/workspaces.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-neo-tree/neo-tree.nvim",
  },
  config = function()
    require("workspaces").setup({
      hooks = {
        -- Runs immediately after the directory is changed
        open = "Neotree action=show",
      }
    })
    -- Load the Telescope extension
    require("telescope").load_extension("workspaces")
  end,
}
