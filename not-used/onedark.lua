return {
  "navarasu/onedark.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  opts = {
    style = "darker", -- Choose between 'darker', 'deep', 'warmer'
    transparent = true,
    lualine = {
      transparent = true, -- lualine center bar transparency
    },
    colors = {}, -- Override default colors
    highlights = {
      DiagnosticHint = { fg = "#0093c4" },
      WinSeparator = { fg = "#A0A0A0" },
    }, -- Override highlight groups
    diagnostics = {
      darker = true, -- darker colors for diagnostic
      undercurl = true, -- use undercurl instead of underline for diagnostics
      background = true, -- use background color for virtual text
    },
  },
  init = function()
    require("onedark").load()
    vim.cmd("colorscheme onedark")
  end,
}
