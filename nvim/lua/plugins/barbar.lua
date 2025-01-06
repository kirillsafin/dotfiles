return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("barbar").setup()

    local keymap = vim.keymap

    keymap.set("n", "gt", "<cmd>BufferNext<CR>", { desc = "Next buffer" })
    keymap.set("n", "gT", "<cmd>BufferPrevious<CR>", { desc = "Previous buffer" })

    keymap.set("n", "<C-y>", ":BufferPick<CR>", { desc = "Pick buffer" })
    keymap.set("n", "<leader>tcc", ":BufferClose<CR>", { desc = "Close buffer" })
    keymap.set("n", "<leader>tp", ":BufferPin<CR>", { desc = "Pin buffer" })

    keymap.set("n", "<leader>tsr", ":BufferScrollRight 80<CR>", { desc = "Scroll Tabs to the Right" })
    keymap.set("n", "<leader>tsl", ":BufferScrollLeft 80<CR>", { desc = "Scroll Tabs to the Left" })
    keymap.set("n", "<leader>tcb", ":BufferCloseAllButCurrent<CR>", { desc = "Scroll Tabs to the Left" })
    keymap.set("n", "<leader>tcr", ":BufferCloseBuffersLeft<CR>", { desc = "Scroll Tabs to the Left" })
    keymap.set("n", "<leader>tcl", ":BufferCloseBuffesRight<CR>", { desc = "Scroll Tabs to the Left" })
  end,
}
