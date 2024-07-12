return {
  "numToStr/FTerm.nvim",
  event = "VeryLazy",
  config = function()
    local f_term = require("FTerm")
    f_term.setup({})
    local keymap = vim.keymap

    keymap.set("n", "<leader>jj", f_term.toggle, { desc = "Toggle terminal", silent = true })
    keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "Exit terminal mode" })
    keymap.set("n", "<leader>jo", f_term.open, { noremap = true, desc = "Exit terminal mode" })
    keymap.set("n", "<leader>jc", f_term.close, { noremap = true, desc = "Exit terminal mode" })
    keymap.set("n", "<leader>je", f_term.exit, { noremap = true, desc = "Exit terminal mode" })
  end
}
