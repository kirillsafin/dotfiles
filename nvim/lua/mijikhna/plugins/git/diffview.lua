return {
  "sindrets/diffview.nvim",
  keys = {
    {
      "n",
      "<leader>gh",
      ":DiffviewOpen<CR>",
      { noremap = true, silent = true }
    },
    {
      "n",
      "<leader>gc",
      ":DiffviewClose<CR>",
      { noremap = true, silent = true }
    },
  },
}
