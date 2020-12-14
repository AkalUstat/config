local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- General Keymaps
map('n', '<leader>s', ':w <CR>', default_opts)
map('n', 'K', 'i<space><enter>', default_opts)

-- Netrw

map('n', '<leader>e', ':Lex<CR>', default_opts)
map('n', '<leader>we', ':Ex<CR>', default_opts)
map('n', '<leader><leader><leader><leader><leader><leader>l', '<Plug>NetrwRefresh', default_opts)


-- Telescope nvim
map('n', '<leader>f', ':Telescope find_files<CR>', default_opts)
map('n', '<C-f>', ':Telescope live_grep<CR>', default_opts)
map('n', '<leader>b', ':Telescope buffers<CR>', default_opts)


-- UndoTree
map('n', '<leader>u', ':UndoTreeToggle<CR>', default_opts)

