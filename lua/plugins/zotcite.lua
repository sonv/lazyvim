return {
  "sonv/zotcite",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("zotcite").setup({
      -- your options here (see doc/zotcite.txt)
      zotero_sqlite_path = vim.fn.expand("~/Zotero/zotero.sqlite"),
      attach_dir = vim.fn.expand("~/Documents/References"),
    })
  end,
}
