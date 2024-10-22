
#                     ██
#                    ░██
#      ██████  ██████░██      ██████  █████
#     ░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#        ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#   ██  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#  ░██ ██████ ██████ ░██  ░██░███   ░░█████
#  ░░ ░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

# WAIT! Don't add things here, do it in .zshrc_local for this computer OR add to the .aliases or .functions files in the remote repo -- keep this file clean unless you know what you're doing!

eval "$(/opt/homebrew/bin/brew shellenv)"
export BREW_PREFIX=$(brew --prefix)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export WORKSPACE="$HOME/Workspace"
export PROFILEDIR="$WORKSPACE/Profile"
export CODEDIR="$WORKSPACE/Code"
export ARTDIR="$WORKSPACE/Art"
export WRITINGDIR="$WORKSPACE/Writing"
export DATADIR="$WORKSPACE/Data"
export DESKTOP="$HOME/Desktop"
export DOWNLOADS="$HOME/Downloads"

export TESTDIR="$WORKSPACE/.test"
export HIDDENDIR="$WORKSPACE/.hidden"

export __SPACE__="$WORKSPACE/__space__"
export DOTFILES="$__SPACE__/.dotfiles"
export HISTDIR="$__SPACE__/.history"
export QMK_HOME="$__SPACE__/qmk_firmware"

export ICLOUDDIR="$HOME/Library/Mobile\ Documents/com~apple~CloudDocs"

export PYMAIN="3.11.10"
export PY2MAIN="2.7.18"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  #gradle        # Gradle section
  #maven         # Maven section
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
  #pyenv        # Pyenv section
  dotnet        # .NET section
  #ember         # Ember.js section
  kubectl       # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  #vi_mode       # Vi-mode indicator
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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Set how often to auto-update (in days).
zstyle ':omz:update' frequency 10

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

source "$DOTFILES/themes/omz/catppuchin_mocha-zsh-syntax-highlighting/catppuccin_mocha-zsh-syntax-highlighting.zsh"

# configure wd warp point record location
export WD_CONFIG="$HISTDIR/wd/.warprc"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    xcode
    vscode
    #git
    screen
    gh
    pyenv
    #pipenv
    brew
    web-search
    universalarchive
    #extract
    wd
    dirpersist
    aliases
    jsontools
    macos
    gitignore
    genpass
    copybuffer
    dirhistory
    thefuck
    safe-paste
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root cursor)
source "$ZSH"/oh-my-zsh.sh

# User configuration

# history
HISTFILE="$HISTDIR/zsh/.zhistory"
setopt APPEND_HISTORY
HISTSIZE=5000
SAVEHIST=1000
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

# Manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

## Uncomment to use case-sensitive completion.
# CASE_SENSITIVE="true"
## Uncomment to use hyphen-insensitive completion.
## Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
## Uncomment to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Add Visual Studio Code (code)
#export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export QMK_HOME="$HOME/Workspace/__space__/.qmk_firmware" # Optional, set the location for `qmk_firmware`

#export PATH=$(brew --prefix)/bin/bash:$PATH

if [[ -r "$(brew --prefix)"/opt/chruby/share/chruby/chruby.sh ]]; then
  source "$(brew --prefix)"/opt/chruby/share/chruby/chruby.sh
  source "$(brew --prefix)"/opt/chruby/share/chruby/auto.sh
fi

# Set up the GOPATH
export GOPATH="$HOME/Workspace/code/Go"

## UNCOMMENT AFTER GO INSTALL
#export PATH=$PATH:$(go env GOPATH)/bin

# add dotnet tools to PATH
export PATH="$PATH:/Users/nickesc/.dotnet/tools"

source "$DOTFILES"/system/.aliases
source "$DOTFILES"/system/.functions
source "$DOTFILES"/system/.keybindings
source "$HOME"/.zshrc_local
export PATH="$DOTFILES/scripts:$PATH"

## Add Jetbrains tools to PATH and look inn this folder for scripts
export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"

#postgresqlstart
#mysqlstart
#mongodbstart

## IF BREW IS GIVING WARNINGS UNCOMMENT THIS LINE: https://github.com/pyenv/pyenv#Installation
#alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

source "$HOME"/.iterm2_shell_integration.zsh
source "$DOTFILES"/system/.sessionBlurb
