return {
  "folke/flash.nvim",
  opts = {},
  event = "VeryLazy",
  keys = {
    {
      "<leader>jv",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash [J]ump inside [V]iew",
    },
    {
      "<leader>jt",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash [J]ump inside [T]reesitter",
    },
    {
      "<leader>jr",
      mode = "o",
      function()
        require("flash").remote()
      end,
      desc = "Flash [J]ump [R]emote",
    },
    {
      "<leader>js",
      mode = { "o", "x" },
      function()
        require("flash").treesitter_search()
      end,
      desc = "Flash [J]ump [S]earch",
    },
  },
}
