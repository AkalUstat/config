local log_start = function(client)
    print("'" .. client.name .. "' language server started")
end

local custom_attach = function(client)
    log_start(client)
    require'completion'.on_attach(client)
end

local lsp = require 'lspconfig' 
local eslint = require("lsp/eslint")

lsp.tsserver.setup { 
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false,
        custom_attach(client)
    end,
}

-- TODO: reimplement this when things are better
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
