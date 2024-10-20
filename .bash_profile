
#      ██                        ██                                      ████ ██  ██
#     ░██                       ░██            ██████                   ░██░ ░░  ░██
#     ░██       ██████    ██████░██           ░██░░░██ ██████  ██████  ██████ ██ ░██  █████
#     ░██████  ░░░░░░██  ██░░░░ ░██████       ░██  ░██░░██░░█ ██░░░░██░░░██░ ░██ ░██ ██░░░██
#     ░██░░░██  ███████ ░░█████ ░██░░░██      ░██████  ░██ ░ ░██   ░██  ░██  ░██ ░██░███████
#   ██░██  ░██ ██░░░░██  ░░░░░██░██  ░██      ░██░░░   ░██   ░██   ░██  ░██  ░██ ░██░██░░░░
#  ░██░██████ ░░████████ ██████ ░██  ░██ █████░██     ░███   ░░██████   ░██  ░██ ███░░██████
#  ░░ ░░░░░    ░░░░░░░░ ░░░░░░  ░░   ░░ ░░░░░ ░░      ░░░     ░░░░░░    ░░   ░░ ░░░  ░░░░░░

eval "$(/opt/homebrew/bin/brew shellenv)"

export WORKSPACE="$HOME/Workspace"
export PROFILEDIR="$WORKSPACE/Profile"
export CODEDIR="$WORKSPACE/Code"
export ARTDIR="$WORKSPACE/Art"
export WRITINGDIR="$WORKSPACE/Writing"
export DATADIR="$WORKSPACE/Data"

export TESTDIR="$WORKSPACE/.test"
export HIDDENDIR="$WORKSPACE/.hidden"

export __SPACE__="$WORKSPACE/__space__"
export DOTFILES="$__SPACE__/.dotfiles"
export HISTDIR="$__SPACE__/.history"

export ICLOUDDIR="$HOME/Library/Mobile\ Documents/com~apple~CloudDocs"

export PYMAIN="3.11.0"
export PY2MAIN="2.17.8"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

export QMK_HOME="$HOME/Workspace/__space__/.qmk_firmware" # Optional, set the location for `qmk_firmware`

alias ls="ls -A --color=auto"
alias g="git"
alias h='history'

## Directory Shortcuts
alias space="cd $WORKSPACE"
alias _space="cd $__SPACE__"
alias projects="cd $CODEDIR"
alias art="cd $ARTDIR"
alias writing="cd $WRITINGDIR"
alias test="cd $TESTDIR"
alias hidden="cd $HIDDENDIR"
alias data="cd $DATADIR"
alias icloud="cd $ICLOUDDIR"
alias dotfiles="cd $DOTFILES"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
    # Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though


## Editor Shortcuts
alias xcode="xed"
#alias sublime="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl --new-window $@"

## Terminal Utilities
    # add execution permissions to a file
alias permex="chmod +x"
alias reload="source ~/.bashrc"
    # edit global bash configuration
alias bashconfig="$EDITOR ~/.bash_profile"
    # edit global git configuration
alias gitconfig="$EDITOR ~/.gitconfig"
    # to keep an empty directory tracked in git
alias keep="touch .gitkeep"
alias gitkeep="keep"
    # Reload native apps
alias killfinder="killall Finder"
alias killdock="killall Dock"
alias killmenubar="killall SystemUIServer NotificationCenter"
alias killos="killfinder && killdock && killmenubar"
alias nomnom="killall"
    # Open dir in finder
alias finder="open ."
    # Lock the screen (when going AFK)
alias afk="pmset displaysleepnow"
    # Copy pwd to clipboard
alias cpwd="pwd|tr -d '\n'|pbcopy && pwd"
        # Print each PATH entry on a separate line
alias printpath='echo -e ${PATH//:/\\n}'
killscreens () {
    screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
}
    # Change working directory to the top-most Finder window location
function cdf() {
    cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')" || return;
}
transfer() {
  tmpfile=$( mktemp -t transferXXX )
  curl --progress-bar --upload-file "$1" https://transfer.sh/$(basename $1) >> $tmpfile;
  cat $tmpfile;
  cat $tmpfile | pbcopy;
  rm -f $tmpfile;
}


export PATH="$DOTFILES/scripts:$PATH"

# COMMENTED OUT BC IT WAS CALLING DOCKER FOR NO REASON AND CAUSING ERRORS
## [[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1;

export EDITOR='nano';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTFILE="$HISTDIR/bash/.bash_history"
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

export GOPATH="$HOME/Workspace/code/Go"

## UNCOMMENT AFTER GO INSTALL
#export PATH=$PATH:$(go env GOPATH)/bin

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

if shopt -q login_shell; then
    export LOGINQ="; login"
else
    export LOGINQ=""
fi

export PS1="\w [\s-\v$LOGINQ] > "
