return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint" },
      typescript = { "eslint" },
      vue = { "eslint" },
      python = { "pylint" },
      -- css = { "stylelint" },  -- npm install -g stylelint stylelint-config-standard-scss stylelint-config-standard postcss-lit  --> see https://stylelint.io. Create ./stylelintrc.js-> module.exports = { extends: process.env.HOME + "/.npm-packages/lib/node_modules/stylelint-config-standard" }
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
