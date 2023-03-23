"KEY MAPPINGS------------------------- {{{                                      
"global
nnoremap <CR> o<Esc>

" embedded terminal
tnoremap <Esc> <C-\><C-n>

nnoremap <silent> <leader>ols :call OpenLifeServer()<CR><CR>
nnoremap <silent> <leader>dls :call CloseLifeServer()<CR><CR>

" TELESCOPE
nnoremap <silent><C-p> <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" LSP
nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gD :lua vim.lsp.buf.declaration()<CR>                  
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>gf :lua vim.lsp.buf.formatting()<CR>                   
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vsf :lua vim.diagnostic.open_float()<CR>
nnoremap <leader>vn :lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>vp :lua vim.diagnostic.goto_prev()<CR>
nnoremap <leader>vll :call LspLocationList()<CR>

" vim.diagnostic.config({
"   virtual_text = false, -- Turn off inline diagnostics
" })

" LSPSAGA
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent> <leader>ca :Lspsaga code_action<CR>
vnoremap <silent> <leader>cb :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent> <leader>gk :Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> :lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> :lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>

" LUASNIP
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>
imap <silent> <expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

" NVIM-DAP
nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>`
nnoremap <silent> <S-k> :lua require'dap'.step_out()<CR>
nnoremap <silent> <S-l> :lua require'dap'.step_into()<CR>
nnoremap <silent> <S-j> :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>ds :lua require'dap'.close()<CR>
nnoremap <silent> <leader>dn :lua require'dap'.continue()<CR>
nnoremap <silent> <leader>dk :lua require'dap'.up()<CR>
nnoremap <silent> <leader>dj :lua require'dap'.down()<CR>
nnoremap <silent> <leader>dd_ :lua require'dap'.disconnect();require'dap'.close();require'dap'.run_last()<CR>
nnoremap <silent> <leader>dd= :lua require'dap'.disconnect({restart=false, terminateDebugee = false});require'dap'.close();require'dap'.run_last()<CR>
nnoremap <silent> <leader>dr :lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l
nnoremap <silent> <leader>di :lua require'dap.ui.variables'.hover()<CR>
vnoremap <silent> <leader>di :lua require'dap.ui.variables'.visual_hover()<CR>
nnoremap <silent> <leader>d? :lua require'dap.ui.variables'.scopes()<CR>
nnoremap <silent> <leader>de :lua require'dap'.set_exception_breakpoints({"all"})<CR>
nnoremap <leader>dI :lua require'dap.ui.widgets'.hover()<CR>
nnoremap <leader>d? :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>

nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>`
nnoremap <silent> <leader>dlp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>`
nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>`

nnoremap <leader>duo :lua require'dapui'.open()<CR>
nnoremap <leader>duc :lua require'dapui'.close()<CR>
nnoremap <leader>dut :lua require'dapui'.toggle()<CR>

" NVIM-TREE
nnoremap <silent> <C-b> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>

" BARBAR
" Move to previous/next
nnoremap <silent> <A-,> :BufferPrevious<CR>
nnoremap <silent> <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent> <A-<> :BufferMovePrevious<CR>
nnoremap <silent> <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent> <A-1> :BufferGoto 1<CR>
nnoremap <silent> <A-2> :BufferGoto 2<CR>
nnoremap <silent> <A-3> :BufferGoto 3<CR>
nnoremap <silent> <A-4> :BufferGoto 4<CR>
nnoremap <silent> <A-5> :BufferGoto 5<CR>
nnoremap <silent> <A-6> :BufferGoto 6<CR>
nnoremap <silent> <A-7> :BufferGoto 7<CR>
nnoremap <silent> <A-8> :BufferGoto 8<CR>
nnoremap <silent> <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent> <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent> <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s> :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <leader>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <leader>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <leader>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <leader>bw :BufPferOrderByWindowNumber<CR>

" WhichKey
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" DiffviewOpen
nnoremap <silent> <leader>gh :DiffviewOpen<CR>
nnoremap <silent> <leader>gc :DiffviewClose<CR>
" }}} 
