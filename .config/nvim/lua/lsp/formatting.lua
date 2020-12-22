local api = vim.api

function check_has(table, val)
  for idx, value in ipairs(table) do
    if value == val then
      return true
    end
  end

  return false
end

function check_configs(dir, configs)
  for i, config_file_type in ipairs(configs) do
    if check_has(dir, config_file_type) then
      return true
    end
  end

  return false
end

local prettier_configs  = {".prettierrc"}
local eslint_configs = {".eslintrc"}

function get_js_ts_formatter()
  local working_dir = api.nvim_eval('getcwd()')
  local parse_dir = api.nvim_eval('readdir("' ..working_dir ..'")')

  local has_prettier = check_configs(parse_dir, prettier_configs)
  local has_eslint = check_configs(parse_dir, eslint_configs)

  print(has_eslint)
  return has_prettier and
  {
    exe = "prettier-eslint",
    args = {"--stdin", "--stdin-filepath", api.nvim_buf_get_name(0) },
    stdin = true
  }
  or 
  {
    exe = "eslint_d",
    args = { api.nvim_buf_get_name(0), "--fix" },
    stdin = true
  }
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
