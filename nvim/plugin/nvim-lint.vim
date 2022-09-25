" au BufReadPost * lua require('lint').try_lint()
" au BufRead * lua require('lint').try_lint()
" au InsertLeave * lua require('lint').try_lint()
