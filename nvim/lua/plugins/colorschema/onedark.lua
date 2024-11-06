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
    }, -- Override highlight groups
    diagnostics = {
      darker = false, -- darker colors for diagnostic
      undercurl = true, -- use undercurl instead of underline for diagnostics
      background = false, -- use background color for virtual text
    },
  },
  init = function()
    require("onedark").load()
    -- vim.cmd("colorscheme onedark"),
  end,
}
