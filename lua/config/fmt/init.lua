require("conform").setup({
  formatters_by_ft = {
    go = require("config.fmt.go"),
    lua = require("config.fmt.lua"),
    python = require("config.fmt.python"),
    c = require("config.fmt.clang"),
    cpp = require("config.fmt.clang"),
  },
  format_on_save = {
    timeout_ms = 1000,
  },
})
