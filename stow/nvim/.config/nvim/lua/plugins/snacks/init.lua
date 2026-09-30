return {
  {
    "folke/snacks.nvim",

    priority = 1000,
    lazy = false,

    opts = {
      dashboard = {
        enabled = true,
      },
    },
  },

  {
    import = "plugins.snacks.dashboard",
  },

  {
      import ="plugins.snacks.terminal",
  },

  -- We'll add this later:
  {
    import = "plugins.snacks.picker",
  },
}
