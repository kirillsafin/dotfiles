return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- load if everything else is loaded
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 2000
  end,
  opts = {}
}
