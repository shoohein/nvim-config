vim.lsp.config("gopls", {
  settings = {
    gopls = {
      staticcheck = true,
      gofumpt = true,
      analyses = {
        unusedparams = true,
      },
      completeUnimported = true,
      usePlaceholders = true,
    },
  },
})

vim.lsp.enable("gopls")
