return {
  "oysandvik94/curl.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local curl = require("curl")

    curl.setup({
      open_with = "tab",
    })

    vim.keymap.set("n", "<leader>cr", curl.execute_curl, { noremap = true, desc = "Run Curl under Cursor" })
  end,
}
