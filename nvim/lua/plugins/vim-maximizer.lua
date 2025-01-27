return {
  {
    "szw/vim-maximizer",
    lazy = false,
    enabled = false,
    keys = {
      { "<leader>mm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
    },
  },
  {
     'declancm/maximize.nvim',
     enabled = false,
     opts = {
       plugins = {
         aerial = { enable = true },
         dapui = { enable = true },
         tree = { enable = true },
       }
     },
     keys = {
      { "<leader>mm", "<cmd>lua require('maximize').toggle()<CR>", desc = "[M]aximize/[M]inimize a Split" },
     }
  },
  {
    "0x00-ketsu/maximizer.nvim",
    enabled = true,
    opts = {},
    keys = {
      { "<leader>mm", "<cmd>lua require('maximizer').toggle()<CR>", desc = "[M]aximize/[M]inimize a Split" },
    }
  }

}
