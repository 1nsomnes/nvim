-- this contains all the fancy stuff to make the editor look nice.
return {
  {
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    'VonHeikemen/fine-cmdline.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim'
    }
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
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      local db = require("dashboard")
      db.setup({
        theme = 'doom',
        config = {
          header = { --your header
            "=================     ===============     ===============   ========  ========",
            "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
            "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
            "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
            "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
            "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
            "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
            "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
            "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
            "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
            "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
            "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
            "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
            "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
            "||   .=='    _-'          '-__\\._-'         '-_./__-'         `' |. /|  |   ||",
            "||.=='    _-'                                                     `' |  /==.||",
            "=='    _-'                        N E O V I M                         \\/   `==",
            "\\   _-'                                                                `-_   /",
            "`''                                                                      ``'"
          },
          center = {
            { icon = '  ', desc = 'Find File          ', action = 'Telescope find_files' },
            { icon = '  ', desc = 'Recents            ', action = 'Telescope oldfiles' },
            { icon = '  ', desc = 'Toggle Tree        ', action = 'NvimTreeToggle' },
            { icon = '  ', desc = 'Bookmarks          ', action = 'Telescope marks' },
            { icon = '洛 ', desc = 'New File           ', action = 'DashboardNewFile' },
            { icon = '  ', desc = 'Last Session       ', action = 'SessionLoad' },
          },
          footer = {} --your footer
        }
      })
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } }
  }
}
