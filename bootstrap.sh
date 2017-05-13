#!/bin/sh

# Sets up the configuration files.  It assumes that git, vim, and zsh are
# already installed.

${DOT_FILES:=$HOME/dot-files}

# Download zsh and its syntax-highlighting plugin
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git \
       $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
rm $HOME/.zshrc
ln -s $DOT_FILES/zshrc $HOME/.zshrc
ln -s $DOT_FILES/zprofile $HOME/.zprofile

# Download vim-plug and install plugins
# ln -s $DOT_FILES/vim $HOME/.vim
# ln -s $DOT_FILES/vimrc $HOME/.vimrc
# curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
#	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vim -c PlugInstall -c q -c q

# Download cask and set up emacs
ln -s $DOT_FILES/emacs.d $HOME/.emacs.d
curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
(cd $DOT_FILES/emacs.d; cask install)

# Link tmux settings
ln -s $DOT_FILES/tmux.conf $HOME/.tmux.conf

# Link X.org settings
ln -s $DOT_FILES/xinitrc $HOME/.xinitrc
ln -s $DOT_FILES/Xresources $HOME/.Xresources
ln -s $DOT_FILES/Xresources.d $HOME/.Xresources.d

# Link i3 settings
ln -s $DOT_FILES/i3 $HOME/.i3

# Link git settings
ln -s $DOT_FILES/gitconfig $HOME/.gitconfig

# Link awesome settings
mkdir -p $HOME/.config
ln -s $DOT_FILES/awesome $HOME/.config/awesome

# Link openbox settings
mkdir -p $HOME/.config
ln -s $DOT_FILES/openbox $HOME/.config/openbox
