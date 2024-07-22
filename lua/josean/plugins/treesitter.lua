return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")
    local install = require("nvim-treesitter.install")
    install.compilers = { "gcc" }
    install.command_extra_args = {
      gcc = { "-Wno-nullability-completeness" },
    }
    -- configure treesitter
    treesitter.setup({
      -- A list of parser names, or "all" or just the "maintained" ones
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "proto",
      },

      sync_install = false,
      highlight = {
        enable = true, -- `false` will disable the whole plugin
      },
    })
  end,
}
