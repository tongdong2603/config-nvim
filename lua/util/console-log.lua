local M = {}

function M.insert_console_log()
  -- Get the word under the cursor
  local word = vim.fn.expand("<cword>")
  -- Get the current line and cursor position
  local line = vim.api.nvim_get_current_line()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local indentation = string.match(line, "^%s*")
  local file_name = vim.fn.expand("%:t")
  local current_line = cursor[1]
  if word ~= "" then
    -- Format the log statement with the timestamp and the word
    local log_statement = string.format(
      '%sconsole.log("🔴🔵🏟️ ~ [%s:%s] %s: ", %s);',
      indentation,
      file_name,
      current_line,
      word,
      word
    )
    -- Insert the log statement on the next line
    vim.api.nvim_buf_set_lines(0, cursor[1], cursor[1], false, { log_statement })
  else
    print("No word found under the cursor.")
  end
end

return M