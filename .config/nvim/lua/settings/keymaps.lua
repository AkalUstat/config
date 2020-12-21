local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true }
local silent_opts = { noremap = true, silent = true }

-- [[ General Keymaps ]]
map('n', '<leader>sa', ':w <CR>', silent_opts)
map('n', 'K', 'a<space><enter>', silent_opts)

-- [[ Netrw ]]

-- map('n', '<leader>e', ':Lex<CR>', default_opts)
-- map('n', '<leader>we', ':Ex<CR>', default_opts)
-- map('n', '<leader><leader><leader><leader><leader><leader>l', '<Plug>NetrwRefresh', default_opts)

-- Lua Tree
map('n', '<leader>et', ':LuaTreeToggle<CR>', default_opts)

-- [[ Telescope nvim ]]
--
-- Files 
-- this is a mapping that uses the alt key, so on mac, its recommended to use the generated key
-- Alt + F
map('n', 'ƒ', '<cmd>Telescope find_files<CR>', silent_opts)
-- Alt + B
map('n', '∫', '<cmd>Telescope buffers<CR>', silent_opts)
--
--Git
map('n', '<leader>gf', '<cmd>Telescope git_files<CR>', default_opts)
map('n', '<leader>gc', '<cmd>Telescope git_commits<CR>', default_opts)
map('n', '<leader>bc', '<cmd>Telescope git_bcommits<CR>', default_opts)
map('n', '<leader>gb', '<cmd>Telescope git_branches<CR>', default_opts)
map('n', '<leader>gs', '<cmd>Telescope git_status<CR>', default_opts)
-- Grep
map('n', '<leader>bf', '<cmd>Telescope current_buffer_fuzzy_find<CR>', default_opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<CR>', default_opts)
--
--maybe useful
map('n', '<leader>c', '<cmd>Telescope command_history<CR>', default_opts)
-- map('n', '<leader>r', '<cmd>Telescope registers<CR>', default_opts)


-- [[ UndoTree ]]
map('n', '<leader>u', ':UndotreeToggle<CR>', default_opts)

-- [[ LS/Completion ]]

-- im cheating i know i know
vim.cmd [[
  inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]]

-- alt + D
map('n', '∂', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', silent_opts)
map('i', '<C-Space>', '<cmd>lua require("completion").completion_trigger()<CR>', default_opts)

-- [[ Limelight/ Goyo ]]
map('n', '<leader>g', ':Goyo<CR>', default_opts)
map('n', '<leader>l', ':Limelight<CR>', default_opts)
