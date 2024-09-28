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
    }

    lint.linters.pylint.cmd = 'python'
    lint.linters.pylint.args = { '-m', 'pylint', '-f', 'json' }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>rl", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
