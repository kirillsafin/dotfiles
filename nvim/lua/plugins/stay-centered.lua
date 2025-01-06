return {
  "arnamak/stay-centered.nvim",
  enabled = true,
  config = function()
    local stay_centered = require("stay-centered")

    stay_centered.setup({})

    vim.keymap.set({ "n" }, "<leader>st", stay_centered.toggle, { desc = "Toggle stay-centered.nvim" })
  end,
}
