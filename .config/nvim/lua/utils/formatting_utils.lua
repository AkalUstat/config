local api = vim.api
local fn = vim.fn

local general_utils = require("utils.general_utils")

local formatting = {}

local prettier_conf  = {".prettierrc"}
local eslint_conf = {".eslintrc"}

local prettier_exe = {
  command = "prettier-eslint",
  args = {"--stdin", "--stdin-filepath", "%filepath"},
}

local eslint_exe = {
  command = "eslint_d",
  args = { api.nvim_buf_get_name(0), "--fix" },
}


local check_conf = function(dir, configs)
  for _, config_file_type in ipairs(configs) do
    if general_utils.check_has(dir, config_file_type) then
      return { true, config_file_type }
    end
  end

  return { false }
end

formatting.executables =  { prettier_exe, eslint_exe }

formatting.pick_js_formatter = function()
  local working_dir = fn.getcwd()
  local parse_dir = fn.readdir(working_dir)

  local has_prettier = check_conf(parse_dir, prettier_conf)
  local has_eslint = check_conf(parse_dir, eslint_conf)

  return has_prettier and prettier_exe or eslint_exe
end

return formatting


