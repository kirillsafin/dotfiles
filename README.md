# Contents

## nvim

### Vim General

![Vim Cheat Sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)

### Plugins

#### Color Scheme

[`gruvbox-community/gruvbox`](https://github.com/gruvbox-community/gruvbox)  
[`overcache/NeoSolarized`](https://github.com/overcache/NeoSolarized)  
[`rose-pine/neovim`](https://github.com/rose-pine/neovim)  
[`thedenisnikulin/vim-cyberpunk`](https://github/thedenisnikulin/vim-cyberpunk) - Cyperpunk Theme  
[`ray-x/aurora`](https://github.com/ray-x/aurora)  
[`Shatur/neovim-ayu`](https://github.com/Shatur/neovim-ayu)  
[`savq/melange-nvim`](https://github.com/savq/melange-nvim)  
[`rebelot/kanagawa.nvim`](https://github.com/rebelot/kanagawa.nvim)  

#### LSP

[`neovim/nvim-lspconfig`]('https://github.com/neovim/nvim-lspconfig')  
[`tami5/lspsaga.nvim`]('https://github.com/tami5/lspsaga.nvim')  
`hrsh7th/cmp-nvim-lsp`  
`hrsh7th/cmp-buffer`  
`hrsh7th/cmp-path`  
`hrsh7th/cmp-cmdline`  
[`hrsh7th/cmp-nvim-lsp-signature-help`](https://github.com/hrsh7th/cmp-nvim-lsp-signature-help)  
`hrsh7th/nvim-cmp`  
`onsails/lspkind-nvim`  
[`mfussenegger/nvim-lint`](https://github.com/mfussenegger/nvim-lint) - Lint Plugin  
[`mfussenegger/nvim-jdtls`](https://github.com/mfussenegger/nvim-jdtls) - Java LSP  

Mappings:

* `leader,vd` - jump to definition
* `leader,gD` - jump to declaration
* `leader,vrr` - jump to references
* `leader,vi` - jump to implementation
* `Ctrl+h` - show signature
* `leader,gf` - format file
* `leader>vrn` - rename variable
* `leader,vh` - hover
* `leader,vca` - show code actions
* `leader,vsd` - show diagnostics
* `leader,vsf` - show error message in float window
* `leader,vn` - go to next diagnostic message
* `leader,vp` - go to previous diagnostic message
* `leader>vll` - ?
* `gh` - show definitions
* `leader,ca` - show code action
* `leader,cb` - show code action 2
* `leader,cb` - show docs
* `Ctrl+f` - scroll in code action up
* `Ctrl+b` - scroll in code action down
* `gs` - show signature
* `gd` - show definition

* `Leader` -> `vd` - open definition
* `Leader` -> `gD` - open declaration
* `Leader` -> `vrr` - open references
* `Leader` -> `vi` - open implementation
* `Leader` -> `vsh` - open signature
* `Leader` -> `gf` - format
* `Leader` -> `vrn` - rename
* `Leader` -> `vh` - hover
* `Leader` -> `vca` - code action ?
* `Leader` -> `vsd` - show line diagnostic
* `Leader` -> `vn` - got to next in diagnostic
* `Leader` -> `vp` - got to previous in diagnostic
* `Leader` -> `vll` - show lsp location list

* `gh` - open lsp finder
* `Leader` -> `ca` - open lsp finder
* `Leader` -> `ca` - open code action
* `K` - hover
* `C+f` - scroll up
* `C+b` - scroll down
* `gs` - show signature
* `gd` - show preview definition

* `Tab` - jump to next part of the snippet
* `Tab` -
* `S-Tab` - 
* `C+E` - 

#### Snippets

`L3MON4D3/LuaSnip`  
`rafamadriz/friendly-snippets`  
`saadparwaiz1/cmp_luasnip`  

Mappings:

* `Tab`
* `Ctrl+e` = select snippet

#### Languages

##### Markdown

[`plasticboy/vim-markdown`](https://github.com/plasticboy/vim-markdown)  
[`iamcco/markdown-preview.nvim`](https://github.com/iamcco/markdown-preview.nvim)  
Mappings:

* `leader, mt` - toggle markdown view
* `leader, mo` - open markdown view
* `leader, ms` - close markdown view

##### CSS

[`norcalli/nvim-colorizer.lua`](https://github.com/norcalli/nvim-colorizer.lua)  

#### User Experience 

##### Status Bar

[`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)  

##### Project Tree
`kyazdani42/nvim-web-devicons`  
`kyazdani42/nvim-tree.lua`  
Mappings:

* `<CR>` or `o` on `..` - cd in the above directory, open file, follow symlink
* `<C-]>` - cd in the directory under the cursor
* `<BS>` - close current opened directory or parent
* `a` - add a file. Adding a directory requires leaving a leading / at the end of the path.
* `r` rename a file
* `<C-r>` - rename a file and omit the filename on input
* `x` - add/remove file/directory to cut clipboard
* `c` - add/remove file/directory to copy clipboard
* `y` - copy name to system clipboard
* `Y` - copy relative path to system clipboard
* `gy` - copy absolute path to system clipboard
* `p` - paste from clipboard. Cut clipboard has precedence over copy (will prompt for confirmation)
* `d` - delete a file (will prompt for confirmation)
* `D` - trash a file (configured in setup())
* `]c` -  go to next git item
* `[c` - go to prev git item
* `-` - navigate up to the parent directory of the current file/directory
* `s` open a file with default system application or a folder with default file manager (if you want to change the command used to do it see :h nvim-tree.setup under system_open)
* `<C-v>` - open the file in a vertical split
* `<C-x>` - open the file in a horizontal split
* `<C-t>` - open the file in a new tab
* `<Tab>` - open the file as a preview (keeps the cursor in the tree)
* `I` - toggle visibility of hidden folders / files
* `H` - toggle visibility of dotfiles (files/folders starting with a .)
* `R` - refresh the tree

#### General

[`lukas-reineke/indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim)
`romgrk/barbar.nvim`  
Mappings:

* `Ctrl+y` - pick buffer
* `Alt+p` - pin buffer
* `Alt+c` - close buffer
* see also [mappings.vim](./nvim/plugin/mappings.vim)

`rcarriga/nvim-notify`  
[`windwp/nvim-ts-autotag`](https://github.com/nvim-ts-rainbow)  
[`windwp/nvim-autopairs`](http://github.com/nvim-autopairs)  
`folke/todo-comments.nvim`  
[`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)  
Mappings:

* `gcc` - comment out a line (range)
* `gc` - comment out a motion (example `gcap`)
* `gcgc` - ?

[`tpope/vim-surround`](https://github.com/vim-surround) - Autoclose brackets and parenthesis  
`mbbill/undotree`  
<!-- * [`p00f/nvim-ts-rainbow`](https://github.com/p00f/nvim-ts-rainbow) - autoclossing -->   

##### Git

`tpope/vim-fugitive` 
`airblade/vim-gitgutter` 
`nvim-lua/plenary.nvim` 
`sindrets/diffview.nvim` 
Mappings:

* `leader, gh` - open git diff view
* `leader, gc` - close git diff view

##### Teesitter

`nvim-treesitter/nvim-treesitter`  
`nvim-treesitter/playground`  
`nvim-treesitter/nvim-treesitter-context`  

#### File Browsing 

`nvim-lua/plenary.nvim`  
`nvim-telescope/telescope.nvim`  
* install ripgrep (`apt install ripgrep`)
`nvim-telescope/telescope-live-grep-args.nvim`  

Mappings:

* `<C-p>` - open file finder
* `<leader>fg` - open live-grep
* `<leader>fb` - show opened buffer
* `<leader>fh` - show vim help docs
* `<leader>fw` - open grep-string 
* `<leader>sd` - show diagnostics
* `<leader>ff` - search in current file/buffer
* `<leader>fG` - open live-grep-args

#### Debugging

`mfussenegger/nvim-dap`  
`rcarriga/nvim-dap-ui`  
`theHamsta/nvim-dap-virtual-text`  
`mxsdev/nvim-dap-vscode-js`  
`David-Kunz/jester`  
`Weissle/persistent-breakpoints.nvim`  
`rcarriga/cmp-dap`  

Mappings:

* `<leader>dc` - toggle breakpoint 
* `leader,db` - toggle breakpoint
* `Shift+k` - step out
* `Shift+l` - step into
* `Shift-j` - step over
* `leader,ds` - stop debugger
* `leader,dn` - start, continue debugger
* `leader,dk` - ? up
* `leader,dj` - ? down
* `leader,dd_` - stop debugger
* `leader,dd=` - stop debugger but not stop the program
* `leader,dr` - open repl?
* `leader,di` - UI, hover
* `leader,di` - UI, visual_hover (Visual Mode)
* `leader,d?` - UI, scopes?
* `leader,de` - set conditional breakpoint
* `leader,dI` - hover
* `leader,d?` - hover in float
* `leader,dB` - set conditional breakpoint
* `leader,dlp` - set breakpoint with log message
* `leader,dl` - run last
* `leader,duo` - open UI
* `leader,duc` - close UI
* `leader,dut` - toggle UI
*

* `F5` - start, continue()
* `F10` - step over
* `F11` - step into
* `F12` - step out
* `leader,b` - toggle breakpoint 
* `leader,B` - toggle conditional breakpoint
* `leader,lp` - toggle conditional breakpoint with log message
* `leader,dr` - open repl?
* `leader,dl` - run last

#### Others

`liuchengxu/vim-which-key`  
`akinsho/toggleterm.nvim`  
`folke/trouble.nvim`  
`github/copilot.vim`  
Mappings:
* `Ctrl+o` - accept suggestion
* `Ctrl+]` - dismiss suggestion
* `Meta+]` - next suggestion
* `Meta+[` - previous suggestion
* `Meta+\` - do suggestion

`jackMort/ChatGPT.nvim`  
Mappings:
* `C-Enter` to submit.
* `C-y` copy/yank last answer.
* `C-o` Toggle settings window.
* `Tab` Cycle over windows.
* `C-m` Cycle over modes (center, stick to right).
* `C-c` to close chat window.
* `C-u` scroll up chat window.
* `C-d` scroll down chat window.
* `C-k` copy/yank code from last answer.
* `C-n` Start new session.
* `C-i` use response as input.
* `C-d` view the diff between left and right panes and use diff-mode commands
`MunifTanjim/nui.nvim`  

### Live Server


see [script.vim](./nvim/plugin/script.vim). Install browser-sync (`npm install -g browser-sync`)
Mappings:

* `leader, lso` - start LiveServer
* `leader, lsc` - close LiveServer

## tmux
