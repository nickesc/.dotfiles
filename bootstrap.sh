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


### System Setup
## sudo


## Start the bootstrap
yn="n"
read -k "yn?Start the bootstrap (y|n [default & abort]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
    echo "Starting the bootstrap..."
    # Ask for the administrator password upfront
    sudo -v

    # Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
else
    echo "Aborted bootstrap."
    echo "Execute '. ./bootstrap' to try again"
    return 1
fi
echo ""

## macosprep
yn="y"
read -k "yn?Start MacOS preparation (y [default]|n [abort]|s [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Preparing MacOS..."
    #. ~/Workspace/__space__/.dotfiles/setup/.macosPrep
elif [ "$yn" = "s" ] || [ "$yn" = "S" ]; then
    echo "Skipping MacOS preperation."
else
    echo "Aborted MacOS preperation."
    echo "Execute '. ./bootstrap' to try again"
    return 1
fi
echo ""

## copy zshrc_first and link z symlinks + rc symlinks
yn="y"
read -k "yn?Start linking config files (y [default]|n [abort]|s [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Linking config files..."
    #cp ~/Workspace/__space__/.dotfiles/.zshrc_first ~/.zshrc
    #symlink ~/Workspace/__space__/.dotfiles/.zlogout ~
    #symlink ~/Workspace/__space__/.dotfiles/.zprofile ~
    #symlink ~/Workspace/__space__/.dotfiles/.bash_profile ~
    #symlink ~/Workspace/__space__/.dotfiles/.bashrc ~

    #symlink ~/Workspace/__space__/.dotfiles/config/.editorconfig ~
    #symlink ~/Workspace/__space__/.dotfiles/config/.gemrc ~
    #symlink ~/Workspace/__space__/.dotfiles/config/.npmrc ~
    #symlink ~/Workspace/__space__/.dotfiles/config/.screenrc ~
    #symlink ~/Workspace/__space__/.dotfiles/config/.tmux.conf ~
    #symlink ~/Workspace/__space__/.dotfiles/config/.vimrc ~
    #symlink ~/Workspace/__space__/.dotfiles/config/nano/.nanorc ~
    source ~/.zshrc
elif [ "$yn" = "s" ] || [ "$yn" = "S" ]; then
    echo "Skipping config link."
else
    echo "Aborted config link."
    echo "Execute '. ./bootstrap' to try again"
    return 1
fi
echo ""

## workspace + profile setup
yn="y"
read -k "yn?Setup the Workspace (y [default]|n [abort]|s [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up the Workspace..."
    #. ~/Workspace/__space__/.dotfiles/setup/.workspaceSetup
elif [ "$yn" = "s" ] || [ "$yn" = "S" ]; then
    echo "Skipping workspace setup."
else
    echo "Aborted workspace setup."
    echo "Execute '. ./bootstrap' to try again"
    return 1
fi
echo ""

## macos defaults
yn="y"
read -k "yn?Set MacOS defaults (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting MacOS defaults..."
    #. ~/Workspace/__space__/.dotfiles/setup/.macosDefaults
else
    echo "Skipping default setup."
fi
echo ""

### Environment Setup
## git setup
yn="y"
read -k "yn?Setup git (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up git..."
    #. ~/Workspace/__space__/.dotfiles/setup/.gitSetup
else
    echo "Skipping git setup."
fi
echo ""

## brew setup
yn="y"
read -k "yn?Setup Homebrew (y [default]|n [abort]|s [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up Homebrew..."
    #. ~/Workspace/__space__/.dotfiles/setup/.brewSetup
elif [ "$yn" = "s" ] || [ "$yn" = "S" ]; then
    echo "Skipping Homebrew setup."
else
    echo "Aborted homebrew setup."
    echo "Execute '. ./bootstrap' to try again"
    return 1
fi
echo ""

## omz setup
yn="y"
read -k "yn?Setup oh-my-zsh (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up oh-my-zsh..."
    #. ~/Workspace/__space__/.dotfiles/setup/.omzSetup
else
    echo "Skipping oh-my-zsh setup."
fi
echo ""


## zshrc + zshrc_local
yn="y"
read -k "yn?Clean up zsh files (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Cleaing up zsh..."
    #rm ~/.zshrc
    #symlink ~/Workspace/__space__/.dotfiles/.zshrc ~
    #cp .zshrc_local ~
    #source ~/.zshrc
else
    echo "Skipping zsh cleanup."
fi
echo ""


## iterm setup
yn="y"
read -k "yn?Install and set up iTerm2 (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up iTerm2..."
    #. ~/Workspace/__space__/.dotfiles/setup/.itermSetup
else
    echo "Skipping iTerm2 setup."
fi
echo ""

## brew packages
yn="y"
read -k "yn?Install Homebrew packages (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Installing packages..."
    #. ~/Workspace/__space__/.dotfiles/setup/.brewPackages
else
    echo "Skipping package installation."
fi
echo ""

## font setup
yn="y"
read -k "yn?Install and setup additional fonts (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up fonts..."
    #. ~/Workspace/__space__/.dotfiles/setup/.fontSetup
else
    echo "Skipping font setup."
fi
echo ""

## dev -- db go java node py ruby rust
yn="y"
read -k "yn?Setup the development environment (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Setting up the development environment..."
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.pydev
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.nodedev
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.javadev
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.rubydev
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.rustdev
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.godev
    #. /Users/nickesc/Workspace/__space__/.dotfiles/dev/.dbdev
                            
else
    echo "Skipping development environment setup."
fi
echo ""

## zshrc + zshrc_local
yn="y"
read -k "yn?Clean up the bootstrap (y [default]|n [skip]): "
echo ""
if [ "$yn" = "y" ] || [ "$yn" = "y" ] || [ "$yn" = $'\n' ]; then
    echo "Cleaing up the bootstrap..."
    #source ~/.zshrc
else
    echo "Skipping bootstrap cleanup."
fi
echo ""


echo ""
echo "Bootstrap complete."
echo "If there was an issue and you know what you're doing, you can try to execute:"
echo "  '. ./bootstrap'"
echo "to try again, but you may end up breaking something important."
echo ""
