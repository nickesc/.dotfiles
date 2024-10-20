# To-Do List:

### Theme:
- [ ] check out resume and paradise clones and profile setup
- [x] fix spaceship submodule

### Profile:
- [x] correct the resume.pdf path during copy from website clone
- [ ] remove paradise theme clone, it is done in submodules

### Bootstrap Script
- [ ] copies the zshrc to the wrong place!!!! replaces the correct zshrc accidentally!
- [x] add --recurse-submodules to clone command
- [ ] make sure nanorc and paradise do not try to clone themselves
- [ ] add homebrew check:
```sh
# MUST INSTALL XCODE COMMAND LINE TOOLS AND GIT BEFORE RUNNING


# Check if Homebrew is installed
echo -e "Checking for Homebrew installation..."

if ! command -v brew &> /dev/null; then
    echo -e "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo -e "Homebrew found."
fi



if [ "$(uname -s)" != "Darwin" ]; then
    echo "Non-MacOS Devide detected"
    return 0
fi
if [ "$(uname -m)" != "arm64" ]; then
    echo "Non-Apple Silicon Devide detected"
    return 0
fi
if ! is-at-least 14 "$(sw_vers -productVersion)"; then
    echo "MacOS Sonoma or newer not detected"
    return 0
fi
```

### Brew Setup
- [ ] brew upgrade --all is not a command
- [ ] wget --withiri does not work

### MacOS Setup:
- [ ] Warning: Idle sleep timings for "Battery Power" may not behave as expected.
  - Display sleep should have a lower timeout than system sleep.
- [ ] xattr: /Users/nickesc/Library: No such xattr: com.apple.FinderInfo

### Brew Packages
- [ ] all packages at before the brewfile need to have their flags removed --replacesystemvim isn't real
- [ ] prune packages
- [ ] add other packages

### MAS Packages
- [ ] remove xcode from masfile?

### Fonts
- [ ] consider adding cloned fonts as submodules
- [ ] Brew fonts are now on the main keg
- [ ] jost-VF is missing
- [ ] stgeord/*.otf missing
- [ ] public-sans wrong place
- [ ] cp: /Users/nickesc/Workspace/__space__/.dotfiles/fonts/iA/iA Writer Duo/Variable/*.ttf: No such file or directory
- [ ] cp: /Users/nickesc/Workspace/__space__/.dotfiles/fonts/iA/iA Writer Duospace/OTF (Mac)/*.ttf: No such file or directory
- [ ] cp: /Users/nickesc/Workspace/__space__/.dotfiles/fonts/iA/iA Writer Mono/Variable/*.ttf: No such file or directory
- [ ] cp: /Users/nickesc/Workspace/__space__/.dotfiles/fonts/iA/iA Writer Quattro/Variable/*.ttf: No such file or directory
- [ ] fatal: destination path '/Users/nickesc/Workspace/__space__/.dotfiles/fonts/iA' already exists and is not an empty directory.
- [ ] birdfont download failed
- [ ] fnt downloads failed
- [ ] brew install --cask font-ar-one-sans font-onest font-gabarito font-mooli font-pixelify-sans font-rethink-sans font-young-serif

### Python Dev
- [ ] python dev messed up bc of wrong pyton2 version number x
- [ ] DONT INSTALL PYTHON 2 PIP PACKAGES

### Java Dev
- [ ] java update java 17 version

### .zshrc changes
- [x] add jetbrains tools to zshrc
``` sh
## Add Jetbrains tools to PATH and look in this folder for scripts
export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
```
- [ ] add dotnet zshrc:
```sh
export PATH="$PATH:/Users/nickesc/.dotnet/tools"
```
- [ ] add rust to zshrc (lines added to profile and bashrc and shenv and bashprofile)


### Testing
- [ ] look into using github action runners on the `macos-latest` platform to test the script when things are changed
- [ ] will likely need to add more error detection, telling it when to stop if it hits an error and to return the error so the runner knows something went wrong
