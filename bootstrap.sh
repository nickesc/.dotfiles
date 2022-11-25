#!/usr/bin/env zsh

#   ██                          ██             ██                                       ██
#  ░██                         ░██            ░██                    ██████            ░██
#  ░██       ██████   ██████  ██████  ██████ ██████ ██████  ██████  ░██░░░██     ██████░██
#  ░██████  ██░░░░██ ██░░░░██░░░██░  ██░░░░ ░░░██░ ░░██░░█ ░░░░░░██ ░██  ░██    ██░░░░ ░██████
#  ░██░░░██░██   ░██░██   ░██  ░██  ░░█████   ░██   ░██ ░   ███████ ░██████    ░░█████ ░██░░░██
#  ░██  ░██░██   ░██░██   ░██  ░██   ░░░░░██  ░██   ░██    ██░░░░██ ░██░░░   ██ ░░░░░██░██  ░██
#  ░██████ ░░██████ ░░██████   ░░██  ██████   ░░██ ░███   ░░████████░██     ░██ ██████ ░██  ░██
#  ░░░░░    ░░░░░░   ░░░░░░     ░░  ░░░░░░     ░░  ░░░     ░░░░░░░░ ░░      ░░ ░░░░░░  ░░   ░░
# 

# MUST INSTALL HOMEBREW AND GIT BEFORE RUNNING


# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source $HOME/Workspace/__space__/.dotfiles/system/.aliases
source $HOME/Workspace/__space__/.dotfiles/system/.functions

DIR=$(dirname "$0")
cd "$DIR"
cp .zshrc_local ~/.zshrc_local

testDir=~/Workspace/.test

./setup/.macosPrep

#xcode-select --install

#DOTPATH=$(pwd)

#ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc

mkdir -p ~/Workspace/__space__
mkdir -p ~/Workspace/projects
mkdir -p ~/Workspace/data
mkdir -p ~/Workspace/.test
mkdir -p ~/Workspace/.hidden
symlink ~/Workspace/__space__/.dotfiles/Profile ~/Workspace



# softwareupdate -i -a

## still to do:
# iterm setup
# install needed fonts
# omz plugins
# copy .zshrc
# install langs (pyenv, sdkman, nvm, go, others)
#
symlink ~/Workspace/__space__/.dotfiles/.zlogout ~
symlink ~/Workspace/__space__/.dotfiles/.zprofile ~
symlink ~/Workspace/__space__/.dotfiles/.zshrc ~
symlink ~/Workspace/__space__/.dotfiles/.bash_profile ~
symlink ~/Workspace/__space__/.dotfiles/.bashrc ~

symlink ~/Workspace/__space__/.dotfiles/config/.editorconfig ~
symlink ~/Workspace/__space__/.dotfiles/config/.gemrc ~
symlink ~/Workspace/__space__/.dotfiles/config/.npmrc ~
symlink ~/Workspace/__space__/.dotfiles/config/.screenrc ~
symlink ~/Workspace/__space__/.dotfiles/config/.tmux.conf ~
symlink ~/Workspace/__space__/.dotfiles/config/.vimrc ~
symlink ~/Workspace/__space__/.dotfiles/config/nano/.nanorc ~
symlink ~/Workspace/__space__/.dotfiles/config/git/.gitattributes ~
symlink ~/Workspace/__space__/.dotfiles/config/git/.gitconfig ~
symlink ~/Workspace/__space__/.dotfiles/config/git/.gitignore ~

cp .zshrc_local ~


