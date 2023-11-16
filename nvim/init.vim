" PLUGINS ------------------------------- {{{
"
" Plugin Manager ist vim-plug 
call plug#begin('~/.config/nvim/plugged')
  " Color Scheme 
  Plug 'gruvbox-community/gruvbox'
  Plug 'overcache/NeoSolarized'
  Plug 'thedenisnikulin/vim-cyberpunk'  "Cyperpunk Theme
  Plug 'Shatur/neovim-ayu'
  Plug 'savq/melange-nvim'
  Plug 'rebelot/kanagawa.nvim'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'sainnhe/edge'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'folke/flash.nvim'

  " Markdown Highlighter
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': ['markdown', 'vim-plug'] }
  " CSS 
  " Plug 'norcalli/nvim-colorizer.lua'
  Plug 'uga-rosa/ccc.nvim'

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
  " Plug 'jose-elias-alvarez/null-ls.nvim'
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
  " Plug 'https://gitlab.com/schrieveslaach/sonarlint.nvim' 

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
  Plug 'nvim-lua/plenary.nvim'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'sindrets/diffview.nvim'
  
  " Treesitter for better code completion
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'nvim-treesitter/nvim-treesitter-context'
  
  " File Browsing
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-live-grep-args.nvim'

  " Plug 'vim-utils/vim-man'
  " Plug 'lyuts/vim-rtags' (C++)
  
  " Debugging
  Plug 'mfussenegger/nvim-dap' 
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
  Plug 'nvim-telescope/telescope-dap.nvim'
  Plug 'mxsdev/nvim-dap-vscode-js'
  Plug 'David-Kunz/jester'
  Plug 'Weissle/persistent-breakpoints.nvim'
  Plug 'rcarriga/cmp-dap'

  " OTHERS
  Plug 'liuchengxu/vim-which-key'
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
  Plug 'folke/trouble.nvim'
  Plug 'github/copilot.vim' 
  Plug 'MunifTanjim/nui.nvim'
  Plug 'jackMort/ChatGPT.nvim'
  " Code Screenshots: requires: apt install cargo, cargo install silicon, apt
  " install expat libxml2-dev libfreetype6-dev libxcb-composite0-dev libharfbuzz-dev libexpat1-dev libfontconfig1-dev
  Plug 'segeljakt/vim-silicon'
  " Live server
  Plug 'ray-x/web-tools.nvim' 
  Plug 'm4xshen/hardtime.nvim'
  Plug 'nvim-pack/nvim-spectre'

call plug#end()
" }}}

" AUTOCOMPLETION------------------------{{{ }}}

" PLUGIN SETTINGS-----------------------{{{
let mapleader = ' ' " SPACE

lua require("lsp-setup")
lua require('lspsaga-setup')
lua require("nvim-dap-setup")
lua require("nvim-lint-setup")
" lua require("null-ls-setup")
lua require("lualine-statusline-setup")
lua require("nvim-autopairs").setup()
lua require("telescope-setup")
lua require("notify-setup")
lua require("todo-comments").setup()
lua require("toggleterm").setup({direction = "horizontal", size = 15, shade_terminals = false, shading_factor = 30})
lua require("persist-breakpoint-setup")
lua require("jester-setup")
lua require("chatGPT-setup")
lua require("web-tools-setup")
lua require("hardtime-setup")
lua require("diffview-setup")

lua require('ccc-setup')
lua require('color-setup')

set termguicolors
" lua require("css-colorizer-setup")
" }}}

" UNMAP---------------------------------{{{
" unmap neovim mapping to be consistent to vim
unmap Y
" }}}
