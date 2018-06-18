#!/bin/sh

#show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# sass
sudo gem install sass

# install homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install dotfiles
git clone https://github.com/msorce/.dotfiles.git

# symlink configs
sh ~/.dotfiles/setup.sh

# install neovim
brew install neovim

# symlink vim -> nvim configs
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
# pip
brew install python3
brew install python

pip2 install --user neovim
pip3 install --user neovim

# zsh > bash. jk, who cares? you shouldn't :)
brew install zsh

# change shell
chsh -s /bin/zsh

#install tmux
brew install tmux

# install htop
brew install htop

# install cmatrix
brew install cmatrix

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install iterm 2
brew cask install iterm2

# install svn 
brew install subversion

# fast key repeats
defaults write -g InitialKeyRepeat -int 5
defaults write -g KeyRepeat -int 1

# setup programming font
cp Input-Regular_(InputMonoNarrow-Light).ttf /Library/Fonts
# install spotify
brew cask install spotify
