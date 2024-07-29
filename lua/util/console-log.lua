local M = {}

function M.get_visual_selection()
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  local start_line = start_pos[2]
  local start_col = start_pos[3]
  local end_line = end_pos[2]
  local end_col = end_pos[3]

  if start_line == end_line then
    local line = vim.fn.getline(start_line)
    return line:sub(start_col, end_col)
  else
    local lines = vim.fn.getline(start_line, end_line)
    lines[1] = lines[1]:sub(start_col)
    lines[#lines] = lines[#lines]:sub(1, end_col)
    return table.concat(lines, "\n")
  end
end

function M.insert_console_log()
  -- Get the word under the cursor
  local word
  local mode = vim.fn.visualmode()

  if mode == "V" or mode == "v" then
    word = M.get_visual_selection()
  else
    -- Get the word under the cursor
    word = vim.fn.expand("<cword>")
  end
  -- Get the current line and cursor position
  local line = vim.api.nvim_get_current_line()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local indentation = string.match(line, "^%s*")
  local file_name = vim.fn.expand("%:t")
  local current_line = cursor[1]
  if word ~= "" then
    -- Format the log statement with the timestamp and the word
    local log_statement = string.format(
      '%sconsole.log("🔴🔵🏟️ 🇲🇳~ [%s:%s] %s: ", %s);',
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

function M.insert_console_log_json()
  -- Get the word under the cursor
  local word
  local mode = vim.fn.visualmode()
  if mode == "V" or mode == "v" then
    word = M.get_visual_selection()
  else
    -- Get the word under the cursor
    word = vim.fn.expand("<cword>")
  end
  -- Get the current line and cursor position
  local line = vim.api.nvim_get_current_line()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local indentation = string.match(line, "^%s*")
  local file_name = vim.fn.expand("%:t")
  local current_line = cursor[1]
  if word ~= "" then
    -- Format the log statement with the timestamp and the word
    local log_statement = string.format(
      '%sconsole.log("🔴🔵🏟️ 🇲🇳~ [%s:%s] %s: ", JSON.stringify(%s));',
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
