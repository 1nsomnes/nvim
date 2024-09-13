require("plugins-setup")

-- lazy requires that you do this before loading lazy
vim.g.mapleader = " "

require("lazy").setup("plugins")

vim.cmd [[colorscheme nightfly]]

require("core.options")
require("core.keymaps")

