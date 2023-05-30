require('hardtime').setup{
  max_time = 1000,
  max_count = 5,
  disable_mouse = false,
  hint = true,
  allow_different_key = false,
  resetting_keys = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "c", "C", "d", "x", "X", "y", "Y", "p", "P" },
  restricted_keys = { "h", "j", "k", "l", "-", "+", "gj", "gk" },
  hint_keys = { "k", "j", "^", "$", "a", "i", "d", "y", "c", "l" },
  disabled_keys = { "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>" },
  disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason" }
}
