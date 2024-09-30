require("plugins-setup")

-- lazy requires that you do this before loading lazy
vim.g.mapleader = " "

require("lazy").setup("plugins")

vim.cmd [[colorscheme nightfly]]

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.cmd("NvimTreeToggle")
    vim.cmd("Dashboard")
  end,
})


require("core.options")
require("core.keymaps")

