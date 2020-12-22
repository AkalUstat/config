lua << EOF
  require("settings")
  require("plugins")
  require("lsp")
EOF
" because for some reason when betraying init.lua, netrw makes a comeback
let g:netrw_dirhistmax = 0
augroup vimrc
    autocmd!
		autocmd ColorScheme * highlight LspDiagnosticsVirtualTextError guifg=#fc5d7c guibg=#643B3B
												\ | highlight LspDiagnosticsVirtualTextWarning guifg=#e7c664 guibg=#64603B
												\ | highlight LspDiagnosticsVirtualTextInformation guifg=#76cce0 guibg=#3A626B
												\ | highlight LspDiagnosticsVirtualTextHint guifg=#9ed072 guibg=#536B3A
augroup END


