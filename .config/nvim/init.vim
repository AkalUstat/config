syntax on                                                                                                 

set noerrorbells
set guifont=CaskaydiaCove\ Nerd\ Font\ Mono\ Book:h25
set encoding=utf-8
set autoread
set smartindent 
set nu
set nowrap
set noswapfile  
set nobackup  
set undofile
set incsearch  
set relativenumber  
set clipboard=unnamedplus
set autoindent
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set hidden
set showcmd
set cmdheight=2

call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'wakatime/vim-wakatime'
Plug 'hugolgst/vimsence'
Plug 'vim-airline/vim-airline'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
Plug 'arcticicestudio/nord-vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
 
set termguicolors
let ayucolor="dark"
colorscheme nord

let g:airline_powerline_fonts = 1

let g:netrw_liststyle = 3
let g:netrw_banner = 0

let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_preview_window = 'right:60%'

let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-eslint', 
\ 'coc-json', 
\ 'coc-rust-analyzer',
\ 'coc-flutter',
\ ]
if executable('rg')
				let g:rg_derive_root='true'
endif
let g:rg_command = 'rg --vimgrep -S'

let mapleader = " "
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

noremap <leader>gf :GFiles<CR>
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>s :w <CR>
nnoremap <leader>e  <cmd>CHADopen<CR>

noremap <C-f> :Rg<space>
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
