#!/bin/sh

# Sets up the configuration files.  It assumes that git, vim, and zsh are
# already installed.

${DOT_FILES:=~/dot-files}

# Create symlinks
ln -s $DOT_FILES/zshrc $HOME/.zshrc
ln -s $DOT_FILES/vim $HOME/.vim
ln -s $DOT_FILES/vimrc $HOME/.vimrc

# Download zsh and its syntax-highlighting plugin
zsh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins

# Download vim-plug and install plugins
curl -fLo /home/andre/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c PlugInstall -c q -c q

