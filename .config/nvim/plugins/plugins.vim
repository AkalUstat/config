call plug#begin('~/.vim/plugged')
" QOL stuff
Plug 'mbbill/undotree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'mhartington/formatter.nvim'

" searching and visual stuffs
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
Plug 'junegunn/fzf.vim'
Plug 'wfxr/minimap.vim'
Plug 'itchyny/lightline.vim'

Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/sonokai'


" specialized lang stuff
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


" code highlight
Plug 'sheerun/vim-polyglot'
" lock treesitter to this commit until neovim nightly releases starts working again
Plug 'nvim-treesitter/nvim-treesitter', {'commit': 'd2b8b49ce58a9fef0a8c5f154915a7a117163cd5'}

" time shaming
Plug 'wakatime/vim-wakatime'
call plug#end()

 
colorscheme sonokai
noremap <leader>u :UndotreeToggle<CR>
