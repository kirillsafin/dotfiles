return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- load if everything else is loaded
  enabled = true,
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 1500
  end,
  opts = {}
}
