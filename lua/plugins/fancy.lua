-- this contains all the fancy stuff to make the editor look nice.
return {
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup {
        keywords = {
          FIX = { icon = " ", color = "error" },
          TODO = { icon = " ", color = "info" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning" },
          PERF = { icon = " ", color = "hint" },
          NOTE = { icon = " ", color = "hint" }
        },
        highlight = {
          before = "",      -- "fg" or "bg" or empty
          keyword = "wide", -- "fg", "bg", "wide" or empty
          after = "fg",     -- "fg" or "bg" or empty
        },
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          pattern = [[\b(KEYWORDS)\b]], -- Match without a colon
        }
      }
    end
  },
}
