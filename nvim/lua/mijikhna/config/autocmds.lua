local api = vim.api

api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.cmd("setlocal nospell")
  end
})

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "docker-compose*.yml", "docker-compose*.yaml" },
  callback = function()
    vim.cmd("set filetype=yaml.docker-compose")
  end
})

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.sls",
  callback = function()
    vim.cmd("set filetype=yaml")
  end
})

api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.cpp",
  callback = function(opts)
    print(vim.inspect(opts))
  end
})
