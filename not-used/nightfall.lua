return {
  "2giosangmitom/nightfall.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  opts = {
    transparent = true,
    default_integrations = true,
    integrations = {
      lazy = { enabled = true },
      telescope = { enabled = true, style = "borderless" },
      illuminate = { enabled = true },
      treesitter = { enabled = true, context = true },
      lspconfig = { enabled = true },
      flash = { enabled = true },
    },
  },
  init = function()
    vim.cmd("colorscheme maron")
  end,
}
