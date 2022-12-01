#!/bin/bash

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> $HOME/.zprofile
  eval '$($(brew --prefix)/bin/brew shellenv)'
fi

# Make sure we’re using the latest Homebrew and update recipes
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Remove outdated versions from the cellar.
brew cleanup

# Turn of Homebrew analytics
brew analytics off