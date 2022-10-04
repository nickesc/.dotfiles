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

mkdir -p ~/Workspace/__space__
mkdir -p ~/Workspace/projects
mkdir -p ~/Workspace/data
mkdir -p ~/Workspace/.test
mkdir -p ~/Workspace/.hidden
cp ~/Workspace/__space__/.dotfiles/profile ~/Workspace/profile



# softwareupdate -i -a

## still to do:
# iterm setup
# install needed fonts
# omz plugins
# copy .zshrc
# install langs (pyenv, sdkman, nvm, go, others)
#







symlink ~/Workspace/__space__/.dotfiles/.editorconfig ~
symlink ~/Workspace/__space__/.dotfiles/.gemrc ~
symlink ~/Workspace/__space__/.dotfiles/.gitattributes ~
symlink ~/Workspace/__space__/.dotfiles/.gitconfig ~
symlink ~/Workspace/__space__/.dotfiles/.gitignore ~
symlink ~/Workspace/__space__/.dotfiles/.npmrc ~
symlink ~/Workspace/__space__/.dotfiles/.screenrc ~
symlink ~/Workspace/__space__/.dotfiles/.zlogout ~
symlink ~/Workspace/__space__/.dotfiles/.zprofile ~
symlink ~/Workspace/__space__/.dotfiles/.zshrc ~
mv .zshrc_local ~

