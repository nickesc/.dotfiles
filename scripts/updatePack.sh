#!/usr/bin/env zsh

# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
# brew update
# brew upgrade
# brew cleanup
# brew doctor

# Update npm & packages
npm install npm -g
npm update -g

# Update Ruby & gems
sudo gem update -system
sudo gem update


## Node.js, npm, npx, yarn
#Update n
n-update -y

## Python, pyenv, pip
brew upgrade pyenv
pyenv rehash
