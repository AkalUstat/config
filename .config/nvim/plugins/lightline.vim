let g:lightline = {
			\ 'active': {
			\		'left': [ [ 'mode', 'paste' ], ['gitbranch', 'modified'], ['relativePath'] ],
			\		'right': [['filename', 'filetype'], ['percent'], ['lineinfo'] , ],
			\},
			\ 'component_function': {
			\ 'gitbranch': "FugitiveHead"
			\ },
			\}
