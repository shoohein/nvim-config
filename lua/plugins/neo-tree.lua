return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle NeoTree" },
    { "<leader>E", "<cmd>Neotree reveal<cr>", desc = "NeoTree Reveal" },
    { "<leader>ge", "<cmd>Neotree git_status reveal toggle<cr>", desc = "NeoTree Git Status" },
  },
  opts = {
    window = {
      position = "left",
      width = 30,
    },
    filesystem = {
      follow_current_file = { enabled = true, leave_dirs_open = true },
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
