return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  opts = {
    options = {
      cursorline = false,
      transparency = true,
      terminal_colors = true,
      lualine_transparency = true,
      highlight_inactive_windows = true,
    },
    highlights = {
      WinSeparator = { fg = "#808080" },
    },
  },
  init = function()
    vim.cmd("colorscheme onedark")
  end,
}
