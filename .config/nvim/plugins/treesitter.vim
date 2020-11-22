lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"typescript", "rust", "javascript", "dart", "html", "json", "tsx"}, 
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

