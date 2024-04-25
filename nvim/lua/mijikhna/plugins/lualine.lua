return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local colors = {
      blue = "#61afef",
      green = "#98c379",
      violet = "#c678dd",
      yellow = "#e5c07b",
      red = "#e06c75",
      fg = "#abb2bf",
      bg = "#282c34",
      inactive_bg = "#3e4452",
    }

    local lualine_theme = {
      normal = {
        a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      insert = {
        a = { fg = colors.bg, bg = colors.green, gui = "bold" },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      visual = {
        a = { fg = colors.bg, bg = colors.violet, gui = "bold" },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      command = {
        a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      replace = {
        a = { fg = colors.bg, bg = colors.red, gui = "bold" },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.bg },
      },
      inactive = {
        a = { fg = colors.bg, bg = colors.inactive_bg, gui = "bold" },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.inactive_bg },
      },
    }

    lualine.setup({
      options = {
        -- theme  = 'powerline',
        theme = 'edge',
        -- theme = lualine_theme,
        -- section_separators = '',
        -- component_separators = '',
      },
      sections = {
        lualine_c = {},
        lualine_x = {
          {
            lazy_status.updates,
            -- padding = { left = 1, right = 1 },
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
            { "encoding"} , { "fileformat" }, {"filetype" }
        }
      }
    })
  end
}
