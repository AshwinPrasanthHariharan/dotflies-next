-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- This protected call stops the red error screen!
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return -- Silently exit if it hasn't downloaded yet
    end

    configs.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "lua",
        "python",
        "rust",
        "bash",
        "zsh",
        "c",
        "markdown"
      },
      auto_install = false,
    })
  end,
}
