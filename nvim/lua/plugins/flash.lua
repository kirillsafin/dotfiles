return {
  "folke/flash.nvim",
  opts = {},
  event = "VeryLazy",
  keys = {
    {
      "<leader>js",
      mode = { "n", "x", "o" },
      function() require("flash").jump() end,
      desc = "Flash"
    },
    {
      "<leader>jm",
      mode = { "n", "x", "o" },
      function() require("flash").treesitter() end,
      desc = "Flash Treesitter"
    },
    {
      "<leader>jR",
      mode = "o",
      function() require("flash").remote() end,
      desc = "Remote Flash"
    },
    {
      "<leader>jM",
      mode = { "o", "x" },
      function() require("flash").treesitter_search() end,
      desc = "Treesitter Search"
    },
  },
}
