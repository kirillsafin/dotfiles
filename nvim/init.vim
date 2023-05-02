" PLUGINS ------------------------------- {{{
"
" Plugin Manager ist vim-plug 
call plug#begin('~/.config/nvim/plugged')
  " Color Scheme 
  Plug 'gruvbox-community/gruvbox'
  Plug 'overcache/NeoSolarized'
  Plug 'rose-pine/neovim' 
  Plug 'thedenisnikulin/vim-cyberpunk'  "Cyperpunk Theme
  Plug 'ray-x/aurora' 
  Plug 'Shatur/neovim-ayu'
  Plug 'savq/melange-nvim'
  Plug 'rebelot/kanagawa.nvim'

  "Vim StatusBar
  " Plug 'itchyny/lightline.vim'
  " Plug 'gelguy/wilder.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  
  " Markdown Highlighter
  " Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': ['markdown', 'vim-plug'] }

  " LSP 
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim'
  " Autocompletion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
  " required by LuaSnip
  Plug 'hrsh7th/nvim-cmp' 
  " VS Code Autocompletion like Pictograms 
  Plug 'onsails/lspkind-nvim' 
  Plug 'mfussenegger/nvim-lint'
  " Java advanced LSP
  Plug 'mfussenegger/nvim-jdtls' 
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Plug 'dense-analysis/ale'
  " Snippts
  " required by friendly-snippets
  Plug 'L3MON4D3/LuaSnip' 
  " HTML, 
  Plug 'rafamadriz/friendly-snippets' 
  Plug 'saadparwaiz1/cmp_luasnip'
  " Plug 'mattn/emmet-vim'
  " manage LSP/Lint/Debug/Formatters servers
  " Plug 'williamboman/mason.nvim' 
  " Better Intelisense 
  Plug 'folke/trouble.nvim'

  " User Experience
  " CSS 
  Plug 'norcalli/nvim-colorizer.lua'
  " Project tree
  " Plug 'preservim/nerdtree'
  " for file icons
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-tree/nvim-tree.lua'
  " Plug 'mortepau/codicons.nvim'
  " Plug 'akinsho/bufferline.nvim'
  " General 
  Plug 'romgrk/barbar.nvim'
  Plug 'rcarriga/nvim-notify'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'windwp/nvim-autopairs'
  " Plug 'junegunn/limelight.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'folke/todo-comments.nvim'
  " Autoclosing bracket and parenthesis
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'tpope/vim-commentary' " Comments (gc, gcc)
  Plug 'tpope/vim-surround'
  Plug 'mbbill/undotree'
  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'sindrets/diffview.nvim'
  
  " Treesitter for better code completion
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  "Plug 'jiangmiao/auto-pairs'
  
  " File Browsing
  Plug 'nvim-lua/plenary.nvim'
  " also install ripgrep( please apt install ripgrep)
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-live-grep-args.nvim'
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Plug 'junegunn/fzf.vim'

  " Fast grep
  " Plug 'jremmen/vim-ripgrep'
  " Git - blame, diff, log
  Plug 'tpope/vim-fugitive'
  " Plug 'lewis6991/gitsigns.nvim'
  
  " Plug 'vim-utils/vim-man'
  " C++
  " Plug 'lyuts/vim-rtags'
  
  " Debugging
  Plug 'mfussenegger/nvim-dap' 
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'mxsdev/nvim-dap-vscode-js'
  Plug 'David-Kunz/jester'
  Plug 'Weissle/persistent-breakpoints.nvim'

  " Others
  Plug 'liuchengxu/vim-which-key'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()
" }}}

" AUTOCOMPLETION------------------------{{{
filetype plugin on
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"}}}

" PLUGIN SETTINGS-----------------------{{{
let mapleader = ' ' " SPACE

lua require("lsp-setup")
lua require("nvim-dap-setup")
lua require("nvim-lint-setup")
lua require("lualine-statusline-setup")
lua require("nvim-autopairs").setup()
lua require("notify-setup")
lua require("telescope-setup")
lua require("todo-comments").setup()
lua require("toggleterm").setup({direction = "horizontal", size = 15})
lua require("persist-breakpoint-setup")

set termguicolors
lua require("css-colorizer-setup")
" }}}

" UNMAP---------------------------------{{{
" unmap neovim mapping to be consistent to vim
unmap Y
" }}}
