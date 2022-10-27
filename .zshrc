
#                     ██
#                    ░██
#      ██████  ██████░██      ██████  █████
#     ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#        ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ░██ ██████ ██████ ░██  ░██░███   ░░█████
#  ░░ ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

# WAIT! Don't add things here, do it in .zshrc_local for this computer OR add to the .aliases or .functions files in the remote repo -- keep this file clean unless you know what you're doing!

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export DOTFILES="$HOME/Workspace/__space__/"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship-prompt/spaceship"
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  gradle        # Gradle section
  maven         # Maven section
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  venv          # virtualenv section
  conda         # conda virtualenv section
#  pyenv         # Pyenv section
  dotnet        # .NET section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=">"
SPACESHIP_CHAR_SYMBOL_ROOT=":"
SPACESHIP_CHAR_SUFFIX=" "

SPACESHIP_DIR_COLOR="blue"
SPACESHIP_GIT_STATUS_COLOR="green"
SPACESHIP_NODE_COLOR="blue"
SPACESHIP_VENV_COLOR="yellow"
SPACESHIP_CONDA_COLOR="yellow"
SPACESHIP_CHAR_COLOR_SUCCESS="red"
SPACESHIP_CHAR_COLOR_FAILURE="green"

# INSTALLED: "headline/headline", "spaceship-prompt/spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


source $HOME/Workspace/__space__/.dotfiles/themes/omz/catppuchin_mocha-zsh-syntax-highlighting/catppuccin_mocha-zsh-syntax-highlighting.zsh

# configure wd warp point record location
export WD_CONFIG="$HOME/Workspace/__space__/wd/.warprc"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    xcode
#    vscode
    git
    screen
#    gh
#    pyenv
    brew
    web-search
    universalarchive
#    extract
    wd
    dirpersist
    aliases
    jsontools
    macos
    gitignore
    genpass
    copybuffer
    dirhistory
#    thefuck
    safe-paste
    zsh-autosuggestions
    zsh-syntax-highlighting
)



# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root cursor)

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nano'
# else
#   export EDITOR='nano'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export QMK_HOME='~/Workspace/__space__/qmk_firmware' # Optional, set the location for `qmk_firmware`


#alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'
#if [[ -r $(brew --prefix)/opt/chruby/share/chruby/chruby.sh ]]; then
#  source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
#  source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
#fi
#HISTFILE="$HOME/Workspace/__space__/.dotfiles/.zhistory"
#setopt APPEND_HISTORY
#HISTSIZE=5000
#SAVEHIST=1000
#setopt HIST_EXPIRE_DUPS_FIRST
#setopt EXTENDED_HISTORY
#setopt SHARE_HISTORY


source $HOME/Workspace/__space__/.dotfiles/system/.aliases
source $HOME/Workspace/__space__/.dotfiles/system/.functions
source $HOME/Workspace/__space__/.dotfiles/system/.keybindings
source $HOME/.zshrc_local



#postgresqlstart
#mysqlstart
#mongodbstart

#export PATH=$(brew --prefix)/bin/bash:$PATH
export PATH="$HOME/Workspace/__space__/.dotfiles/scripts:$PATH"

alias uu=". uu"

source ~/.iterm2_shell_integration.zsh

source $HOME/Workspace/__space__/.dotfiles/system/.sessionBlurb


