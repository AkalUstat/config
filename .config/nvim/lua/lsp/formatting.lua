local api = vim.api

local prettier = {
  function()
    return {
      exe = "prettier-eslint",
      args = {"--stdin-filepath", api.nvim_buf_get_name(0) },
      stdin = true
    }
  end
}
require("formatter").setup(
  {
    logging = false,
    filetype = {
      javascript = prettier,
      javascriptreact = prettier,
      typescript = prettier,
      typescriptreact = prettier,
    }
  }
)


