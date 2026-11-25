-- Prefer variable colouring over constant colouring.
vim.api.nvim_set_hl(0, "@variable.python", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@constant.python", { link = "Constant" })

-- Give built-in functions their own highlight group.
vim.api.nvim_set_hl(0, "@function.builtin.python", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.call.python", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.method.call.python", { link = "Function" })

-- Make attributes visually distinct from variables.
vim.api.nvim_set_hl(0, "@variable.member.python", { link = "Field" })
vim.api.nvim_set_hl(0, "@attribute.python", { link = "Field" })
