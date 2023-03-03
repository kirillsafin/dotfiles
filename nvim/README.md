### Color Schemes

* Gruvbox <https://github.com/gruvbox-community/gruvbox>
* Neosolarized <https://github.com/overcache/NeoSolarized>
* Papercolor <https://github.com/NLKguyen/papercolor-theme>
* Zenboxes <https://github.com/mcchrisch/zenboses.nvim> At the moment doesn't work on debian

### Statusbar

* Lualine <https://github.com/nvim-lualine/lualine.nvim>

### Languages

#### Markdown

* Vim-markdown <https://github.com/plasticboy/vim-markdown>
* Markdown Preview <https://github.com/iamcco/markdown-preview.nvim>

### User Experience

#### Indent-Blankline 

<https://github.com/lukas-reineke/indent-blankline.nvim>

#### Nvim-tree 

* <https://github.com/kyazdani42/nvim-tree.lua> (for better user expericence also devicons <https://github.com/kyazdani42/nvim-web-devicons>)

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

#### Autoclosing Brackets, Quotes

* <https://github.com/windwp/nvim-autopairs>
* <https://github.com/tpope/vim-surround>
  * TODO: commands

#### Color Codeblocks

* <https://github.com/p00f/nvim-ts-rainbow>

#### Comments

* <https://github.com/tpope/vim-commentary>
  * `gcc` - comment out a line
  * `gc` - comment out block (in visual mode)

#### Color Preview in css files

* <https://github.com/norcalli/nvim-colorizer.lua>

####  Git

* <https:://github.com/airblade/vim-gitgutter>

### Autocompletion and Intellisence (LSP)

#### LSP
* <https://github.com/hrsh7th/cmp-nvim-lsp>
* <https://github.com/hrsh7th/cmp-buffer>
* <https://github.com/hrsh7th/cmp-path>
* <https://github.com/hrsh7th/cmp-cmdline>
* <https://github.com/hrsh7th/nvim-cmp> required by LuaSnip
* <https://github.com/onsails/lspkind-nvim> VS Code Like Pictorgrams

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

#### better Code completion

* <https://github.com/nvim-treesitter/nvim-treesitter>
* <https://github.com/nvim-treesitter/playground>
* <https://github.com/windwp/nvim-ts-autotag>

#### Snippets

* <https://github.com/L3MON4D3/LuaSnip> required by friendly-snippets
* <https://github.com/rafamadriz/friendly-snippets>
* <https://github.com/saadparwaiz1/cmp_luasnip>
* <https://github.com/mattn/emmet-vim>

### Debuggin

* <https://github.com/mfussenegger/nvim-dap>
* <https://github.com/rcarriga/nvim-dap-ui>
* <https://theHamsta/nvim-dap-virtual-text>

* `nnoremap <leader>dh :lua require'dap'.toggle_breakpoint()<CR>`
* `nnoremap <S-k> :lua require'dap'.step_out()<CR>`
* `nnoremap <S-l> :lua require'dap'.step_into()<CR>`
* `nnoremap <S-j> :lua require'dap'.step_over()<CR>`
* `nnoremap <leader>ds :lua require'dap'.stop()<CR>`
* `nnoremap <leader>dn :lua require'dap'.continue()<CR>`
* `nnoremap <leader>dk :lua require'dap'.up()<CR>`
* `nnoremap <leader>dj :lua require'dap'.down()<CR>`
* `nnoremap <leader>d_ :lua require'dap'.disconnect();require'dap'.stop();require'dap'.run_last()<CR>`
* `nnoremap <leader>dr :lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l`
* `nnoremap <leader>di :lua require'dap.ui.variables'.hover()<CR>`
* `vnoremap <leader>di :lua require'dap.ui.variables'.visual_hover()<CR>`
* `nnoremap <leader>d? :lua require'dap.ui.variables'.scopes()<CR>`
* `nnoremap <leader>de :lua require'dap'.set_exception_breakpoints({"all"})<CR>`
* `nnoremap <leader>dI :lua require'dap.ui.widgets'.hover()<CR>`
* `nnoremap <leader>d? :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>`

* `nnoremap <silent> <F5> :lua require'dap'.continue()<CR>`
* `nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>`
* `nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>`
* `nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>`
* `nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>`
* `nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>`
* `nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>`
* `nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>`
* `nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>`

### FzF

* to search for occurences in project tree
 * install `apt-get install silversearcher-ag`
 * `:Ag` 

* `CTRL+P` - open File Finder

### Telescope

* <https://github.com/nvim-lua/plenary.nvim>
* <https://github.com/nvim-telescope/telescope.nvim>

* TODO commands
