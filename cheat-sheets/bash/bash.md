* `META` = `ALT`

* `CTRL + b` - one char back
* `CTRL + f` - one char forward
* `CTRL + d` - delete char under cursor
* `CTRL + _` or `CTRL + x, CTRL + u` - undo last EDITING command

* `CTRL + a` - move to the start of the line
* `CTRL + e` - move to the end of the line
* `META + f` - move forward a word
* `META + b` - move backward a word
* `CTRL + l` - clear the screen (doesn't work)
* `CTRL + k` - remove text from cursor position to end of line (doesn't work)
* `META + d` - remove text from cursor to next word
* `META + DEL` - remove text from cursor to start of current word
* `CTRL + w` - remove text to previous whitespace
* `CTRL + y` - yank deleted text
* `META + y` - rotate kill-ring and yank the top word

* `META-NUMBER` - repeat counter for a command

* `CTRL + r` - incremental search backwards
* `CTRL + s` - incremental search forwards
* `ESC` or `CTRL + J` - terminate incremental search
* `CTRL + g` - terminate incremental search and restore the line

* `CTRL + c, CTRL + r` - reread .inputrc file (Readline init file = override default setting for terminal)
* <https://www.gnu.org/software/bash/manual/html_node/Readline-Init-File.html#Readline-Init-File>

### Moving commands
* <https://www.gnu.org/software/bash/manual/html_node/Bindable-Readline-Commands.html#Bindable-Readline-Commands> reset command/shortcuts in .inputrc

* `CTRL + a` - move cursor to start of the line
* `CTRL + e`
* `CTRL + f` - move forward a char
* `CTRL + b`
* `META + f` - move forward to end of next word
* `META + b` - move backward ...
* `META + CTRL + f` - move to end of next word
* `META + CTRL + b`
* `META + CTRL + l` - clear display
* `CTRL + l` - clear screen

### History commands

* `CTRL + p` - move back through history
* `CTRL + n`
* `META + <` - move to first line in the history
* `META + >`
* `CTRL + r` - reverse search
* `CTRL + s`
* `META + p` 
* `META + n`
* `META + CTRL + y` - insert first argument to previous command
* `META + .` or `META + _` - insert last argument to previous command
* `CTRL = o` - accept current line




