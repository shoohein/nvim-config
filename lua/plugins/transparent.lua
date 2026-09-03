return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",
        "FloatBorder",
        "Pmenu",
        "PmenuSel",
      },
    })
    require("transparent").clear_prefix("NeoTree")
    require("transparent").clear_prefix("lualine")
  end,
}
