vim.cmd [[ autocmd BufEnter * lua require'completion'.on_attach() ]]

local log_start = function(client)
    print("'" .. client.name .. "' language server started")
end

local lsp = require 'lspconfig' 

lsp.tsserver.setup { 
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false,
        log_start(client)
    end,
}

lsp.diagnosticls.setup{ 
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
        command = "eslint_d",
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
lsp.sumneko_lua.setup({
    -- An example of settings for an LSP server.
    --    For more options, see nvim-lspconfig
    settings = {
      Lua = {
        diagnostics = {
          enable = true,
          globals = { "vim" },
        },
      }
    },

    on_attach = log_start
  })
-- TODO: decide between efm and diagnosticls
-- lsp.efm.setup {
--     on_attach=log_start,
--     init_options = {documentFormatting = true},
--     settings = {
--         rootMarkers={ ".git/"},
--         languages = {
--             -- lua = {{formatCommand = "luafmt --stdin", formatStdin = true}},
--             typescript = {eslint},
--             javascript = {eslint},
--             javascriptreact = {eslint},
--             typescriptreact = {eslint},
--         }
--     }
-- }
--]]
