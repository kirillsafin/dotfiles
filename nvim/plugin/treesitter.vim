lua require("treesitter-setup")

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()   

" For Handlebars
au BufRead,BufNewFile *.hbs setlocal filetype=html
