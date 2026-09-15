vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = { library = { vim.env.VIMRUNTIME } },
      telemetry = { enable = false },
      hint = { enable = true },
    },
  },
})

vim.lsp.enable("lua_ls")
