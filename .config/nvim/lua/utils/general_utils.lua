local general_utils = {}

general_utils.check_has = function(table, val)
  for idx, value in ipairs(table) do
    if value == val then
      return true
    end
  end
  return false
end

return general_utils
