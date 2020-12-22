local fn = vim.fn

local utils = require("utils.formatting_utils")

local check_conf = utils.check_configs
local prettier_conf, eslint_conf = utils.configs[1], utils.configs[2]
local prettier_exe, eslint_exe = utils.executables[1], utils.executables[2]

local get_js_ts_formatter = function()
  local working_dir = fn.getcwd()
  local parse_dir = fn.readdir(working_dir)

  local has_prettier = check_conf(parse_dir, prettier_conf)
  local has_eslint = check_conf(parse_dir, eslint_conf)

  if has_eslint or has_prettier then
    return has_prettier and prettier_exe or eslint_exe
  end

  return nil
end


local js_ts_formatter = {
   get_js_ts_formatter
}

require("formatter").setup(
  {
    logging = true,
    filetype = {
      javascript = js_ts_formatter,
      javascriptreact = js_ts_formatter,
      typescript = js_ts_formatter,
      typescriptreact = js_ts_formatter,
    }
  }
)

vim.cmd [[ autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx Format ]]
