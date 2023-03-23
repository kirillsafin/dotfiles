-- local lint = require 'lint'

-- lint.linters.eslint.cmd = '~/.npm-packages/bin/eslint';

-- lint.linters_by_ft = {
--   javascript = { 'eslint' },
--   typescript = { 'eslint' }
-- }

require('lint').linters_by_ft = {
  javascript = { 'eslint' },
  typescript = { 'eslint' },
  vue = { 'eslint' },
}

-- vim.cmd([[ au BufRead * lua require('lint').try_lint() ]])
-- vim.cmd([[ au InsertLeave * lua require('lint').try_lint() ]])
-- vim.cmd([[ au BufWritePost * lua require('lint').try_lint() ]])

vim.api.nvim_create_autocmd(
  { "BufRead" },
  {
    callback = function()
      require("lint").try_lint()
    end,
})

vim.api.nvim_create_autocmd(
  { "InsertLeave" },
  {
    callback = function()
      require("lint").try_lint()
    end,
})

vim.api.nvim_create_autocmd(
  { "BufWritePost" },
  {
    callback = function()
      require("lint").try_lint()
    end,
})
