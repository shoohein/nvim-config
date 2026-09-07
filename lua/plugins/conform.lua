return {
  "stevearc/conform.nvim",
  ft = { "go", "lua", "python", "markdown", "c", "cpp", "sh", "bash" },
  cmd = "ConformInfo",
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({
          async = true,
          timeout_ms = 1000,
        })
      end,
      mode = { "n", "v" },
      desc = "Format buffer",
    },
  },
  config = function()
    require("config.fmt")
  end,
}
