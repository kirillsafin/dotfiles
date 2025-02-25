return {
  "uloco/bluloco.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  piority = 1000,
  lazy = true,
  enabled = false,
  opts = {
    style = "dark", -- "auto" | "dark" | "light"
    transparent = true,
    italics = false,
    terminal = vim.fn.has("gui_running") == 1,
    guicursor = true,
  },
  init = function()
    vim.cmd("colorscheme bluloco")
  end,
}
