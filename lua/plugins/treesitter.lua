return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  cmd = { "TSInstall", "TSUpdate" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "markdown",
      "markdown_inline",
      "go",
      "python",
      "c",
      "cpp",
      "bash",
      "lua",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
