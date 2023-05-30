require('lint').linters_by_ft = {
  javascript = { 'eslint' },
  typescript = { 'eslint' },
  vue = { 'eslint' },
  css = { 'stylelint' },  -- npm install -g stylelint stylelint-config-standard-scss stylelint-config-standard postcss-lit  --> see https://stylelint.io. Create ./stylelintrc.js-> module.exports = { extends: process.env.HOME + "/.npm-packages/lib/node_modules/stylelint-config-standard" }
}

vim.cmd([[ au BufRead * lua require('lint').try_lint() ]])
-- vim.cmd([[ au InsertLeave * lua require('lint').try_lint() ]])
vim.cmd([[ au BufWritePost * lua require('lint').try_lint() ]])
