require("conform").setup({
  formatters_by_ft = {
    go = require("config.fmt.go"),
    lua = require("config.fmt.lua"),
  },
})
