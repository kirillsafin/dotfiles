* `":`, `@:` - vim executed commands registers
* `:p` - print last executed command
* `"=` - expression register

* `mA`, `'A` - set mark/jump to mark
* `ctrl-A`, `ctrl-X` -  increments/decrements numbers in the line
* `q:`, `q/`, `q?` - open history (command, search forwards, search backwards)
* `ctrl-I`, `ctrl-O` - moves cursor to next position from the jumplist
* `gv` - select previous visual mode
* `v_o` - goes to other end of visual mode
* `g ctrl-A`, `g ctrl-X` - increment/decrement numbers in selected block

* `v`, `V`, `ctrl-v` - visual block selector can be used as parts of the vim command (handy block-mode)

* `/regex/`
* `:g/regex/EX` - run EX command on every *regex* occurrence

* `:y {REG}` - copy to register *REG*
* `:windo {EX}` - runs *EX*


* `inoremaps` - maps in insert mode
* `autocmd` - Autocommands
  * Example 1 - whenever events happens in file regex command will be triggered
  ```vim
  augroup {name}
    autocmd! " Prevents duplicate autocommands
    au {events} {file regex} {command}
  augroup END
  ```
  * Example 2 - turn of relative number for insert mode
  ```vim
  augroup every
    autocmd!
    au InsertEnter * set norelativenumber
    au InsertLeave * set relativenumber
  augroup END
  ```
  * Example 3 - higlight TODO-string in markdown files and typing `` :` `` in insert mode will add code fences
  ```
  augroup md
    autocmd!
    au BufNewFile,BufRead *.md syntax keyword todo TODO
    au BufNewFile,BufRead *.md inoremap <buffer> ;` ```<cr><cr>```<Up><Up>
  augroup END
  ```
