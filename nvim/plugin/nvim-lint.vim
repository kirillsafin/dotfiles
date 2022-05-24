au BufWritePost <buffer> lua require('lint').try_lint()
au TextChanged lua require('lint').try_lint()
