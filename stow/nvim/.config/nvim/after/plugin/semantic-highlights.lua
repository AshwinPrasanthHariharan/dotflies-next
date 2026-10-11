
local groups = {
  ["@lsp.type.class"] = { link = "Type" },
  ["@lsp.type.type"] = { link = "Type" },
  ["@lsp.type.function"] = { link = "Function" },
  ["@lsp.type.method"] = { link = "Function" },
  ["@lsp.type.parameter"] = { link = "Identifier" },
  ["@lsp.type.variable"] = { link = "Identifier" },
  ["@lsp.type.property"] = { link = "Field" },
  ["@lsp.typemod.variable.readonly"] = { link = "Constant" },
  ["@lsp.typemod.function.builtin"] = { link = "Function" },
  ["@lsp.typemod.function.defaultLibrary"] = { link = "Function" },
  -- Tree-sitter fallback
  ["@function.python"] = { link = "Function" },
  ["@function.call.python"] = { link = "Function" },
  ["@function.builtin.python"] = { link = "Function" },
  ["@function.method.call.python"] = { link = "Function" },
}

local function apply_highlights()
  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

apply_highlights()

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = apply_highlights,
})

