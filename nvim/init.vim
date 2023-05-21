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

  " Markdown Highlighter
  " Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': ['markdown', 'vim-plug'] }
  " CSS 
  Plug 'norcalli/nvim-colorizer.lua'

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
  " Plug 'dense-analysis/ale'
  "
  " Snippts
  " required by friendly-snippets
  Plug 'L3MON4D3/LuaSnip' 
  Plug 'rafamadriz/friendly-snippets' 
  Plug 'saadparwaiz1/cmp_luasnip'

  " manage LSP/Lint/Debug/Formatters servers
  " Plug 'williamboman/mason.nvim' 
 
  " User Experience
  
  " Vim StatusBar
  " Plug 'itchyny/lightline.vim'
  " Plug 'gelguy/wilder.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  
  " Project tree (File icons)
  Plug 'nvim-tree/nvim-web-devicons' 
  Plug 'nvim-tree/nvim-tree.lua'

  " General 
  " Plug 'junegunn/limelight.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'romgrk/barbar.nvim'
  Plug 'rcarriga/nvim-notify'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'windwp/nvim-autopairs'
  Plug 'folke/todo-comments.nvim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'mbbill/undotree'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'sindrets/diffview.nvim'
  
  " Treesitter for better code completion
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'nvim-treesitter/nvim-treesitter-context'
  
  " File Browsing
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-live-grep-args.nvim'

  " Plug 'vim-utils/vim-man'
  " Plug 'lyuts/vim-rtags' (C++)
  
  " Debugging
  Plug 'mfussenegger/nvim-dap' 
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'mxsdev/nvim-dap-vscode-js'
  Plug 'David-Kunz/jester'
  Plug 'Weissle/persistent-breakpoints.nvim'
  Plug 'rcarriga/cmp-dap'

  " Others
  Plug 'liuchengxu/vim-which-key'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'folke/trouble.nvim'
  Plug 'github/copilot.vim' 
  Plug 'jackMort/ChatGPT.nvim'
  Plug 'MunifTanjim/nui.nvim'
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
lua require('lspsaga-setup')
lua require("nvim-dap-setup")
lua require("nvim-lint-setup")
lua require("lualine-statusline-setup")
lua require("nvim-autopairs").setup()
lua require("notify-setup")
lua require("telescope-setup")
lua require("todo-comments").setup()
lua require("toggleterm").setup({direction = "horizontal", size = 15})
lua require("persist-breakpoint-setup")
lua require("jester-setup")
lua require("chatGPT-setup")

set termguicolors
lua require("css-colorizer-setup")
" }}}

" UNMAP---------------------------------{{{
" unmap neovim mapping to be consistent to vim
unmap Y
" }}}
