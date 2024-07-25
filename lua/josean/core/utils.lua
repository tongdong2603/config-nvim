local M = {}

function M.insert_console_log()
  local line = vim.api.nvim_get_current_line()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local indentation = string.match(line, "^%s*")
  local variable_name = string.match(line, "([%w_]+)%s*=") or ""

  if variable_name ~= "" then
    local log_statement = string.format('%sconsole.log("%s: ", %s);', indentation, variable_name, variable_name)
    vim.api.nvim_set_current_line(line .. "\n" .. log_statement)
    vim.api.nvim_win_set_cursor(0, { cursor[1] + 1, #indentation + 10 })
  else
    print("No variable assignment found on the current line.")
  end
end

return M
