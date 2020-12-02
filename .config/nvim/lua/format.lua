local eslintFormatter = {
  function() 
    return {
      exe = "eslint",
      args = {vim.api.nvim_buf_get_name(0), '--fix'},
      stdin = true
    }
  end
}
require'formatter'.setup({
  logging = false,
  filetype = {
    javascript = eslintFormatter,
    typescript = eslintFormatter,
    javascriptreact = eslintFormatter,
    typescriptreact = eslintFormatter,
    rust = {
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout"},
          stdin = true
        }
      end
    }
  }

})
