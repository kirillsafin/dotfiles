#!/usr/bin/env bash

asfdasdf sf sdfa fa

ln -sv ~/.dotfiles/nvim ~/.config

ln -sv ~/.dotfiles/.tmux.conf ~/.tmux.conf

ln -sv ~/.dotfiles/.zshrc ~/.zshrc

ln -sv ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -sv ~/.dotfiles/vim/.vimrcprivate ~/.vimrcprivate
ln -sv ~/.dotfiles/vim/.vim ~/.vim
mkdir ./vim/.vim/colors && ln -s ./vim/.vim/colors/gruvbox.vim ./vim/.vim/plugged/gruvbox/colors/gruvbox.vim
ln -s ./vim/.vim/autoload/plug.vim "${HOME}/.local/share/nvim/site/autoload/plug.vim"

ln -sv ~/.dotfiles/.npmrc ~/.npmrc
