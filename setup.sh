#!/usr/bin/env zsh

# Create symlinks to dotfiles
echo "Creating symlinks to dotfiles..."
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.hyper.js ~/.hyper.js
ln -sf ~/dotfiles/.npmrc ~/.npmrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages from Brewfile
echo "Installing Homebrew packages..."
brew bundle --file=~/dotfiles/Brewfile
