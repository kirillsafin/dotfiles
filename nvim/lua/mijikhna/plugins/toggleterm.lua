return {
  "akinsho/toggleterm.nvim",
  version = '*',
  config = function()
    require("toggleterm").setup({
      direction = "horizontal",
      size = 15,
      shade_terminals = false,
      shading_factor = 30
    })

    vim.keymap.set("n", "<leader>jj", ":ToggleTerm<CR>", { desc = "Toggle terminal", silent = true })
    vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "Exit terminal mode" })
  end
}
