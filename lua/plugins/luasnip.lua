return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      -- Preconfigured snippets for different languages
      {
        "rafamadriz/friendly-snippets",
        config = function()
          require("luasnip").filetype_extend("typescript", { "javascript", "jsdoc" })
          require("luasnip").filetype_extend("go", {})
          require("luasnip.loaders.from_vscode").lazy_load()
          require("luasnip.loaders.from_lua").load({ paths = { "~/.config/nvim/snippets" } })
        end,
      },
      -- Adds luasnip source to nvim-cmp.
      {
        "nvim-cmp",
        dependencies = {
          -- Luasnip completion source for nvim-cmp
          "saadparwaiz1/cmp_luasnip",
        },
        opts = function(_, opts)
          opts.snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          }
          table.insert(opts.sources, { name = "luasnip" })
        end,
      },
    },
    keys = function()
      return {
        {
          "<Tab>",
          function()
            require("luasnip").jump(1)
          end,
          mode = { "i", "s" },
          silent = true,
        },
        {
          "<S-Tab>",
          function()
            require("luasnip").jump(-1)
          end,
          mode = { "i", "s" },
          silent = true,
        },
      }
    end,
  },
}
