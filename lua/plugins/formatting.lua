return {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        lsp_format = "never",
      },
      formatters_by_ft = {
        c = { "clang-format" },
        cmake = { "cmake-format" },
        cpp = { "clang-format" },
        css = { "prettier" },
        html = { "prettier" },
        java = { "astyle" },
        javascript = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        nix = { "nixpkgs-fmt" },
        php = { "php-cs-fixer" },
        python = { "isort", "black" },
        sh = { "shfmt" },
        ["typescript"] = { "prettier" },
        yaml = { "prettier" },
        proto = { "buf" },
      },
      formatters = {
        astyle = {
          command = "astyle",
          prepend_args = { "-s2", "-c", "-J", "-n", "-q", "-z2", "-xC80" },
        },
        ["clang-format"] = {
          command = "clang-format",
          prepend_args = { "--style=file", "-i" },
        },
        ["cmake-format"] = {
          command = "cmake-format",
          prepend_args = { "-i" },
        },
        nix = {
          command = "nixpkgs-fmt",
        },
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          prepend_args = { "fix", "--rules=@PSR12" },
        },
        prettier = {
          command = "prettier",
          prepend_args = { "-w" },
        },
        prettierd = {
          command = "prettierd",
          prepend_args = { "-w" },
        },
        shfmt = {
          command = "shfmt",
          prepend_args = { "-i", "0", "-sr", "-kp" },
        },
      },
    },
  }
