local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n","<leader>nh",":nohl<CR>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Move between windows using Ctrl + h/j/k/l on macOS
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true }) -- Move to the window on the left
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true }) -- Move to the window below
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true }) -- Move to the window above
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true }) -- Move to the window on the right

-- Tab Movement
-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", "<cmd>BufferClose<CR>") -- close current tab
keymap.set("n", "<leader>tn", "<cmd>BufferNext<CR>") --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>BufferPrevious<CR>") --  go to previous tab 

keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>")
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm<CR>")


-- nvim tree
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")   
keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>")

-- telescope 
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<CR>")
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<CR>")
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<CR>")
vim.keymap.set('n', '<leader>fh', "<cmd>Telescope help_tags<cr>")
