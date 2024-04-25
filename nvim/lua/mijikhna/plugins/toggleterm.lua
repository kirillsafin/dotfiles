return {
  "akinsho/toggleterm.nvim",
  version = '*',
  config = function ()
    require("toggleterm").setup()

    vim.keymap.set("n", "<leader>jj", ":ToggleTerm<CR>", { desc = "Toggle terminal" , silent = true})
  end

}
