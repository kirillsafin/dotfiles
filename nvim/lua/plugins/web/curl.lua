return {
  "oysandvik94/curl.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local curl = require('curl')

    curl.setup({})

    vim.keymap.set("n", "<leader>cr", curl.execute_curl,
      { noremap = true, silent = true, desc = "Run Curl under cursor" })
  end
}
