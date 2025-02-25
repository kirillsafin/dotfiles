return {
  "Shatur/neovim-ayu",
  priority = 1000,
  enabled = false,
  lazy = true,
  init = function()
    vim.cmd("colorscheme ayu-dark")
    vim.api.nvim_set_hl(0, "Normal", { bg = nil, ctermbg = nil })
  end,
}
