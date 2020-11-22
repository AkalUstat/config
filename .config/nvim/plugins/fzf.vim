let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND='rg --files""'

if executable('rg')
				let g:rg_derive_root='true'
endif
let g:rg_command = 'rg --vimgrep -S'
