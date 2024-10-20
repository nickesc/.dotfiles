# To-Do List:

### Profile:
- [ ] go over profile setup and look for issues

### Bootstrap Script
- [ ] copies the zshrc to the wrong place!!!! replaces the correct zshrc accidentally!

### Brew Setup


### MacOS Setup:
- [ ] go over macos defaults and remove ones that are not sensible

### Brew Packages
- [ ] prune packages
- [ ] add other packages

### MAS Packages
- [ ] set up validation that user is logged in to their appleid before downlaoding from the app store

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

### .zshrc changes
- [ ] add rust to zshrc (lines added to profile and bashrc and shenv and bashprofile)


### Testing
- [ ] look into using github action runners on the `macos-latest` platform to test the script when things are changed
- [ ] will likely need to add more error detection, telling it when to stop if it hits an error and to return the error so the runner knows something went wrong -- connect with ;; or && operators to make them dependant on each other
