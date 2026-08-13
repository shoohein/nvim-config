return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  cmd = { "TSInstall", "TSUpdate" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "c", "cpp", "markdown", "markdown_inline" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
