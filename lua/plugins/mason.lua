return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "buf",
        "prettier",
        "gopls",
        "goimports",
        "gofumpt",
      },
    },
  },
}
