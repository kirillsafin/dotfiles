return {
  "romgrk/barbar.nvim",
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require("barbar").setup()

    local keymap = vim.keymap

    keymap.set("n", "gt", "<cmd>BufferNext<CR>", { desc = "Next buffer" })
    keymap.set("n", "gT", "<cmd>BufferPrevious<CR>", { desc = "Previous buffer" })

    keymap.set("n", "<C-y>", ":BufferPick<CR>", { desc = "Pick buffer" })
    keymap.set("n", "<leader>tc", ":BufferClose<CR>", { desc = "Close buffer" })
    keymap.set("n", "<leader>tp", ":BufferPin<Cr>", { desc = "Pin buffer" })
  end
}
