call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'wfxr/minimap.vim'
Plug 'itchyny/lightline.vim'
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }



Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter'

Plug 'wakatime/vim-wakatime'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/sonokai'
call plug#end()

 
colorscheme sonokai


