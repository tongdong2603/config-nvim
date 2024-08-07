-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  { "n", "v" },
  "<leader>co",
  '<cmd>lua require("util.console-log").insert_console_log()<CR>',
  { desc = "log info", noremap = true, silent = true }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>cj",
  '<cmd>lua require("util.console-log").insert_console_log_json()<CR>',
  { desc = "log JSON.stringify", noremap = true, silent = true }
)
