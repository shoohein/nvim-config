return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1001,
  config = function()
    require("vscode").setup({
      style = "dark",
      italic_comments = true,
      italic_inlayhints = true,
      underline_links = true,
      terminal_colors = true,
    })
    vim.o.background = "dark"
    vim.cmd.colorscheme("vscode")
  end,
}
