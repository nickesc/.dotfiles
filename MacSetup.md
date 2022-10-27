# Batcomputer 2 Setup

### Apps:


https://github.com/atom-community/atom

#### Manual installs

VS Code (Shell Command: Install 'code' command in PATH command)
https://code.visualstudio.com/download
https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line
chrome -- all extensions
https://www.google.com/chrome/
xquartz
https://www.xquartz.org/
creative cloud
https://creativecloud.adobe.com/en/apps/download/creative-cloud
vdownloader
https://vdownloader.com/en
parallels
https://www.parallels.com/welcome-new/
parallels toolbox (if not already installed by parallels)
https://www.parallels.com/products/toolbox/
mega sync
https://mega.io/desktop
sdclone
https://twocanoes.com/redownload
winclone
https://twocanoes.com/products/mac/winclone/
nitromac
https://archive.org/details/ni-tro-mac.app
steam
https://store.steampowered.com/about/
minecraft
https://www.minecraft.net/en-us/download
unity
https://unity3d.com/get-unity/download
epic Games and unreal
https://store.epicgames.com/en-US/download
origin
https://www.origin.com/usa/en-us/store/download
google drive sync
https://www.google.com/drive/download/
logitech options
https://www.logitech.com/en-us/software/logi-options-plus.html
blender
https://www.blender.org/
Bosca Ceoil and Adobe Air Runtime
https://terrycavanagh.itch.io/bosca-ceoil
https://airsdk.harman.com/runtime
Lab Chirp

remap command+Q to literally anything else - to prevent accidental close-all

#### Casks

libre office
retroarch
zoom
telegram
wine?
zotero (export library?)
Atom
Bear (transfer notes with backup on desktop)
musescore 2
https://projects.sappharad.com/multipatch/
vivaldi
tor
opera
disk inventory x
daisy disk
folx
virtual box
mediaiinfo
vlc
transmission
sd card formatter
elmedia player
hex fiend
iswiff
simple comics
calibre
unetbootin
slack
via
https://bztsrc.gitlab.io/usbimager/
https://www.notion.so/desktop
https://syncplay.pl/
cybberduck
https://www.balena.io/etcher/
sweethome 3d
snagit
caffiene
handbrake
raspberry pi imager
citra
dolphin
openemu
https://topnotch.app/
audacity

##### Menu bar hidding options
vanilla
hiddenbar
https://www.macbartender.com/

##### Tapped Casks
popcorn time
qmk toolbox


#### App Store apps
xcode
yoink
vpn unlimited
hotspot shield
genki arcade
teleprompter
highland 2
spark
exif purge
any file info
imazing heic converter
dashlane
hiddenme

## packages:

Adding a directory to PATH:
```export PATH=$PATH:<dir>   ## add this to ~/.zshrc to add```

pip list
brew list

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sdkman
nvm
pyenv

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
command -v nvm
nvm install stable
nvm ls
nvm use stable
node -v


brew install golang
export PATH=$PATH:/usr/local/go/bin

brew install --cask vanilla
brew install --cask hiddenbar
brew install --cask bartender
brew install --cask the-unarchiver

brew install \
  nano \
  git \
  git-delta \
  bat \
  exa \
  tldr \
  fzf \
  tree \
  blueutil \
  minicom \
  ffmpeg \
  qemu \
  gh \
  tldr \
  mas &&

brew install --cask \
  rectangle \
  docker \
  slack \
  beekeeper-studio \
  bear \
  tor \
  sublime-text \
  calibre \
  vlc \
  atom \
  vivaldi \
  handbrake \
  mediainfo \
  multipatch \
  daisydisk \
  sdformatter \
  elmedia-player \
  hex-fiend \
  opera \
  musescore \
  folx \
  disk-inventory-x \
  transmission \
  iswiff \
  simple-comic \
  via \
  unetbootin \
  usbimager \
  syncplay \
  cyberduck \
  balenaetcher \
  sweet-home3d \
  snagit \
  audacity \
  raspberry-pi-imager \
  applepi-baker \
  citra \
  dolphin \
  openemu \
  caffeine \
  notunes \

  the-unarchiver \ 
  notion \
  obs \
  streamlabs-obs \
  blender \

  iterm2 \
  topnotch \
  
  visual-studio-code \
  google-chrome \
  firefox \
  discord \
  spotify \
  
  
brew tap homebrew/autoupdate
https://github.com/Homebrew/homebrew-autoupdate
brew autoupdate start --upgrade --greedy --cleanup --enable-notification --immediate

brew update && brew upgrade && brew cleanup && brew doctor



### Dev:
iterm - exclude from dock, start on startup
Sublime text
jetbrains toolbox
visual studio/visual studio code
postman (migrate)
eclipse
gitkraken
balsamiq
MIPS Mars
https://www.arduino.cc/en/software
https://anaconda.org/anaconda/anaconda-navigator
https://desktop.github.com/
https://cli.github.com/
https://www.rstudio.com/products/rstudio/


### Steps:
1. update mac
2. setup touchpad (scrolling, tap to to click, 3 finger drag)
3. setup dock (size, remove unused apps, position, hidden)
4. Optimize battery charging and show battery percentage
5. disable hey Siri
6. get chrome
7. Night Shift
8. Set app download tolerance level
9. Finder > View > Show Path Bar and Show Status Bar
10. Logitech options, set up mouse
11. Set default view info for finder -- sort by name, view path and status bar
12. Spotligt search hotkey to ctrl+space
13. Default browser
14. Secure safari browser - deselect Open “safe” files after downloading
https://github.com/iamadamdev/bypass-paywalls-chrome/
15. disable autocorrect stuff
16. change computer name
17. install Xcode, xcode dev tools and xquartz
18. install/update brew
19. install iterm2
make iterm2 default terminal, set hotkey, and install shell integration
20. install oh-my-zsh
21. install brew formulae (not casks)
  git config --global init.defaultBranch main
22. install pyenv and up-to-date python
23. install npm with nvm
24. install java w SDKMAN! as adoptium/adoptopenjdk
install scala w SDKMAN! as openjdk
install postgresql aND MYSQL and mongodb
install beekeeper studio to work w databases
install Go

install rust w rustup
install ruby w rvm
install casks
22. install visual studio code
23. install JetBrains ides
24. create .dotfiles repo
install giphy capture
export mendeley library

##vsc extensions
https://marketplace.visualstudio.com/items?itemName=dbaeumer.jshint


Left:
2. vs code extensions (workspace recommended extensions and install from vsix https://code.visualstudio.com/docs/editor/extension-marketplace#_install-from-a-vsix)
2. vimrc and nanorcn and editor info page, w ides and editors w configs (https://linuxhint.com/configure_nano_text_editor_nanorc/ and https://github.com/scopatz/nanorc)
3. bash_profile integration
4. execute setup files
5. worlkspace setup and finish profile setup
6. order package files sensibly, finish cask notes, add npm and pip installations to their notes files
7. order aliases and functions
8. wallpapers readme
9. vm notes page (virtualbox vagrant vagrant-manager vm-warefusion parallels docker) (https://app.vagrantup.com/boxes/search)
10. tmux config
11. sublimetext extensions?
12. pipenv (https://github.com/gangleri/oh-my-zsh/tree/pipenv_plugin/plugins/pipenv) (https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjl8-edoPr6AhWfFlkFHek1D0sQFnoECBkQAw&url=https%3A%2F%2Fwww.rootstrap.com%2Fblog%2Fhow-to-manage-your-python-projects-with-pipenv-pyenv%2F&usg=AOvVaw1tD2Us4MrHItHSYdz3cRdq) (https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjl8-edoPr6AhWfFlkFHek1D0sQFnoECAsQAQ&url=https%3A%2F%2Fmedium.com%2Fntust-aivc%2Fhow-to-install-pyenv-pipenv-in-ubuntu-and-use-multiple-versions-of-python-and-its-suites-3514099a6e05&usg=AOvVaw23b9hXoVlJgSrT3R2XVkQZ) (https://synsense.gitlab.io/sinabs/howto/python_pyenv_pipenv.html)
13. list chrome extensions
14. powershell brew setup? (https://formulae.brew.sh/cask/powershell#default)
15. vscode telemtery disable?, install paradise for vscode (https://themes.vscode.one/theme/nickesc/q4IdC2a6) (https://css-tricks.com/creating-a-vs-code-theme/) (https://medium.com/wearelaika/vscode-create-your-own-custom-theme-extension-96c67bd753f6)
.ardupy? (https://github.com/Seeed-Studio/ArduPy) (https://marketplace.visualstudio.com/items?itemName=Seeed.seeed-micropython-ide)
. decide on notch/menubar shit
. add headers to remaining files
5. go through each file, make sure it's done

