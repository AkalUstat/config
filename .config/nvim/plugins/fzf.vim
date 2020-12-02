nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
noremap <C-f> :Rg<CR>
noremap <leader>gf :GFiles<CR>
noremap <leader>f :Files<CR>
noremap <leader>b :Buffers<CR>

let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8, 'border': 'sharp', 'highlight': 'Todo'}}
let g:fzf_history_dir = '~/.local/share/fzf-history'

 let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

