return {
  {
    "uga-rosa/ccc.nvim",
    opts = {},
  },
  {
    'brenoprata10/nvim-highlight-colors',
    enabled = false,
    opts = {
      render = "virtual",
      virtual_symbol_position = 'eow',
      virtual_symbol_prefix = ' ',
      virtual_symbol_suffix = '',
      exclude_filetypes = { "lazy" },
      enable_var_usage = false,
    },
  },
  {
    "norcalli/nvim-colorizer.lua",
    enabled = true,
    opts = {},
  }
}
