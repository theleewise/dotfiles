#!/usr/bin/env zsh

# Create symlinks to dotfiles
echo "Creating symlinks to dotfiles..."
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore ~/.gitignore
ln -s ~/dotfiles/.hyper.js ~/.hyper.js
ln -s ~/dotfiles/.npmrc ~/.npmrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages from Brewfile
echo "Installing Homebrew packages..."
brew bundle --file=~/dotfiles/Brewfile
