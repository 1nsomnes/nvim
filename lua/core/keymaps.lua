local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")     -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Move between windows using Ctrl + h/j/k/l on macOS
keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true }) -- Move to the window on the left
keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true }) -- Move to the window below
keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true }) -- Move to the window above
keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- Move to the window on the right

-- Tab Movement
-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", "<cmd>BufferClose<CR>")    -- close current tab
keymap.set("n", "<leader>tn", "<cmd>BufferNext<CR>")     --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>BufferPrevious<CR>") --  go to previous tab

keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>")
keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>")
keymap.set("n", "<leader>tb", "<cmd>ToggleTerm direction=tab<CR>")


-- nvim tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>")

-- telescope
keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<CR>")
keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<CR>")
keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<CR>")
keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>")

-- lsp
--keymap.set('n', 'K', "<cmd>lua vim.lsp.buf.hover()<CR>", {border = "rounded"})
keymap.set('n', 'K',function() 
  vim.lsp.buf.hover { border = "rounded"}
end)
keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
keymap.set('n', '<leader>rr', '<cmd>Telescope lsp_references<CR>')
keymap.set('n', '<leader>gd', '<cmd>Telescope lsp_definitions<CR>')
keymap.set('n', '<leader>af', '<cmd>lua vim.lsp.buf.format({async = true})<CR>')
keymap.set("n", "<leader>lr", ":LspRestart<cr>", { desc = "Restart LSP" })

keymap.set("n", "<leader>d", function()
  vim.diagnostic.open_float(0, { scope = "line", focus = false })
end)


-- terminal
keymap.set('t', '<ESC>', '<C-\\><C-n>')

-- fancy keybinds
keymap.set('n', '<leader>tt', "<cmd>TodoTelescope<CR>")
