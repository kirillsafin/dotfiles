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
      lualine_transparency = false,
      highlight_inactive_windows = true,
    },
  },
  init = function()
    vim.cmd("colorscheme onedark")
  end,
}
