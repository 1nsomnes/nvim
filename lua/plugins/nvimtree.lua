return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
        custom = {'^.git$'}
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false
          }
        }
      }
    })

  end,
}
