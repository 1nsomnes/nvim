require("plugins-setup")

-- lazy requires that you do this before loading lazy
vim.g.mapleader = " "

require("lazy").setup("plugins")

require("cyberdream").setup({
  variant="dark",
  transparent=true,
})


vim.cmd [[colorscheme cyberdream]]

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.cmd("NvimTreeToggle")
  end,
})

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",            -- or "■", "▎", whatever you like
    spacing = 2,
  },
  signs = true,              -- enable gutter signs
  underline = true,           -- underline code with issues
  update_in_insert = false,   -- don’t update while typing
  severity_sort = true,       -- show errors before warnings, etc.

  -- 2) Floating window options
  float = {
    border = "rounded",       -- "single" | "double" | "rounded" | "shadow" | "none"
    source = "always",        -- show the `tsserver`/`pyright` source in the float
    header = "",              -- you can add a custom header line
    prefix = "» ",            -- prefix each diagnostic line
    focusable = false,        -- don’t steal focus when opening
    max_width = 60,           -- wrap lines after this width
  },
})


require("core.options")
require("core.keymaps")

