### Shortcuts
#### Sessions
* `PrefixKey` -> `s` - show all sessions in interactive mode
* `PrefexKey` -> `$` - rename session
* `PrefixKey` -> `d` - detach from session
* `PrefixKey` -> `w` - show sessions with it's windows
* `PrefixKey` -> `(` - go to previous session
* `PrefixKey` -> `)` - got to next session
* `PrefixKey` -> `r` - reload tmux.conf

#### Window
* `PrefixKey` -> `c`/`N` - create window
* `PrefixKey` -> `,` - rename current window
* `PrefixKey` -> `&` - close current window
* `PrefixKey` -> `p` - previous window
* `PrefixKey` -> `n` - next window
* `PrefixKey` -> `b` -> `0-9` - got to Window 0-9
* `PrefixKey` -> `?` - show list of commands
* `PrefixKey` -> `w` - show sessions with windows
* `PrefixKey` -> `f` - find widnow
* `PrefixKey` -> `r` - reload tmux.conf
* `STRG+d` - close window
* `ESC` - go to copy mode

#### Pane
* `PrefixKey` -> `;` - toggle last active pane
* `PrefixKey` -> `%` - split pane horizontally
* `PrefixKey` -> `"` - split pane vertically
* `PrefixKey` -> `{` - move current pane left
* `PrefixKey` -> `}` - move current pane right
* `PrefixKey` -> `q` - show pane number
* `PrefixKey` -> `q` -> `0-9` - switch to pane number 0-9
* `PrefixKey` -> `!` - convert pane to window
* `PrefixKey` -> `x` - close pane
* `PrefixKey` -> `o` - go to next pane
* `PrefixKey` -> `r` - reload tmux.conf
* Arrow keys - resize pane
* `h,j,k,l` - go to pane in vim style

#### Copy Mode

* `PrefixKey -> [` - enter copy mode

* `q` - quite mode
* `h,j,k,l` - navigation
* `J`/`K` - scroll down/up
* `F`/`B` - go to next/previous page
* `$` - go to end of line
* `0` - go to end of line
* `w`/`b` - go to next or previous word
* `/`/`?` - search for a word
* `n` - next search
* `space` - start selection
* `esc` - clear selection
* `y` - copy selection
* `PrefixKey` -> `p` - paste selection

* `:show-buffer` - display buffer_0 contents
* `:capture-pane` - copy entire visible content of pane to a buffer
* `:list-buffers` - show all buffers
* `:choose-buffer` - show all buffers and paste selected
* `:save-buffer buf.txt` - save buffer to buf.txt
* `:delete-buffer -b 1` - delete buffer_1

#### Misc
* `PrefixKey -> :` - enter command mode
* `PrefixKey -> ?` - show keybindings
### Tmux Commands
#### Sessions
* `:new` - start new session
* `:new -s SESSIONNAME` - start new session under name SESSIONNAME
* `:attach -d` - detach other others on the session

#### Window
* `:swap-window -s 2 -t 1` - reorder window, swap 2(src) and 1(dst)
* `:swap-window -t 1` - move current window to the left by one position

#### Pane

* `:setw synchronize-panes` - toggle sync panges = send command to all panes

#### Misc

* `:set -g OPTION` - set OPTION for all sessions
* `:setw -g OPTION` - set OPTION for all windows
* `:set mouse on` - enable mouse mode
* `:list-keys` - show keybindings

### Terminal Commands
#### Sessions

* `tmux`, `tmux new`, `tmux new-session`, - start new session
* `tmux new -s SESSIONNAME` - start new session under name SESSIONNAME
* `tmux ls`, `tmux list-sessions` - show sessions
* `tmux a`, `tmux at`, `tmux attach`, `tmux attach-session` - attach to last session
* `tmux a -t SESSIONNAME`, `tmux at -t SESSIONNAME`, `tmux attach -t SESSIONNAME`, `tmux attach-session -t SESSIONNAME` - attach to session with name SESSIONNAME
* `tmux kill-ses -t SESSIONNAME`, `tmux kill-ses -t SESSIONNAME`
* `tmux kill-session -a -t SESSIONNAME` - kill all session but session with name SESSIONNAME
* `tmux a #` - attach to detached session

#### Window
* `tmux new -s SESSIONNAME -n WINDWOWNAME` - start session with name and window with name

#### Misc

* `tmux list-keys` - show keybindings
* `tmux info` - show every session, window, pane

### Others

* `tmux` - wird neue tmux Session geöffnen
* `tmux list-sessions` - laufen tmux Session anzeigen
* `tmux attach-session [SESSION_NAME]` - Attachen zur laufen Tmux Session
* `tmux kill-server` - alle tmux Session usw. schließen
* Default Prefix Key ist `STRG+b` - um einen tmux Befehl auszuführen
  * z.B: `STRG+b` + `"` - Pane öffnen
  * mit `exit` - Pane schließen
  * z.B. `STRG-b` -> `:` -> `split-window` - Fenster vertikal splitten bzw. neue Pane erstellen
* `tmux list-sessions` - tmux Session auflisten
* `tmux new-session -s HELLO` - neue tmux Session aufmachen
* `tmux kill-session -t HELLO` - tmux Session mit Namen HELLO schließen
* `tmux kill-server`

* `STRG-b` -> `s` - zwischen Session springen