* `gf` - Open file under Cursor
  * Test: ./ThePrimeagen.md 

### Moving

* `CTRL + u` - page up 
* `CTRL + d` - page down
* `)` - go to start of the following sentence
* `(` - go to start of the previous sentence
* `}` - go to start of the next text block
* `{` - go to start of the previous text block

### Editing

* `yy` - copy line
* `yw` - copy word
* `y$` - copy from cursor to end of the line
* `d0` - delete from cursor to start of the line
* `dgg` - delete from cursor to start of the file
* `dG` - delete from cursor to end of the file
* `x` - delete single char
* `cc` - delete line and enter insert mode

### Replacing text

* `~` - change letter case
* `t<CHAR>` - jump before CHAR
* `f<CHAR>`
* `i<CHAR>` - 

### Searching

* `:bufdo /[PATTERN]` - search in in every opened buffer
* `:g/STRING/d` - delete every line containing STRING

### Multiple Files

* `:sp FILENAME` - open split with FILENAME
* `:vsp FILENAME`
* `:bn` - jump to next buffer
* `:bp`
* `:ls` - show all opened buffers
* `ctrl+w s` - horizontal split
* `ctrl+w v` - vertical split
* `ctrl+w w` - switch between windows
* `ctrl+w q` - quit particular window

### Tabs

* `:tabnew`
* `:tabfirst`
* `:tablast`
* `:tabm n` - move tabs to position n
* `:tabm` - move tab to last position
* `:tabc` - close tab
* `:tabo` - close all tabs
* `:tabdo %/s/foo/bar/g` - execute command in every opened tab
* `:tab ball` - put every opened file into a tab
* `:new FILENAME`
* `:stop` - suspend current vim session
* `:browse e` - invoke file explorer
* `:%!fmt` - align each line
* `!}fmt` - align lines at current cursor position
* `[i]gt` - move to i tab
* `Ctrl+w r` - rotate to the right
* `Ctrl+w h` - move to the left
* `Ctrl+w j` - move to the bottom
* `Ctrl+w k` - move to the top
* `Ctrl+w l` - move to the right
* `Ctrl+w t` - (:tab split) move split to new tab
`Ctrl+w p +` - increase height
`Ctrl+w p -` - decrease height
`Ctrl+w p <` - increase width
`Ctrl+w p >` - decrease width
`Ctrl+w c` (`:close`) - close split
`Ctrl+w q` (`:q`) - close split and quit file
`Ctrl+w o` (`:only`) - close all other splits

### Spelling

* `:set spell spelllang=en_us`
* `:setlocal spelllang=en_us` - turn on spellchecking on local buffer
* `:set nospell`
* `]s`, `[s` - move to misspelled word
* `z=` - show suggestion
