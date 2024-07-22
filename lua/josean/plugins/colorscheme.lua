return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    local transparent = false -- set to true if you would like to enable transparency

    local bg = "#23272e"
    local bg_dark = "#1e2228"
    local bg_highlight = "#143652"
    local bg_search = "#0A64AC"
    local bg_visual = "#275378"
    local fg = "#c3c4c4"
    local fg_dark = "#5c6370"
    local fg_gutter = "#bfabad"
    local border = "#547998"
    local function setup_onedark_pro_colors()
      return {
        bg = "#282c34",
        bg_dark = "#21252b",
        bg_float = "#21252b",
        bg_highlight = "#2c313c",
        bg_popup = "#21252b",
        bg_search = "#3e4451",
        bg_sidebar = "#21252b",
        bg_statusline = "#21252b",
        bg_visual = "#3e4451",
        black = "#21252b",
        blue = "#61afef",
        blue0 = "#61afef",
        blue1 = "#56b6c2",
        blue2 = "#61afef",
        blue5 = "#61afef",
        blue6 = "#61afef",
        blue7 = "#61afef",
        border = "#282c34",
        border_highlight = "#61afef",
        comment = "#5c6370",
        cyan = "#56b6c2",
        dark3 = "#3e4451",
        dark5 = "#3e4451",
        error = "#e06c75",
        fg = "#abb2bf",
        fg_dark = "#abb2bf",
        fg_float = "#abb2bf",
        fg_gutter = "#3e4451",
        fg_sidebar = "#abb2bf",
        git = {
          add = "#98c379",
          change = "#e5c07b",
          delete = "#e06c75",
        },
        green = "#98c379",
        green1 = "#98c379",
        green2 = "#98c379",
        hint = "#56b6c2",
        info = "#61afef",
        magenta = "#c678dd",
        magenta2 = "#c678dd",
        none = "NONE",
        orange = "#d19a66",
        purple = "#c678dd",
        rainbow = {
          red = "#e06c75",
          orange = "#d19a66",
          yellow = "#e5c07b",
          green = "#98c379",
          cyan = "#56b6c2",
          blue = "#61afef",
          purple = "#c678dd",
        },
        red = "#e06c75",
        red1 = "#e06c75",
        teal = "#56b6c2",
        terminal_black = "#414868",
        todo = "#61afef",
        warning = "#e5c07b",
        yellow = "#e5c07b",
      }
    end

    require("tokyonight").setup({
      on_colors = function(colors)
        local custom_colors = setup_onedark_pro_colors()
        for k, v in pairs(custom_colors) do
          colors[k] = v
        end
      end,
      -- style = "night",
      -- transparent = transparent,
      -- styles = {
      --   sidebars = transparent and "transparent" or "dark",
      --   floats = transparent and "transparent" or "dark",
      -- },
      -- on_colors = function(colors)
      --   colors.bg_float = tokyonight_custom.bg_float
      --
      --   colors = tokyonight_custom
      -- end,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}
