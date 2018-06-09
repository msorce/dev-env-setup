#!/bin/sh
# install homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install neovim
brew install neovim

# symlink vim -> nvim configs
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# zsh > bash. jk, who cares? you shouldn't :)
brew install zsh

# install iterm 2
brew cask install iterm2

# fast key repeats
defaults write -g InitialKeyRepeat -int 5
defaults write -g KeyRepeat -int 1
