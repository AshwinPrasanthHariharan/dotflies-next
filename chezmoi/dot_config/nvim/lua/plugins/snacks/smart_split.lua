return {
  "mrjones2014/smart-splits.nvim",
  lazy = false,
  config = function()
    require("smart-splits").setup({
      multiplexer_integration = "wezterm",
    })

    local map = vim.keymap.set

    -- Navigate between Neovim splits and WezTerm panes
    map("n", "<C-h>", require("smart-splits").move_cursor_left)
    map("n", "<C-j>", require("smart-splits").move_cursor_down)
    map("n", "<C-k>", require("smart-splits").move_cursor_up)
    map("n", "<C-l>", require("smart-splits").move_cursor_right)

    -- Resize splits
    map("n", "<A-h>", require("smart-splits").resize_left)
    map("n", "<A-j>", require("smart-splits").resize_down)
    map("n", "<A-k>", require("smart-splits").resize_up)
    map("n", "<A-l>", require("smart-splits").resize_right)
  end,
}
