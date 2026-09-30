vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap
-- Explorer shortcut
map.set("n", "<leader>cd", vim.cmd.Ex)

-- Toggle relative number
map.set("n", "<leader>rn", ":set relativenumber!<CR>", {
  desc = "Toggle relative line numbers",
})

-- Map Alt+Space to Escape in Insert mode
map.set("i", "<A-Space>", "<Esc>", {
  desc = "Escape with Alt+Space",
})

-- Neo-tree toggle
map.set(
  "n",
  "<leader>e",
  "<cmd>Neotree filesystem reveal toggle left<CR>"
)

-- Window Navigation
map.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
-- Dismiss notifications
map.set("n", "<leader>ud", "<cmd>NoiceDismiss<CR>", {
  desc = "Dismiss notifications",
})
--clipboard access
map.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

