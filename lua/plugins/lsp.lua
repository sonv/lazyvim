return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              build = {
                args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "-auxdir=aux", "%f" },
                auxDirectory = "aux",
                logDirectory = "aux",
              },
              auxDirectory = "aux",
              inlayHints = {
                labelDefinitions = true,
                labelReferences = true,
              },
            },
          },
        },
      },
    },
  },
}
