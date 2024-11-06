local api = vim.api

api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.cmd("setlocal nospell")
  end,
})

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "docker-compose*.yml", "docker-compose*.yaml" },
  callback = function()
    vim.cmd("set filetype=yaml.docker-compose")
  end,
})

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.sls",
  callback = function()
    vim.cmd("set filetype=yaml")
  end,
})

-- NOTE: if cpp/hpp file is part of an Ardunio project should be processes by arduino-language-server
-- api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
--   pattern = { "*.cpp", "*.hpp" },
--   callback = function(opts)
--     -- print(vim.inspect(opts))
--   end
-- })
--

local conceallevel_markdown_group = api.nvim_create_augroup("ConcealLevelMarkdown", { clear = true })
api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = conceallevel_markdown_group,
  pattern = "*.md",
  callback = function()
    vim.cmd("setlocal conceallevel=1")
  end,
})
