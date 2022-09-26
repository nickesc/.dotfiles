
#                                       ████ ██  ██
#             ██████                   ░██░ ░░  ░██
#      ██████░██░░░██ ██████  ██████  ██████ ██ ░██  █████
#     ░░░░██ ░██  ░██░░██░░█ ██░░░░██░░░██░ ░██ ░██ ██░░░██
#        ██  ░██████  ░██ ░ ░██   ░██  ░██  ░██ ░██░███████
#   ██  ██   ░██░░░   ░██   ░██   ░██  ░██  ░██ ░██░██░░░░
#  ░██ ██████░██     ░███   ░░██████   ░██  ░██ ███░░██████
#  ░░ ░░░░░░ ░░      ░░░     ░░░░░░    ░░   ░░ ░░░  ░░░░░░

eval "$(/opt/homebrew/bin/brew shellenv)"

# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Set up the GOPATH
export GOPATH="$HOME/Workspace/projects/Go Projects"
export PATH=$PATH:$(go env GOPATH)/bin
