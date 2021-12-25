set completeopt=menu,menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>                   
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>                   
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>                  
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>                   
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>               
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>                              
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>               
"nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>                   
"nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>                   
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>                   
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>                       
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>                            
noremap <silent> ga    <cmd>Lspsaga range_code_action<CR>                      
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR> 

"let g:compe = {}
"let g:compe.enabled = v:true
"let g:compe.autocomplete = v:true
"let g:compe.debug = v:false
"let g:compe.min_length = 1
"let g:compe.preselect = 'enable'
"let g:compe.throttle_time = 80
"let g:compe.source_timeout = 200
"let g:compe.incomplete_delay = 400
"let g:compe.max_abbr_width = 100
"let g:compe.max_kind_width = 100
"let g:compe.max_menu_width = 100
"let g:compe.documentation = v:true

"let g:compe.source = {}
"let g:compe.source.path = v:true
"let g:compe.source.buffer = v:true
"let g:compe.source.calc = v:true
"let g:compe.source.nvim_lsp = v:true
"let g:compe.source.nvim_lua = v:true
"let g:compe.source.vsnip = v:true
"let g:compe.source.ultisnips = v:true
"let g:compe.source.luasnip = v:true

highlight LspDiagnosticsDefaultError guifg=BrightRed

" autoformat on save
augroup Format
  autocmd! * <buffer>
  autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
augroup End

  
