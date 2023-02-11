#### tmux

##### Session
* `tmux new-session -d` - create new session detached
* `tmux switch-client -t "3"` - switch to target session 3
* `tmux switch-session` - switch to next session
* `tmux new-session -d -s "SESSIONNAME" && tmux switch-client -t "SESSIONNAME"` - create new session and attach to it

#### Window

* `tmux neww` - new Window erstellen
* `tmux neww -n WINDOWNAME`
* `Prefix` -> `w` -> `x` - close window
* `tmux neww -n "WINDOWNAME" "ls"` - open tmux window and execute `ls` in this window. After execution tmux will close the window
  * `tmux neww -n "WINDOWSNAME "bash"` 
  * `tmux splip-window -h -c "/home/XXXX/" "ls -al"` - create horizontal split, change directory, execute `ls -al` in running tmux window
* `tmux send-key -t "0:2" aaa` - for example if vim is opened in normal mode. It will switch to insert mode in session:window:pain and add "aa"

#### vim

##### .vimrc
* `set completopt=menuone,noinsert,noselect`
* `highlight Normal guibg=none`
* NeoVim LSP
###### Plugins

* nvim-telesctop/telescope.nvim (only nvim)
  * remap
    * `mode lhs rhs` - Left hand side, right hand site
    * `nnoremap <leader>ps :lua ...` - n = Normal mode; nore = no recursiv execution = search for files with WORD
    * 
* Treessitter
* Undotree
* 

* `:PlugInstall`

##### googlen

* `fun!`
* `augroup`

##### .vimrc split in several files

* `sets` into ./plugin/sets.vim and so on
* `install` script, which creates .config/nvim/plugin, .config/nvim/after/plugin /config/nvim/lua and sets an `ln -s` to .config/nvim. Execute if new file was added to ./plugins folder
