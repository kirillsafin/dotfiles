return {
  "nvim-pack/nvim-spectre",
  -- "MagicDuck/grug-far", -- altrenative to nvim-spectre, uses rg
  keys = {
    {
      "<leader>ss",
      "<cmd>lua require('spectre').open()<CR>",
      { noremap = true, silent = true }
    },
    {
      "<leader>sr",
      "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
      { noremap = true, silent = true }
    },
    {
      "<leader>sw",
      "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
      { noremap = true, silent = true }
    },
  },
  config = true
}
