" PLUGINS ------------------------------- {{{
" Plugin Manager ist vim-plug 
call plug#begin('~/.config/nvim/plugged')
  " Color Schemes
  Plug 'gruvbox-community/gruvbox'
  Plug 'overcache/NeoSolarized'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'mcchrish/zenbones.nvim'

  "Vim StatusBar
  "Plug 'itchyny/lightline.vim'
  Plug 'nvim-lualine/lualine.nvim'
  " Plug 'gelguy/wilder.nvim'
  "
  " Markdown Highlighter
  " Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'

  " Indenter
  " Plug 'junegunn/limelight.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  
  " Project tree
  " Plug 'preservim/nerdtree'
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
  " Plug 'mortepau/codicons.nvim'

  "Plug 'akinsho/bufferline.nvim'
  " ccs 
  Plug 'norcalli/nvim-colorizer.lua'

  Plug 'airblade/vim-gitgutter'

  " LSP 
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim'

  " Autocompletion
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp' " required by LuaSnip
  Plug 'onsails/lspkind-nvim' " VS Code Autocompletion like Pictograms  
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " User Experience
  " Snippts
  Plug 'L3MON4D3/LuaSnip' " required by friendly-snippets
  Plug 'rafamadriz/friendly-snippets' " HTML, 
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'mattn/emmet-vim'
  
  " Treesitter for better code completion
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/playground'
  Plug 'windwp/nvim-ts-autotag'
  "Plug 'jiangmiao/auto-pairs'

  "General
  Plug 'windwp/nvim-autopairs'

  " Autoclosing bracket and parenthesis
  Plug 'p00f/nvim-ts-rainbow'
  Plug 'tpope/vim-commentary' " Comments (gc, gcc)
  Plug 'tpope/vim-surround'
  
  " File Browsing
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Plug 'rcarriga/nvim-notify'
  " fast grep
  " Plug 'jremmen/vim-ripgrep'
  " git blame, diff, log
  " Plug 'tpope/vim-fugitive'
  " syntax for ts
  " Plug 'leafgarland/typescript-vim'
  "
  " Plug 'vim-utils/vim-man'
  " for c++
  " Plug 'lyuts/vim-rtags'
  " file finding
  " Plug 'git@github.com:kien/ctrlp.vim.git'
  "
  " Plug 'mbbill/undotree'
  
  " Debugging
  Plug 'mfussenegger/nvim-dap' 
  Plug 'rcarriga/nvim-dap-ui'
  Plug 'theHamsta/nvim-dap-virtual-text'
call plug#end()
" }}}

" AUTOCOMPLETION------------------------{{{
filetype plugin on
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"}}}

" PLUGIN SETTINGS-----------------------{{{
let mapleader = ' ' " is space

lua require("lsp-setup")
lua require("nvim-dap-setup")

lua require("lualine-statusline-setup")

set termguicolors
lua require("css-colorizer-setup")

lua require('nvim-autopairs').setup{}
" }}}

" UNMAP---------------------------------{{{
" unmap neovim mapping to be consistent to vim
unmap Y
" }}}
