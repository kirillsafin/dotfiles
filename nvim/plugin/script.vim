" VIMSCRIPT------------------------ {{{

" Enable code folding
" augroup filetype_vim
"   autocmd!
"   autocmd FileType vim setlocal foldmethod=marker
" augroup filetype_vim

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

augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END

" }}}
