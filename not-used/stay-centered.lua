return {
  "arnamak/stay-centered.nvim",
  enabled = false,
  config = function()
    local stay_centered = require("stay-centered")

    stay_centered.setup({})
    stay_centered.deactivate()

    vim.keymap.set({ "n" }, "<leader>sc", stay_centered.toggle, { desc = "Toggle [S]tay-[C]entered.nvim" })

    vim.opt.scrolloff = 25
  end,
}
