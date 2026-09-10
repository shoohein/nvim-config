return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep additional_args=--hidden<cr>", desc = "Live Grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
    { "<leader>gg", "<cmd>Telescope git_status<cr>", desc = "Git Status Files" },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { "^%.git/" },
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
  },
}
