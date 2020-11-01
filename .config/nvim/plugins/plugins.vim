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

