" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

imap <silent> <C-space> <Plug>(completion_trigger)

" Set completeopt to have a better completion experience
set completeopt=menu,menuone,noinsert
set shortmess+=c

autocmd BufEnter * lua require'completion'.on_attach()

let g:completion_matching_strategy_list = [ 'exact', 'substring', 'fuzzy', 'all']
let g:completion_trigger_on_delete = 1
let g:completion_enable_auto_paren = 1

lua <<EOF
	require'lsp'
EOF


