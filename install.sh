#!/usr/bin/env zsh


#   ██                    ██              ██  ██
#  ░░                    ░██             ░██ ░██
#   ██ ███████   ██████ ██████  ██████   ░██ ░██
#  ░██░░██░░░██ ██░░░░ ░░░██░  ░░░░░░██  ░██ ░██
#  ░██ ░██  ░██░░█████   ░██    ███████  ░██ ░██
#  ░██ ░██  ░██ ░░░░░██  ░██   ██░░░░██  ░██ ░██
#  ░██ ███  ░██ ██████   ░░██ ░░████████ ███ ███
#  ░░ ░░░   ░░ ░░░░░░     ░░   ░░░░░░░░ ░░░ ░░░

# MUST INSTALL HOMEBREW AND GIT BEFORE RUNNING

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

DIR=$(dirname "$0")
cd "$DIR"
cp .zshrc_local ~/.zshrc_local

testDir=/Users/nickesc/Workspace/.test

./setup/.macosPrep

#xcode-select --install

#DOTPATH=$(pwd)

#ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc

mkdir -p $testDir/Workspace/__space__
mkdir -p $testDir/Workspace/profile
mkdir -p $testDir/Workspace/projects
mkdir -p $testDir/Workspace/.test

mkdir -p $testDir/Workspace/profile/avatar



# softwareupdate -i -a

## still to do:
# iterm setup
# pipfile
# omz plugins
# install needed fonts
# omz plugins
# copy .zshrc
# install langs (pyenv, sdkman, nvm, go, others)
#


