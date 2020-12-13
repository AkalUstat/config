local cmd = vim.cmd
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  cmd [['!git clone https://github.com/wbthomason/packer.nvim '..install_path]]
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup (
  function()
      use {'wbthomason/packer.nvim', opt = true}
      use  'mbbill/undotree'
      use { 'christoomey/vim-tmux-navigator' }
      use { 'tpope/vim-fugitive' }
      use { 'tpope/vim-surround' }
      use { 'tpope/vim-commentary' }
      use {'neovim/nvim-lspconfig'}
      use {'nvim-lua/completion-nvim'}
      use {'mhartington/formatter.nvim'}   
      -- TODO: somehow get settings to work, using telescope for now
      -- use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
      -- use { 'junegunn/fzf.vim' }
      use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
      }
      use {'wfxr/minimap.vim'}
      use {'itchyny/lightline.vim'}
      use {'ryanoasis/vim-devicons'}
      use {'sainnhe/sonokai'}
      use {'iamcco/markdown-preview.nvim', run = function() vim.fn["cd app && yarn install"]() end }
      use {'sheerun/vim-polyglot'}
      use {'nvim-treesitter/nvim-treesitter'}
      use {'wakatime/vim-wakatime'}
  end
) 
