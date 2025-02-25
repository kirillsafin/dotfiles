return {
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  enabled = false,
  opts = {
    style = "storm",
    transparent = true,
    styles = {
      comments = "italic",
      floats = "dark",
    },
  },
  init = function()
    vim.cmd("colorscheme tokyonight")
  end,
}
