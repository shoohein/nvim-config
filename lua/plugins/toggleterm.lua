return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal panel" },
    { "<C-`>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal panel", mode = { "n", "t" } },
  },
  opts = {
    direction = "horizontal",
    size = 15,
    shade_terminals = true,
    start_in_insert = true,
    persist_mode = true,
    close_on_exit = true,
  },
}
