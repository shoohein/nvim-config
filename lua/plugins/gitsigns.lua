return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "▁", show_count = true },
      topdelete = { text = "▔", show_count = true },
      changedelete = { text = "~" },
      untracked = { text = "┆" },
    },
    signcolumn = true,
    numhl = true,
    linehl = false,
    culhl = true,
    word_diff = true,
    attach_to_untracked = true,
    current_line_blame = false,
    diff_opts = {
      internal = true,
      algorithm = "histogram",
      indent_heuristic = true,
      linematch = 60,
    },
    preview_config = {
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
      border = "rounded",
    },
    on_attach = function(bufnr)
      local gs = require("gitsigns")

      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, {
          buffer = bufnr,
          silent = true,
          desc = desc,
        })
      end

      map("n", "]c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gs.nav_hunk("next")
        end
      end, "[c, 次のGit変更へ]")

      map("n", "[c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "[c, 前のGit変更へ]")

      map("n", "<leader>gp", gs.preview_hunk, "[leader]gp, 変更をプレビュー")
      map("n", "<leader>gi", gs.preview_hunk_inline, "[leader]gi, 変更をインライン表示")
      map("n", "<leader>gs", gs.stage_hunk, "[leader]gs, 変更をステージ")
      map("n", "<leader>gr", gs.reset_hunk, "[leader]gr, 変更を元に戻す")
      map("n", "<leader>gq", gs.setqflist, "[leader]gq, 変更一覧を表示")
      map("n", "<leader>gb", gs.blame_line, "[leader]gb, 行のBlameを表示")

      map({ "o", "x" }, "ih", gs.select_hunk, "Git変更ブロック")
    end,
  },
}
