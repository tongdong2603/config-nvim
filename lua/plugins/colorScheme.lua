return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    opts = {
      filter = "onedark_dark",
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_vivid",
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
