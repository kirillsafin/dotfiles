return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("barbar").setup()

    local keymap = vim.keymap

    keymap.set("n", "gt", "<cmd>BufferNext<CR>", { desc = "Next Buffer" })
    keymap.set("n", "gT", "<cmd>BufferPrevious<CR>", { desc = "Previous Buffer" })

    keymap.set("n", "<C-y>", "<cmd>BufferPick<CR>", { desc = "Pick Buffer" })
    keymap.set("n", "<leader>bcb", "<cmd>BufferClose<CR>", { desc = "[C]lose [B]uffer" })
    keymap.set("n", "<leader>bpb", "<cmd>BufferPin<CR>", { desc = "[P]in [B]uffer" })

    keymap.set("n", "<leader>bsr", "<cmd>BufferScrollRight 80<CR>", { desc = "[S]croll Buffers to the [R]ight" })
    keymap.set("n", "<leader>bsl", "<cmd>BufferScrollLeft 80<CR>", { desc = "[S]croll Buffers to the [L]eft" })
    keymap.set("n", "<leader>bcc", "<cmd>BufferCloseAllButCurrent<CR>", { desc = "[C]lose All Buffer but [C]urrent" })
    keymap.set("n", "<leader>bcl", "<cmd>BufferCloseBuffersLeft<CR>", { desc = "[C]lose all Buffers to the [L]eft" })
    keymap.set("n", "<leader>bcr", "<cmd>BufferCloseBuffesRight<CR>", { desc = "[C]lose Buffers to the [R]ight" })
  end,
}
