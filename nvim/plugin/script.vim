" VIMSCRIPT------------------------ {{{

" Enable code folding
" augroup filetype_vim
"   autocmd!
"   autocmd FileType vim setlocal foldmethod=marker
" augroup filetype_vim

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
"augroup cursor_off
"    autocmd!
"    autocmd WinLeave * set nocursorline nocursorcolumn
"    autocmd WinEnter * set cursorline cursorcolumn
"augroup END
"
" REQUIRE: install brwoser-sync via npm: npm install -g browser-sync
function OpenLifeServer()
  :!start-live-server
  
  if v:shell_error == 0
    lua require('notify')('Life Sever started', 'info')
  else
    lua require('notify')('Life Sever not started', 'error')
  endif

endfunction

function CloseLifeServer()
  :!stop-live-server

  if v:shell_error == 0
    lua require('notify')('Life Sever stopped', 'info')
  else
    lua require('notify')('Life Sever not stopped', 'error')
  endif
endfunction
" }}}
