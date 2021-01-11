local cmd = vim.cmd
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  cmd [['!git clone https://github.com/wbthomason/packer.nvim '..install_path]]
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup (
  function()
    -- Packages
      use {'wbthomason/packer.nvim', opt = true}

    -- Extend Internal Vim
      use 'psliwka/vim-smoothie'
      use 'wellle/targets.vim'

      -- QOL Plugins
      use  {'mbbill/undotree' }
      use { 'christoomey/vim-tmux-navigator' }
      use { 'tpope/vim-fugitive' }
      use { 'tpope/vim-surround' }
      use { 'tpope/vim-commentary' }
      use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'} 

      -- Synatx
      use {'nvim-treesitter/nvim-treesitter'}
      use {'sheerun/vim-polyglot'}

      -- Visual
      use {'datwaft/bubbly.nvim', config = function()  
          vim.g.bubbly_palette = {
          background = "#34343c",
          foreground = "#c5cdd9",
          black = "#3e4249",
          red = "#ec7279",
          green = "#a0c980",
          yellow = "#deb974",
          blue = "#6cb6eb",
          purple = "#d38aea",
          cyan = "#5dbbc1",
          white = "#c5cdd9",
          lightgrey = "#57595e",
          darkgrey = "#404247",
       }  
    end }      
      use 'norcalli/nvim-colorizer.lua'
      use 'ryanoasis/vim-devicons'
      use 'sainnhe/sonokai'  
      use 'junegunn/goyo.vim'
      use 'junegunn/limelight.vim'
    
    -- LSP
      use 'neovim/nvim-lspconfig'
      use 'nvim-lua/completion-nvim'
      use 'mhartington/formatter.nvim'
      use 'dense-analysis/ale'  

    -- Navigation
      use {'kyazdani42/nvim-tree.lua', cmd = "LuaTreeToggle" }
      use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
      }

      -- Time shaming
      use 'wakatime/vim-wakatime'
  end
) 
