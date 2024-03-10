#!/usr/bin/env bash
# install pipx using apt if not exists
[ ! -f '/usr/bin/pipx' ] && sudo apt install pipx -y || echo "pipx already exists"

# install nodejs and npm using apt if not exists

# install tmux if it doesn't exist
[ ! -f '/usr/bin/tmux' ] && sudo apt install tmux -y || echo "tmux already exists"

# create ~/prog/nvim if it doesn't exist
mkdir -p ~/prog/nvim || echo "prog/nvim  already exists"

# download nvim appimage app from https://github.com/neovim/neovim/releases/download/stable/nvim.appimage to ~/prog/nvim if it doesn't exist, make it executable, create a symlink to it in ~/local/bin
[ ! -f "${HOME}/prog/nvim/nvim.appimage" ] && curl -L -o ~/prog/nvim/nvim.appimage https://github.com/neovim/neovim/releases/download/stable/nvim.appimage || echo "nvim.appimage already exists"
chmod u+x ~/prog/nvim/nvim.appimage
[ ! -f "${HOME}/.local/bin/nvim" ] && ln -sv ~/prog/nvim/nvim.appimage ~/.local/bin/nvim || echo "nvim symlink already exists"

# install plug for nvim
[ ! -f "${HOME}/.local/share/nvim/site/autoload/plug.vim" ] && curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install zsh and oh-my-zsh
[ ! -f '/usr/bin/zsh' ] && sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# grep my theme from https://raw.githubusercontent.com/MijikHna/zeta-zsh-theme/master/zeta.zsh-theme
curl https://raw.githubusercontent.com/MijikHna/zeta-zsh-theme/master/zeta.zsh-theme > ~/.oh-my-zsh/themes/zeta.zsh-theme

ln -sv ~/.dotfiles/nvim ~/.config

ln -sv ~/.dotfiles/.tmux.conf ~/.tmux.conf

ln -sv ~/.dotfiles/.zshrc ~/.zshrc

ln -sv ~/.dotfiles/vim/.vimrc ~/.vimrc
ln -sv ~/.dotfiles/vim/.vimrcprivate ~/.vimrcprivate
ln -sv ~/.dotfiles/vim/.vim ~/.vim
mkdir ./vim/.vim/colors && ln -s ./vim/.vim/colors/gruvbox.vim ./vim/.vim/plugged/gruvbox/colors/gruvbox.vim
ln -s ./vim/.vim/autoload/plug.vim "${HOME}/.local/share/nvim/site/autoload/plug.vim"

ln -sv ~/.dotfiles/.npmrc ~/.npmrc

ln -sv ~/.dotfiles/setup-scripts/setup-cpp-project.sh ~/bin/setup-cpp-project
