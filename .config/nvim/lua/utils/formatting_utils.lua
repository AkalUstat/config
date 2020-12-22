local api = vim.api

local general_utils = require("utils.general_utils")

local formatting = {}

local prettier_configs  = {".prettierrc"}
local eslint_configs = {".eslintrc"}

local prettier_exe = {
  exe = "prettier-eslint",
  args = {"--stdin", "--stdin-filepath", api.nvim_buf_get_name(0) },
  stdin = true
}
local eslint_exe = {
  exe = "eslint_d",
  args = { api.nvim_buf_get_name(0), "--fix" },
  stdin = true
}

formatting.configs = { prettier_configs, eslint_configs }
formatting.executables = { prettier_exe, eslint_exe } 

formatting.check_configs = function(dir, configs)
  for _, config_file_type in ipairs(configs) do
    if general_utils.check_has(dir, config_file_type) then
      return true
    end
  end

  return false
end

return formatting


