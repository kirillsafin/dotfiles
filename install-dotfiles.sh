#!/usr/bin/env bash
# install pipx using apt if not exists
[ ! -f '/usr/bin/pipx' ] && sudo apt install pipx -y || echo "pipx already exists"

# install nodejs and npm using apt if not exists

# install tmux if it doesn't exist
[ ! -f '/usr/bin/tmux' ] && sudo apt install tmux -y || echo "tmux already exists"

# create ~/prog/nvim if it doesn't exist
mkdir -p ~/prog/nvim || echo "prog/nvim  already exists"

# download nvim appimage app from https://github.com/neovim/neovim/releases/download/stable/nvim.appimage to ~/prog/nvim if it doesn't exist, make it executable, create a symlink to it in ~/local/bin
[ ! -f "${HOME}/prog/nvim/nvim.appimage" ] && curl -L -o ~/prog/nvim/nvim.appimage https://github.com/neovim/neovim/releases/download/stable/nvim.appimage && chmod ug+x ~/prog/nvim/nvim.appimage || echo "nvim.appimage already exists"

[ ! -f "${HOME}/.local/bin/nvim" ] && ln -sv ~/prog/nvim/nvim.appimage ~/.local/bin/nvim || echo "nvim symlink already exists"

# install plug for nvim
[ ! -f "${HOME}/.local/share/nvim/site/autoload/plug.vim" ] && curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim || echo "Vim Plug already exists"

# install zsh and oh-my-zsh
[ ! -f '/usr/bin/zsh' ] && sudo apt install zsh -y && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || echo "zsh already exists"

# grep my theme from https://raw.githubusercontent.com/MijikHna/zeta-zsh-theme/master/zeta.zsh-theme
[ ! -f ~/.oh-my-zsh/themes/zeta.zsh-theme ] && curl https://raw.githubusercontent.com/MijikHna/zeta-zsh-theme/master/zeta.zsh-theme > ~/.oh-my-zsh/themes/zeta.zsh-theme || echo "zeta theme already exists"

[ ! -d ~/.config/nvim ] && ln -sv ~/.dotfiles/nvim ~/.config || echo "nvim config already exists"
# [ ! -d ~/.config/nvim ] && ln -sv ~/.dotfiles/nvim-old ~/.config/nvim || echo "nvim config already exists"

[ ! -f ~/.tmux.conf ] && ln -sv ~/.dotfiles/.tmux.conf ~/.tmux.conf || echo "tmux.conf already set"

[ ! -f ~/.zshrc ] && ln -sv ~/.dotfiles/.zshrc ~/.zshrc || echo ".zshrc already set"

[ ! -f ~/.vimrc ] && ln -sv ~/.dotfiles/vim/.vimrc ~/.vimrc || echo ".vimrc already set"
[ ! -f ~/.viminfo ] &&  ln -sv ~/.dotfiles/vim/.vimrcprivate ~/.vimrcprivate || echo ".vimrcprivate already set"
[ ! -d ~/.vim ] && ln -sv ~/.dotfiles/vim/.vim ~/.vim && mkdir ./vim/.vim/colors && ln -s ./vim/.vim/colors/gruvbox.vim ./vim/.vim/plugged/gruvbox/colors/gruvbox.vim && ln -s ./vim/.vim/autoload/plug.vim "${HOME}/.local/share/nvim/site/autoload/plug.vim" || echo ".vim already exists"

# npm settings
! command -v nvm > /dev/null 2>&1 && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh && nvm install 20 || echo "nvm already installed" #TODO: grab the last release from the repo release site

# c++ settings
[ ! -f ~/bin/setup-cpp-project ] && ln -sv ~/.dotfiles/setup-scripts/setup-cpp-project.sh ~/bin/setup-cpp-project || echo "setup-cpp-project already exists"
[ ! -f ~/.config/clangd/config.yaml ] &&ln -sv ~/.dotfiles/.clang-format ~/.config/clangd/config.yaml || echo "clangd config already exists"
