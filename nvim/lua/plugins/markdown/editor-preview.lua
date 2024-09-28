return {
  {

    "OXY2DEV/markview.nvim",
    enabled = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Used by the code blocks
    },
    opts = {},
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    enabled = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Used by the code blocks
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
}
