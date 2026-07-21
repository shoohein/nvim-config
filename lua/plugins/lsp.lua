return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("config.lsp")

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
        end
        map("gd", vim.lsp.buf.definition, "Go to Definition")
        map("gD", vim.lsp.buf.declaration, "Go to Declaration")
        map("gi", vim.lsp.buf.implementation, "Go to Implementation")
        map("gr", require("telescope.builtin").lsp_references, "References")
        map("K", vim.lsp.buf.hover, "Hover")
        map("<C-k>", vim.lsp.buf.signature_help, "Signature Help")
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
        map("<leader>e", vim.diagnostic.open_float, "Diagnostics")
        map("[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
        map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
      end,
    })
  end,
}
