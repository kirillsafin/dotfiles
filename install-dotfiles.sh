#!/usr/bin/env bash
# ZSH installation and setup
[ ! -f ~/.zshrc ] && ln -sv ~/.dotfiles/.zshrc ~/.zshrc || echo ".zshrc already set"

[ ! -f '/usr/bin/zsh' ] && sudo apt install zsh -y || echo "zsh already installed"
[ ! -d "${HOME}/.oh-my-zsh" ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || echo "oh-my-zsh already installed"
[ ! -d "${HOME}/.oh-my-zsh/custom/themes/powerlevel10k" ] && curl git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" || echo "powerlevel10k theme already exists"

[ ! -f "${HOME}/.p10k.zsh" ] && ln -sv ~/.dotfiles/.p10k.zsh ~/.p10k.zsh

# VIM, NVIM and TMUX setup
[ ! -f ~/.tmux.conf ] && ln -sv ~/.dotfiles/.tmux.conf ~/.tmux.conf || echo "tmux.conf already set"
[ ! -d ~/.config/nvim ] && ln -sv ~/.dotfiles/nvim ~/.config/nvim || echo "nvim config already exists"

[ ! -f ~/.vimrc ] && ln -sv ~/.dotfiles/vim/.vimrc ~/.vimrc || echo ".vimrc already set"
[ ! -f ~/.vimrcprivate ] &&  ln -sv ~/.dotfiles/vim/.vimrcprivate ~/.vimrcprivate || echo ".vimrcprivate already set"

# LSP prerequisites
# npm LSPs
npm install -g bun bash-language-server yaml-language-server pyright

# pip LSPs
pipx install cmake-language-server
pipx install ninja
pipx install tldr
pipx install virtualenv

# SETTINGS
# C++ settings
[ ! -f ~/.config/clangd/config.yaml ] &&ln -sv ~/.dotfiles/.clang-format ~/.config/clangd/config.yaml || echo "clangd config already exists"

# OTHER TOOLS
# WezTerm
[ ! -f ~/.wezterm.lua ] && ln -sv ~/.dotfiles/.wezterm.lua ~/.wezterm.lua || echo "wezterm config already exists"

# Cheat Sheets
[ ! -f ~/bin/cht ] && ln -sv ~/.dotfiles/scripts/cht.sh ~/bin/cht || echo "cht already exists"
