#!/bin/zsh
echo "Install the basic tools I need on a new mac"

# Install homebrew
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Install GNU find, xargs, and locate
brew install findutils

# Install Bash
brew install bash

PACKAGES=(
    git
    hub
    imagemagick
    markdown
    npm
    tmux
    tree
    vim
    wget
    bat
    docker
    docker-compose
    dive
    stats
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew install homebrew/cask

CASKS=(
    flux
    iterm2
    slack
    vlc
    firefox
    visual-studio-code
    spotify
    telegram
    1password
)

echo "Installing cask apps..."
brew install cask ${CASKS[@]}

echo "Installing ruby gems..."
RUBY_GEMS=(
    bundler
    filewatcher
)
gem install ${RUBY_GEMS[@]}

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder CreateDesktop false
defaults write com.apple.Finder AppleShowAllFiles true
killall Finder

echo "Everything is ready. Enjoy!"
