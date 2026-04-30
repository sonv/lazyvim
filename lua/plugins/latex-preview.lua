return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      image = {
        enabled = true,
        doc = {
          enabled = false,
          inline = false,
          float = false,
        },
      },
    },
  },
  {
    dir = "~/.local/share/nvim/local-plugins/latex-preview-nvim",
    name = "latex-preview.nvim",
    dependencies = { "folke/snacks.nvim" },
    ft = { "tex", "latex", "markdown" },
    opts = {
      setup_keymap = true,
      cache = false,
      cache_dir = "aux",
    },
  },
}
