return {
  "kristijanhusak/vim-dadbod-ui",
  enabled = true,
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", lazy = true },
    { "hrsh7th/nvim-cmp" },
  },

  config = function()
    local cmp = require("cmp")

    cmp.setup.filetype({ "sql" }, {
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "buffer" },
      },
    })
  end,
}
