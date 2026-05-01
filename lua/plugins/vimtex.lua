return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  init = function()
    vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
    vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_compiler_latexmk = vim.tbl_deep_extend("force", vim.g.vimtex_compiler_latexmk or {}, {
      aux_dir = "aux",
    })
  end,
  config = function()
    vim.opt.conceallevel = 0
  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex", ft = "tex" },
  },
}
