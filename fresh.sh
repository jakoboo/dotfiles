#!/bin/bash

echo "Setting up your Mac..."

git pull origin main

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)'

  # Install p10k fonts - unavailable in brew
  # /bin/sh -c '$(curl --output-dir ~/Library/Fonts -fsSL https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o "MesloLGS NF Regular.ttf")'
  # /bin/sh -c '$(curl --output-dir ~/Library/Fonts -fsSL https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -o "MesloLGS NF Bold.ttf")'
  # /bin/sh -c '$(curl --output-dir ~/Library/Fonts -fsSL https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -o "MesloLGS NF Italic.ttf")'
  # /bin/sh -c '$(curl --output-dir ~/Library/Fonts -fsSL https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -o "MesloLGS NF Bold Italic.ttf")'
fi

# Run brew
$DOTFILES/brew.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Create a Projects directory
mkdir $HOME/Projects

# Create Projects subdirectories
mkdir $HOME/Projects/Source
mkdir $HOME/Projects/Source/GitHub
mkdir $HOME/Projects/Source/GitLab
mkdir $HOME/Projects/Source/BitBucket
mkdir $HOME/Projects/Design

# Clone Github repositories
$DOTFILES/clone.sh

# Symlink the Mackup config file to the home directory
ln -s $DOTFILES/.mackup.cfg $HOME/.mackup.cfg
ln -s $DOTFILES/.mackup $HOME/.mackup

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos

echo "Setup finished! :)"