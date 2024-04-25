return {
  "nvim-pack/nvim-spectre",
  keys = {
    { "n",
      "<leader>ss",
      "<cmd>lua require('spectre').open()<CR>",
      { noremap = true, silent = true }
    },
    {
      "n",
      "<leader>sr",
      "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
      { noremap = true, silent = true }
    },
    {
      "n",
      "<leader>sw",
      "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
      { noremap = true, silent = true }
    },
  },
}
