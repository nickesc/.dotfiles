
#      ██                        ██                                      ████ ██  ██
#     ░██                       ░██            ██████                   ░██░ ░░  ░██
#     ░██       ██████    ██████░██           ░██░░░██ ██████  ██████  ██████ ██ ░██  █████
#     ░██████  ░░░░░░██  ██░░░░ ░██████       ░██  ░██░░██░░█ ██░░░░██░░░██░ ░██ ░██ ██░░░██
#     ░██░░░██  ███████ ░░█████ ░██░░░██      ░██████  ░██ ░ ░██   ░██  ░██  ░██ ░██░███████
#   ██░██  ░██ ██░░░░██  ░░░░░██░██  ░██      ░██░░░   ░██   ░██   ░██  ░██  ░██ ░██░██░░░░
#  ░██░██████ ░░████████ ██████ ░██  ░██ █████░██     ░███   ░░██████   ░██  ░██ ███░░██████
#  ░░ ░░░░░    ░░░░░░░░ ░░░░░░  ░░   ░░ ░░░░░ ░░      ░░░     ░░░░░░    ░░   ░░ ░░░  ░░░░░░


[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

export BASH_SILENCE_DEPRECATION_WARNING=1;

export EDITOR='nano';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

source .bashrc
