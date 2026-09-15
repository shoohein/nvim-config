return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local ok, blink = pcall(require, "blink.cmp")
    if ok and blink.get_lsp_capabilities then
      vim.lsp.config("*", { capabilities = blink.get_lsp_capabilities() })
    end
    require("config.lsp")

    vim.diagnostic.config({
      severity_sort = true,
      underline = true,
      update_in_insert = false,
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "󰅚 ",
          [vim.diagnostic.severity.WARN] = "󰀪 ",
          [vim.diagnostic.severity.INFO] = "󰋽 ",
          [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
      },
      virtual_text = {
        spacing = 2,
        source = "if_many",
        prefix = "●",
        format = function(diagnostic)
          local msg = diagnostic.message:gsub("\n", " "):gsub("%s+", " ")
          return string.format("%s", msg)
        end,
      },
      float = {
        border = "rounded",
        source = true,
        header = "",
        format = function(diagnostic)
          local msg = diagnostic.message:gsub("\n", " "):gsub("%s+", " ")
          return string.format("%s", msg)
        end,
      },
    })

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
    vim.lsp.handlers["textDocument/signatureHelp"] =
      vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      callback = function()
        if vim.fn.mode() ~= "n" then
          return
        end
        for _, win in ipairs(vim.api.nvim_list_wins()) do
          if vim.api.nvim_win_get_config(win).relative ~= "" then
            return
          end
        end
        vim.diagnostic.open_float({ focus = false, scope = "cursor" })
      end,
      desc = "Show cursor diagnostics in a rounded float",
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local map = function(keys, func, desc, mode)
          vim.keymap.set(mode or "n", keys, func, { buffer = args.buf, desc = desc })
        end
        map("gd", vim.lsp.buf.definition, "Go to Definition")
        map("gD", vim.lsp.buf.declaration, "Go to Declaration")
        map("gi", require("telescope.builtin").lsp_implementations, "Go to Implementation")
        map("gr", require("telescope.builtin").lsp_references, "References")
        map("gy", require("telescope.builtin").lsp_type_definitions, "Go to Type Definition")
        map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "Document Symbols")
        map("<leader>ws", require("telescope.builtin").lsp_workspace_symbols, "Workspace Symbols")
        map("<leader>th", function()
          local bufnr = args.buf
          vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr }), { bufnr = bufnr })
        end, "Toggle Inlay Hints")
        map("K", vim.lsp.buf.hover, "Hover")
        map("<C-s>", vim.lsp.buf.signature_help, "Signature Help", { "n", "i" })
        map("<leader>rn", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code Action", { "n", "v" })
        map("<leader>d", vim.diagnostic.open_float, "Diagnostics")
        map("[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
        map("]d", vim.diagnostic.goto_next, "Next Diagnostic")
      end,
    })
  end,
}
