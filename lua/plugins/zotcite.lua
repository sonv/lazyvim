return {
  "sonv/zotcite",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("zotcite").setup({
      -- your options here (see doc/zotcite.txt)
      zotero_sqlite_path = "/home/tsvan/Zotero/zotero.sqlite",
      attach_dir = "/home/tsvan/Documents/References",
    })
  end,
}
