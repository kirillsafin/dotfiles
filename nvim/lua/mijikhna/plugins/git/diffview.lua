return {
  "sindrets/diffview.nvim",
  keys = {
    {
      "<leader>gh",
      ":DiffviewOpen<CR>",
      { noremap = true, silent = true }
    },
    {
      "<leader>gc",
      ":DiffviewClose<CR>",
      { noremap = true, silent = true }
    },
  },
  opts = {}
}
