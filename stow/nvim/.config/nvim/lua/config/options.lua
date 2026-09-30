-- tab specifications 
vim.opt.expandtab=true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=4

-- line number rules
vim.opt.number=true
vim.opt.relativenumber=true -- can be togled with <leader>rn
vim.opt.cursorline=true

--clipboard
vim.opt.guicursor = {
  "n-v-c:block",
  "i-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
  "t:ver25",
}
-- soft wrap rules
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakat = " \t"
