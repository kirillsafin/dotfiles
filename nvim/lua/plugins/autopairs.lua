return {
  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    enabled = false,
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function()
      local autopairs = require("nvim-autopairs")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")

      autopairs.setup({
        check_ts = true, -- enable treesitter
        ts_config = {
          lua = { "string" },
          javascript = { "template_string" },
          java = false,
        },
      })

      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    enabled = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = { "InsertEnter" },
    config = true
  },
  {
    "echasnovski/mini.surround",
    enabled = true,
    event = { "InsertEnter" },
    version = false,
    opts = {},
  }
}
