set completeopt=menu,menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

highlight LspDiagnosticsDefaultError guifg=DarkRed

autocmd BufNewFile,BufRead *docker-compose*.yml,*docker-compose*.yaml set ft=yaml.docker-compose
autocmd BufNewFile,BufRead *.sls set ft=yaml
autocmd BufRead,BufNewFile *.cpp if filereadable('sketch.yaml') | setlocal filetype=arduino | endif

au BufNewFile, BufRead if &ft=='NvimTree' || &ft='dapui_console' || &ft='undotree' || &ft'Trouble' | setlocal nospell endif
