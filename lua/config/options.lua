vim.opt.number = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.g.python_indent = vim.g.python_indent or {}
vim.g.python_indent.open_paren = "shiftwidth()" -- indent 4 chars after '('
