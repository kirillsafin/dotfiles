return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  opts = {
    options = {
      cursorline = true,
      transparency = true,
      terminal_colors = true,
      lualine_transparency = true,
      highlight_inactive_windows = false,
    },
    highlights = {
      WinSeparator = { fg = "#A0A0A0" },
      TabLineSel = { bg = "#AAAAAA" },
    },
  },
  init = function()
    vim.cmd("colorscheme onedark_vivid")
  end,
}
