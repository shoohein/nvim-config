vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
    },
  },
})
vim.lsp.enable("basedpyright")
