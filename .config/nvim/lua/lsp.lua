local log_start = function(client) 
  print("'"..client.name .. "' language server started")
end

local custom_attach = function(client)
  log_start(client)
  require'completion'.on_attach(client)
end

require'lspconfig'.tsserver.setup{on_attach=custom_attach}
require'lspconfig'.diagnosticls.setup{ 
  on_attach=log_start,
  filetypes = {"javascript", "javascriptreact", "typescript", "typescriptreact", "css", "rust"},
  init_options = {
    filetypes = {
      javascript = "eslint",
      javascriptreact = "eslint",
      javascriptreact = "eslint",
      typescriptreact = "eslint",
    },
    linters = {
      eslint = {
        sourceName = "eslint",
        command = "eslint",
        rootPatterns = { ".git" },
        debounce = 100,
        args = {
          "--stdin",
          "--stdin-filename",
          "%filepath",
          "--format",
          "json",
        },
        parseJson = {
          errorsRoot = "[0].messages",
          line = "line",
          column = "column",
          endLine = "endLine",
          endColumn = "endColumn",
          message = "${message} [${ruleId}]",
          security = "severity",
        };
         securities = {
          [2] = "error",
          [1] = "warning"
        }

      }
    }
}

}
