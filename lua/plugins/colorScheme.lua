return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Ensure it loads first
    opts = {
      filter = "warm",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  -- { "loctvl842/monokai-pro.nvim", opts = {
  --    filter = "machine",
  --  } },
  --  {
  --    "LazyVim/LazyVim",
  --    opts = {
  --      colorscheme = "monokai-pro",
  --    },
  --  },
  -- { "ellisonleao/gruvbox.nvim" },
  --  {
  --    "LazyVim/LazyVim",
  --    opts = {
  --      colorscheme = "gruvbox",
  --    },
  --  },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "gruvbox",
  --     },
  --   },
}
