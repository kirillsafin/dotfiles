return {
  "m4xshen/hardtime.nvim",
  opts = {
    max_time = 1000,
    max_count = 7,
    disable_mouse = false,
    hint = true,
    notification = true,
    allow_different_key = false,
    hint_keys = { "k", "j", "^", "$", "a", "i", "d", "y", "c", "l" },
    disabled_filetypes = {
      "qf",
      "netrw",
      "NvimTree",
      "lazy",
      "mason",
      "terminal",
      "toggleterm",
      "dapui_console",
      "vim-plug",
      "undotree",
      "Trouble",
      "DiffviewFileHistory",
      "help"
    }
  }
}
