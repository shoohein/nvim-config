return {
  "stevearc/conform.nvim",
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
