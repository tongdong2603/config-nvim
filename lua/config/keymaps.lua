-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set("i", "jk", "<ESC>", { desc = "nomarl mode" })

vim.keymap.set(
  { "n", "v" },
  "<leader>cao",
  '<cmd>lua require("util.console-log").insert_console_log()<CR>',
  { desc = "log info", noremap = true, silent = true }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>cai",
  '<cmd>lua require("util.console-log").insert_console_log_json()<CR>',
  { desc = "log JSON.stringify", noremap = true, silent = true }
)

vim.keymap.set("n", "j", "jzz")

vim.keymap.set("n", "k", "kzz")

vim.keymap.set("n", "0", "0w")

vim.keymap.set("n", "J", "5jzz")
