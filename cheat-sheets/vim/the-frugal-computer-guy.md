### 003 - Moving around

* in Bash `vimtutor`
* in vim `:help COMMAND`
* `:help` - Hilfe Start-Page
* `X%` - in Prozent im File navigieren
* `~` - Upper/Lower Case

### 004 - Yank, Put

* `:x` oder `:wq` oder `ZZ` - save and exit
* `yy` oder `Y` - Copy
* `p` oder `P` - Paste bevor/after
* `NUMBER Y` - Anzahl der Zeile kopieren

### 005 - Delete

* `NUMBER D` - Anzahl der Zeilen löschen, wo Cursor gerade steht
* `dd` - Zeile löschen
* `C` - Bis Ende der Zeile löschen und ins Insert Mode wechseln
* `dw` - Word von der Stelle des Cursors löschen
* `ge` - zum Ende des vorherigen Words gehen (funktioniert nicht)

### 006 - Indent and Repeat

* Syntax: `verb noun` oder `NUMBER verb noun` per Default Number ist 1 (für meisten Vim Befehle)
* Geht auch `NUMBER verb NUMBER noun` z.B. `2dw` oder `d2w` also z.B `2d3l` = `d6l`
  * deswegen funktioniert nicht `>` da noun fehlt
  * mit `j` oder `k` kann man mehrere Zeilen einrücken
* `.` - Repeat


### 007 - Search

* Cursor auf Word setzen und `*` (forward) `#` (backwards)
* Search ist Case-Sensitive
  * für Case-Insensitive `/\cWORD`
  * für Case-Sensitive `/\CWORD`
  * `\` - Escape-Character
  * `/\<WORD\>` nur nach Word suchen, was kein Teilword ist
  * `/\/\*\*` z.B. nach ``/**`` suchen
* `:set hlsearch` - Search Highlight on
* `:set nohlsearch` oder `:noh`
* `/` Arrow Up/Down - in den Sucheingaben suchen
* `q/` - Search History suchen. Darin kann man wiederum Eingaben wechseln. Mit Enter Eintrag aussuchen
* `q:` - Command History

### 009 - Replace

* `:4,7s/WORD1/WORD2` - von Zeile 4 bis 7 WORD1 mit WORD2 ersetzen !!! nur erst gefundenes in der Zeile wird ersetzt
* `%s/WROR1/WORD2` - im Ganzen Dokument ersetzen
* `:4,7s/WORD1/WORD2/g` - von Zeile 4 bis 7 WORD1 mit WORD2 ersetzen
* `:4,7s/WORD1/WORD2/gi` - von Zeile 4 bis 7 WORD1 mit WORD2 ersetzen, Auch Case-Insensitive suchen
* `:4,7s/WORD1/WORD2/gI` - von Zeile 4 bis 7 WORD1 mit WORD2 ersetzen, Auch Case-Sensitive suchen
* `:4,7s/WORD1/WORD2/gic` - von Zeile 4 bis 7 WORD1 mit WORD2 ersetzen, Auch Case-Sensitive suchen, Auch bestätigen
  * `a` - all
  * `q` - quite
  * `l` - last change
  * `Cntr + E` oder `Cntr + Y` down/up Navigation
* bei ganzem WORD gelten die gleichen Regel wie beim Suchen

### 010 - Paging

* `Ctrl + f` - Page nach unten
* `Ctrl + b` - Page nach oben
  * mit `NUMBER` davor - Anzahl der Zeilen
* `H` - Highest Line on the Screen
* `L` - Lowest
* `M` - Middle
* `:set scrolloff` - Checken
* `:set scrolloff=999` - Cursor ist immer in der Mitte des Screens

#### 011 - i is for "in"

* `ciw` - Change in Word, wobei ab da wo Word beginnt und nicht der Cursor steht
* `ci"` - Change in Quotes
* `di{` - Delete in {
* `dip` - Delete in Paragraph
* `yi{` - Yank in {
* `cit` - Change in Tag

#### 012 - Vim Info Line, Paste, View, Edit, Join, Sort

* `ctrl+g` - show Infoline (in case if disappears)
* `:set paster` - Setting to properly paste
* `:w FILENAME` - save under
* `:view FILENAME` - open file in readonly mode
* `:w!` - save also readonly File
* `:edit FILENAME`/`:e FILENAME` - open file in edit mode
* `:r FILENAME` - join FILENAME into current file
* `J` - join lines
* `:10, 19sort` - sort from line 10 to 19
* `:10, 19sort!` - sort backwords from line 10 to 19
* `:%sort!` - sort backwords all file
* `:set list` - show line end char

#### 013 - Change List and Jump List

* `g;` - jump to previous change
* `g,` - jump to next change
* `2g;`
* `:changes` - show change list
* `:jumps` - show jump list (list with cursor movements - searches, marks and so on)
* `ctrl+o` - go to next jump
* `ctrl+i` - got to previous jump

#### 014 - Marks

* `ma` - mark line with **a**
* `'a` - go to mark **a**
* ```a`` - go to exact mark position
* `['` / ``[` `` - go to previous mark
* `]'` / ``[` `` - go to next mark
* `:marks` - show all file marks
* `d'a` - delete until mark a
* `y'a` - yank until mark a
* `mA` - create file mark - works like lower-case in the same file.
* `:delmarks A-Z` - remove marks
* `:delmarks a,A`
* `:delmarks!` - delete all marks

#### 015 - Find in line

* `fr` - find **r**
* `Fr` - find backwards
* `tr` - find **r** but where the cursor will be placed
* `dt.` - delete from cursor to found **.**
* `cT ` - change mode from cursor to **space**
* `d/input` - delete from cursor to **input**
* `d?$input` -

#### 016 - Visual Mode

#### 017 - Visual Block Mode

* `ctrl+v` - visual block mode
* use case for example several cursors
* `$` or `0` or similar selection to select for example until the end of the line
* `o` - change corner in visual block
* `R` - replace mode

#### 018, 019 - .vimrc

* can also write `:set nu` instead of `set nu`
* `nnoremap <Up> <Nop` - Up Arrow Key map to nothing. `nnoremap` - if plugins or other settings override this mapping, it doesn't allow to do it
* `abbr ture true` - Autocorrect Dictionary

#### 020, 021, 022 - Tab indent

* `N>>` - do Tab N Times
* in Visual mode
  * `>` - only one time
* in Insert mode
  * `ctrl+v` -> `u0009` or `ctrl+v` -> `ctrl+i` - insert Tab char (`ctrl+v` in insert mode = insert UNICODE)
* `:set list` - show invisible chars
* change Tab char if **show invisible chars**
  * in .vimrc
  * `set listchars=tab:→\, eol:↲`
* `:set exptandtab` - insert Space instead of Tab
* `:set shiftwidth` - shows how much spaces is a tab
* `:set shiftwidth=4`
* `:set noexpandtab` - switch back to tab instead of spaces
* `:set tabstop` - show how much spaces is the tab
* `:set tabstop=4` or `:set ts=4`
* `:set softtabstop` or `:set softtabstop` - how much spaces for tab in insert mode (if 0 => uses tabstop).
* in most cases `shiftwidth`, `tabstop` and `softtabstop` are set equal
* different Tabs for different files
  * `:filetype` - show if file detection is on
  * in .vimrc
  * `filetype indent on`
  * `autocmd Filetype perl setlocal noexpandtab tabstop=4 sw=4 sts=4` - set Tabs for perl files
  * `zt` - move line to top
  * in visual mode -> select -> `=` - format selection
  * `n=` - format from cursor to n lines
  * `e $vimruntime/indent` - shows indent files it is possible to update this files (but if vim will be updated => this fils will be overwritten)
    * `:scriptnames` - shows language indent files
    * `:set sw ts sts` - show shiftwidth, tabstop, softtabstop together

#### 023 - Buffers

* `:buffers` `:ls` - show buffers/opened files
  * `%a` - active buffer
  * `#` - previous selected buffer
  * `+` - shows that buffers has unsaved changes
  * shows also cursor line
* `:bp` - go to buffer previous
* `:bn` - go to buffer next
* `:bp!` - go to previous buffers also if buffer unsaved
* `:set hidden` - disable notification if buffer is unsaved
* `:set nohidden`
* `:b4` - jump to buffer 4
* `:b#` - jump to previous selected buffers
* `ctrl+6` - jump between previous selected buffers and current buffer or maybe `shift+6`
* `:bd` - delete current buffer
* `:e!` - discard changed of current file
* `:q` - actually quite all the buffers

#### 024 - Split-Window

* `:sp` - split horizontal
* `ctrl+w w` - go to next split
* `:vsp` - split vertical
* `ctrl+w s` - split horizontal
* `ctrl+w v` - split vertical
* `vsp FILENAME`
* `ctrl+w x` - change splitten windows
* `:set splitright` - do split to the right
* `ctrl+w r` `ctrl+w R` rotate window down/up
* `ctrl+w t` - to top left window
* `ctrl+w b` - to bottom right window
* `ctrl+w p` - previous window
* `:resize 20` - resize height
* `:resize -20` - resize height
* `:vertical resize 80`
* `ctrw+w _` - max window height
* `ctrw+w |` - max window width
* `ctrl+w o` - keep open only this window
* `:ba` - show all buffer horizontal
* `:vert ba` - show all buffers vert
* `:vert 3ba` - all buffer until 3
* `:vsp | b3` - open buffer 3 vertically
* `:help ctrl-w`

#### 025 - Window Tab

* `:tabedit FILENAME`
* `:tabn` - go to next tab
* `4gt` - 4 Tabs
* `:tabnew`
* `:tabm` - move tab to right
* `:tabm 0` - move tab to 0 pos
* `:tabm 3` - move 3 tabs to right
* `:tab ball` - open all buffers in tabs
* `:set tabpagemax` - show how much max tabs
* `:set tabpagemax=10`
* `:tabonly` - close all tabs but this
* `:tabclose 3` close third tab
* `:drop FILENAME` - closes current tab and opens instead FILENAME
* `:tab split` - opens split int Tab
* `ctrl+w T` - opens split int tab and closes this split

#### 026, 027, 028, 029, 030- Folding Text

* `:set foldmethod` or `:set fdm` - show which foldmethod is set up (5 methods)
* `zf` - in visual mode = set lines to be folded (create fold)
* `zo` - unfold ()
* `zc` - fold/close
* `:mkview` - create view
  * needs view direktory `.vim/view`
  * `:loadview` - load created view
* in .vimrc - automatically create and load view
  * `autocmd BufWinLeave *.* mkview`
  * `autocmd BufWinLEnter *.* loadview`
* `zd` - delete disable fold, not need to be in visual mode
* `zf10j` - create fold for 11 lines
* `:138,158fold` or `138, 158 fold`, `138, 158 fo` - create fold for this lines
* `,+10 fold` - create fold for 10 line from where the cursor is. Works also with `-`
* `zfa{` - create fold for `{}` if the cursor is within this `{}`
* `zn` - open all folds
* `zN` - closes all folds, how it was before last zn
* `:86, 126 foldopen` - open two folds
* `:% foldopen` - open all fold
* `:% foldclose`
* `zj` - jump to next fold
* `zk` - jump to previous fold, but to last line
* `[z` - jumpt to top line of the fold
* `]z` - jump to last line of the fold
* `zE` - eliminate all the folds
* `zfa{` - fold `{}`
* folding works also inside folds, needs to set up from inside
* `zC` - closes all the fold also nested folds
* `zO` - open all folds, but needs to be on closed fold
* `zA` - toggles between `zC` and `zO`
* `:set foldmethod=indent` - indented text will be folded
* `zr` - open/reduce one level of the folds
* `zR` - open/reduce all level of the folds
* `zm` - fold one level
* `zM` - fold all levels
* further folds: manual, indent, syntax, expr - defined by regex, marker - start/end chars, diff - diffs of the files

#### 031, 032, 033, 034 - netrw

* `/DIRNAME` - go to dir
* `-` - go back
* `s` - sort
* `S` - sort sequence
* `F1` or `:help quickhelp` - quick help
  * `ctrl+]` go into help entry
* `D` - delete file
* `R` - rename
* `X` - special -> ?
* press Enter **Quick Help** line shows some more help (several different helps)
* `d` - create dir
* `%` - create file
* `i` - like `ls` options style
* copy file into dir
  * `mt` - mark target dir
  * `mf` - mark file to be cppied
  * `mc` - copy files
  * `mm` - move files but rather rename file
* `o` - open file netrw stays, horizontally opened
* `v` - open file, netrw stays vertically opened (left)
* `:let g:netrw altv=1` - `v` but opens to the right
* `p` - opens like `o` but stays in netrw
* `:let g:netrw preview=1` - `p` opens vertically
* `:Vex` - open netrw vertically
* `:Sex` - open netrw horizontally
* `gh` - toggle hidden files
* `I` - toggle netrw banner
* in .vimrc
  * `:nmap <F5> gh` - map `F5` to gh
  * `let g:hregex='\(^|\s\s)\zs\.\S\+'`
  * `let g:netrw_list_hide=ghregex` - hide hidden files on start
  * `let g:netrw_banner=0` - hide banner on start
  * `namp <F6> I` remap I to F6
  * `let g:netrw_liststyle = 0-3`  - how directory tree will be displayed
  * `let g:netrw_winsize=0` - netrw size is always equal
  * `let g:netrw_preview=1` - open preview to the right
* after renames/changes in the directory it happens that netrw hasn't updated its buffers
* `:find FILE_START_NAME` and use Tab (but only in this dir)
* `:set path` - shows current working dir
* in .vimrc
  * `autocmd FileType netrw setl bufhidden=delete` - fixes buffer problem
  * `set nocompatible` - search only for the prohect
  * `set path+=**` - ? changes somehow working dir
  * afterwards `find` will work
* `:find *.txt` - tab => tab through all .txt files
* `set wildmenu` - shows wildmenu on tab
* `:find FILE_START_NAME` and use Tab
* `:Vex` - open netrw vertically

#### 035 - VimGrep

* similar to `find`
* `:vimgrep /recsIn/g %` or `:vim /recsIn/g %` - search for regEx `recsIn` globaly, `%` only search in opened buffer
  * `:cope` - open list fist findings
  * `:cnext` - jump to next
  * `:cprev`
  * `:clast`, `cfirst`
* `:pwd` - show current vim work dir
* `:vimgrep /recsIn/g **/*` - vimgrep for entire project

#### 036, 037 - Registers

* `yiw` - copy word
* `ctrl+r "` - copy from default register in insert mode
* `ciw`, `ctrl+r` - copy word and then paste
* register to use `a`-`z`
  * `"ayiw` - copy/yank word into a register and also default register
  * `"ap` - paste from register a
  * `ctrl+r a` paste from register a in insert mode
* `"by` - copy/yank in register b
* `cntl+r Ay` - append to register a
* special registers
  * `:register` or `reg`- show what is in vim registers
  * `"/` - reg for path dir -> `"/p` - past working dir name
  * `"%` - reg for document name
  * `":` - last command
  * `".` - last command in . key
  * `""` - default reg
  * `"0` - last yanked register
  * `"-` - deleted register
  * `"1/2/../9` - deleted lines registers

#### 038 - Makro

* record and play sequence of commands
* `q` + `REGISTER` `q` - start to record to register and stop
  * `qm` + Actions + `q`
  * `@m` - play register m
  * `3@m` - play register m 3 times

#### 039 - Numbers

* working with number in vim
* at right side of the numbers last char `ctrl+a` - increment by 1
* at right side of the numbers last char `5ctrl+a` - increment by 5
* at right side of the numbers last char `ctrl+x` - decrement by 1
* `@ap` - print what is in macro **a**
* `:let @b='05j^Xj'` - right macro into register b
* in visual block mode + select block
  * `j ctrl+a` increment like cells in excel
* `:put = range(10,15)` - prints number 10 to 15 on each line
* `:12put=range(10,15)` - print at line 12
* `:0put=range(10,15)` - print at line 1
* `:0put=range(10,15)` - print at line 12
* `:for i in range(10,15) | put = '192.168.9.'i | endfor` - print in for loop
* `:%s/^/\=printf('%-4d', line('.'))` - print each line at the beginning of the line
* `:%s/^/\=printf('%4d ',i line('.'))` - print each line at the beginning of the line
* `:%s/^/\=printf('%04d ',i line('.'))` - print each line at the beginning of the line

#### 040, 041, 042 - Plugins

* vim has its own programming language to write plugins
* Plugins can be installed also manually: download the repo with plugin and add it to **color/** or **doc**, **..** (see best practices)
* in .vimrc set the directory for the plugins `set runtimepath^=~/.vim/color/PLUGIN_FOLDER`
* VimAwesome <vimawesome.com> - lists available plugins
* installed VimPlug by copying the repo .vim/autoload

