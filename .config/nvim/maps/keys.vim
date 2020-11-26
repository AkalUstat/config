let mapleader = " "
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)

nmap <silent> <leader>gr <Plug>(coc-references)
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
noremap <leader>gf :GFiles<CR>
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>u :UndotreeToggle<CR>
noremap <leader>e :Lex<CR>
noremap <leader>m :MarkdownPreview<CR>
nnoremap <leader>s :w <CR>

noremap <C-f> :Rg<CR>
noremap <leader>m :MarkdownPreview<CR>
nnoremap K i<space><enter>
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


" extremely annoying defaults I am overwriting to free up their keybinds

" Freed <C-l> in Netrw
nmap <leader><leader><leader><leader><leader><leader>l <Plug>NetrwRefresh
