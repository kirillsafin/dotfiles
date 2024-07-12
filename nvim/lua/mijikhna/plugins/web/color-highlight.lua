return {
  {
    "uga-rosa/ccc.nvim",
    opts = {}
  },
  {
    'brenoprata10/nvim-highlight-colors',
    opts = {},
    config = function()
      local highlight_color = require("nvim-highlight-colors")

      highlight_color.setup({
        render = "virtual",
        virtual_symbol_position = 'eow',
        virtual_symbol_prefix = ' ',
        virtual_symbol_suffix = '',
        exclude_filetypes = { "lazy" }
      })

      -- highlight_color.turnOff()
    end,
  }
}
