
source $HOME/.config/nvim/settings/settings.vim


source $HOME/.config/nvim/color/LSPColors.vim

source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/minimap.vim
source $HOME/.config/nvim/plugins/treesitter.vim
source $HOME/.config/nvim/plugins/markdown.vim
source $HOME/.config/nvim/plugins/lightline.vim
source $HOME/.config/nvim/plugins/formatter.vim
source $HOME/.config/nvim/plugins/fzf.vim

source $HOME/.config/nvim/settings/netrw.vim
source $HOME/.config/nvim/settings/lsp.vim

if exists('g:vscode')
  source $HOME/.config/nvim/vscode/maps.vim
endif
