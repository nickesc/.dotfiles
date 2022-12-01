
#                                       ████ ██  ██
#             ██████                   ░██░ ░░  ░██
#      ██████░██░░░██ ██████  ██████  ██████ ██ ░██  █████
#     ░░░░██ ░██  ░██░░██░░█ ██░░░░██░░░██░ ░██ ░██ ██░░░██
#        ██  ░██████  ░██ ░ ░██   ░██  ░██  ░██ ░██░███████
#   ██  ██   ░██░░░   ░██   ░██   ░██  ░██  ░██ ░██░██░░░░
#  ░██ ██████░██     ░███   ░░██████   ░██  ░██ ███░░██████
#  ░░ ░░░░░░ ░░      ░░░     ░░░░░░    ░░   ░░ ░░░  ░░░░░░

eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up the GOPATH
export GOPATH="$HOME/Workspace/code/Go"

## UNCOMMENT AFTER GO INSTALL
#export PATH=$PATH:$(go env GOPATH)/bin
