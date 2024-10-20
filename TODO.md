# To-Do List:

### Theme:
- [ ] check out resume and paradise clones and profile setup
- [ ] fix spaceship submodule

### Dotfiles
- [ ] copies the zshrc to the wrong place!!!! replaces the correct zshrc accidentally!

### Brew Setup
- [ ] brew upgrade --all is not a command
- [ ] wget --withiri does not work

### MacOS Setup:
- [ ] Warning: Idle sleep timings for "Battery Power" may not behave as expected.
  - Display sleep should have a lower timeout than system sleep.
- [ ] xattr: /Users/nickesc/Library: No such xattr: com.apple.FinderInfo

### Brew Packages
- [ ] all packages at before the brewfile need to have their flags removed --replacesystemvim isn't real


### MAS Packages
- [ ] remove xcode from masfile?

### Fonts
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
- [ ] add jetbrains tools to zshrc
``` sh
## Add Jetbrains tools to PATH and look in this folder for scripts
export PATH="$HOME/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
```
- [ ] add dotnet zshrc:
```sh
export PATH="$PATH:/Users/nickesc/.dotnet/tools"
```
- [ ] add rust to zshrc (lines added to profile and bashrc and shenv and bashprofile)
