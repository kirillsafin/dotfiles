# Prerequisites

Before Installation:


0. `apt install build-essential`
0. `bin` folders -> `mkdir ~/bin ~/.local/bin`

1. pix -> `apt install pipx`
2. nvm
    1. `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/vX.X.X/install.sh | bash`
    2. `nvm install 20`
    3. `nvm use 20`

3. tmux -> `apt install tmux`
4. install nvim
    1. `mkdir -p ~/prog/nvim`
    2. `curl -L -o ~/prog/nvim/nvim.appimage https://github.com/neovim/neovim/releases/download/stable/nvim.appimage`
    3. `chmod ug+x ~/prog/nvim/nvim.appimage`
    4. `ln -sv ~/prog/nvim/nvim.appimage ~/bin/nvim`

After Installation

1. create `spell` folder in `.dotfiles/nvim`
2. download spell file from https://ftp.nluug.nl/pub/vim/runtime/spell/
3. move this file to `spell` folder

# Overview

## Config List

- Terminal Emulator [WezTerm](https://wezfurlong.org/wezterm/index.html). Alternatives could be *Kitty*, *Contour*, *Ghostty*
- Terminal Multiplexer [Tmux](https://github.com/tmux/tmux/wiki). Alternatives *Zellij*
- Terminal File Explorer [Yazi](https://yazi-rs.github.io/). WARN: currently can't open PDFs and Images with default application

- Zsh theme [p10k](https://github.com/romkatv/powerlevel10k)


# Nvim


### General

![Vim Cheat Sheet](http://www.viemu.com/vi-vim-cheat-sheet.gif)

### Plugins

#### Color Scheme

- [`Shatur/neovim-ayu`](https://github.com/Shatur/neovim-ayu)
- [../catppuccin]()
- [../edge](..)
- [`gruvbox-community/gruvbox`](https://github.com/gruvbox-community/gruvbox)
- [`rebelot/kanagawa.nvim`](https://github.com/rebelot/kanagawa.nvim)
- [`overcache/NeoSolarized`](https://github.com/overcache/NeoSolarized)
- [../nightfox](...)
- [../onedark](...) -> LazyNvim installation fails
- [../tokoynight](..)

> [!WARN]
> Following Part is not up-to-date

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

#### Snippets

`L3MON4D3/LuaSnip`
`rafamadriz/friendly-snippets`
`saadparwaiz1/cmp_luasnip`

#### Languages

##### Markdown

[`iamcco/markdown-preview.nvim`](https://github.com/iamcco/markdown-preview.nvim)
##### CSS

[`norcalli/nvim-colorizer.lua`](https://github.com/norcalli/nvim-colorizer.lua)

#### User Experience

##### Status Bar

[`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim)

##### Project Tree
`kyazdani42/nvim-web-devicons`
`kyazdani42/nvim-tree.lua`

#### Basic

[`lukas-reineke/indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim)
`romgrk/barbar.nvim`
`rcarriga/nvim-notify`
[`windwp/nvim-ts-autotag`](https://github.com/nvim-ts-rainbow)
[`windwp/nvim-autopairs`](http://github.com/nvim-autopairs)
`folke/todo-comments.nvim`
[`tpope/vim-commentary`](https://github.com/tpope/vim-commentary)
[`tpope/vim-surround`](https://github.com/vim-surround) - Autoclose brackets and parenthesis
`mbbill/undotree`

##### Git

`tpope/vim-fugitive`
`airblade/vim-gitgutter`
`nvim-lua/plenary.nvim`
`sindrets/diffview.nvim`

##### Teesitter

`nvim-treesitter/nvim-treesitter`
`nvim-treesitter/playground`
`nvim-treesitter/nvim-treesitter-context`

#### File Browsing

`nvim-lua/plenary.nvim`
`nvim-telescope/telescope.nvim`
* install ripgrep (`apt install ripgrep`)
`nvim-telescope/telescope-live-grep-args.nvim`

#### Debugging

`mfussenegger/nvim-dap`
`rcarriga/nvim-dap-ui`
`theHamsta/nvim-dap-virtual-text`
`mxsdev/nvim-dap-vscode-js`
`David-Kunz/jester`
`Weissle/persistent-breakpoints.nvim`
`rcarriga/cmp-dap`

#### Miscullaneous

`liuchengxu/vim-which-key`
`akinsho/toggleterm.nvim`
`folke/trouble.nvim`
`github/copilot.vim`
* `CopilotC-Nvim/CopilotChat.nvim`
[`m4xshen/hardtime.nvim`](https://github.com/m4xshen/hardtime.nvim)
[`nvim-pack/nvim-spectrel`](https://github.com/nvim-pack/nvim-spectre)

#### Live Server
* [`ray-x/web-tools.nvim`](https://github.com/ray-x/web-tools.nvim)

## Tmux
