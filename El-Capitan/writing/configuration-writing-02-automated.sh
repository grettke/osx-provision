rm ~/.profile
cp ./profile-common ~/.profile
source ~/.profile
cat ~/.profile
set -x
sudo -v
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install karabiner
else
    echo "karabiner: Only install on hosts"
fi
brew install git
brew install python
brew linkapps python
brew install ruby
echo $BASH_VERSION
brew install bash
if grep "/usr/local/bin/bash" /etc/shells > /dev/null; then
    echo "brew bash already configured in shells; doing nothing"
else
    sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    chsh -s /usr/local/bin/bash
fi
echo $BASH_VERSION
brew cask install spectacle
brew cask install little-snitch
brew cask install mplayer-osx-extended
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install vmware-fusion
else
    echo "vmware-fusion: Only install on hosts"
fi
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install skype
else
    echo "skype: Only install on hosts"
fi
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install dropbox
else
    echo "dropbox: Only install on hosts"
fi
brew cask install bartender
brew cask install google-chrome
brew cask install firefox
brew cask install opera
brew cask install filezilla
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install carbon-copy-cloner
else
    echo "carbon-copy-cloner: Only install on hosts"
fi
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install flux
else
    echo "flux: Only install on hosts"
fi
brew tap caskroom/fonts
brew cask install font-dejavu-sans
brew cask install font-quivira
brew cask install font-noto-sans
brew cask install font-noto-sans-symbols
brew cask install font-symbola
rm -rf ~/git/github-anonymous
mkdir -p ~/git/github-anonymous
cd ~/git/github-anonymous
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
cd ~/git/github-anonymous
git clone https://github.com/caskroom/homebrew-cask.git
brew install ccrypt
brew install tree
brew install archey
brew install figlet
cd ~/
rm .profile
cp ./writing/profile-writing .profile
source .profile
cat .profile
cd writing
brew cask install racket
brew cask install xquartz
brew cask install growlnotify
brew install aspell -all
brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
brew install graphviz
brew install pandoc
brew install emacs --with-cocoa --with-gnutls --with-imagemagick
brew linkapps
brew cask install java
brew cask install deltawalker
brew cask install mactex
brew install gnuplot --with-latex --with-pdflib-lite --with-test --with-x11
set -x
rm -rf ~/src
mkdir ~/src
cd ~/src
echo `date +%Y-%m-%dT%H:%M:%S%z`
git clone git://orgmode.org/org-mode.git
echo `date +%Y-%m-%dT%H:%M:%S%z`
cd org-mode
emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
cd ~/src
git clone git@github.com:punchagan/org2blog.git
git clone https://github.com/jwiegley/use-package.git
git clone https://github.com/grettke/help.git
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
sudo scutil --set HostName ""
echo "Enter HostName (plain old hostname): "
read vhn
sudo scutil --set HostName $vhn
sudo scutil --set LocalHostName ""
echo "Enter LocalHostName (name for Bonjour services): "
read vlhn
sudo scutil --set LocalHostName $vlhn
sudo defaults delete 'com.apple.smb.server' NetBIOSName
echo "Enter NetBIOSName (name that Windows boxes will see): "
read vnbn
sudo defaults write 'com.apple.smb.server' NetBIOSName -string $vnbn
sudo scutil --set ComputerName ""
echo "Enter ComputerName (human friendly GUI name): "
read vcn
sudo scutil --set ComputerName $cn
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
All creativity is an extended form of a joke.
          — Alan Kay"
sudo spctl --master-disable

cd ~/Pictures/
curl -O http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2015/02/M101-ORG.jpg
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/Pictures/M101-ORG.jpg'";
osascript -e 'set volume output volume 50'
defaults write 'NSGlobalDomain' NSAutomaticSpellingCorrectionEnabled -bool false
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint -bool true
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint2 -bool true
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode -bool true
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write 'com.apple.print.PrintingPrefs' 'Quit When Finished' -bool true
defaults write 'com.apple.menuextra.battery' ShowPercent -bool true
defaults write 'com.apple.menuextra.clock' DateFormat -string "EEE MMM d  HH:mm"
defaults write 'com.apple.TimeMachine' DoNotOfferNewDisksForBackup -bool true
defaults write 'com.apple.desktopservices' DSDontWriteNetworkStores -bool true
defaults write 'NSGlobalDomain' NSDocumentSaveNewDocumentsToCloud -bool false
defaults write 'NSGlobalDomain' NSWindowResizeTime -float 0.001
defaults write 'NSGlobalDomain' AppleAquaColorVariant -int 6
defaults write 'NSGlobalDomain' AppleInterfaceStyle -string Dark
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
defaults write com.apple.CrashReporter DialogType -string "none"
defaults write com.apple.helpviewer DevMode -bool true
sudo systemsetup -setrestartfreeze on
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write 'NSGlobalDomain' ApplePressAndHoldEnabled -bool false
defaults write 'NSGlobalDomain' com.apple.keyboard.fnState -bool true
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
defaults write com.apple.dock autohide -bool true && killall Dock
defaults write com.apple.dock launchanim -bool false && killall Dock
defaults write com.apple.dock mouse-over-hilte-stack -bool true && killall Dock
defaults write com.apple.dock showhidden -bool true && killall Dock
defaults write com.apple.dock minimize-to-application -bool true && killall Dock
defaults write com.apple.dock orientation -string left && killall Dock
defaults write com.apple.Dock autohide-time-modifier -float 0 && killall Dock
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
defaults write com.apple.Dock tilesize -int 50 && killall Dock
defaults write com.apple.Dock show-process-indicators -bool true && killall Dock
defaults write 'com.apple.dock' persistent-apps -array '' && killall Dock
defaults write 'com.apple.dock' expose-animation-duration -float 0.1 && killall Dock
defaults write 'com.apple.finder' QLEnableTextSelection -bool true && killall Finder
defaults write 'com.apple.frameworks.diskimages' auto-open-ro-root -bool true && killall Finder
defaults write 'com.apple.frameworks.diskimages' auto-open-rw-root -bool true && killall Finder
defaults write 'com.apple.finder' OpenWindowForNewRemovableDisk -bool true && killall Finder
defaults write 'com.apple.finder' WarnOnEmptyTrash -bool false && killall Finder
defaults write 'com.apple.finder' FXEnableExtensionChangeWarning -bool false && killall Finder
defaults write 'com.apple.finder' _FXShowPosixPathInTitle -bool true && killall Finder
defaults write 'com.apple.finder' NewWindowTarget -string PfHm && killall Finder
defaults write 'com.apple.finder' FXDefaultSearchScope -string SCcf && killall Finder
defaults write 'com.apple.finder' AppleShowAllFiles -bool true && killall Finder
defaults write 'com.apple.finder' AppleShowAllExtensions -bool true && killall Finder
defaults write 'com.apple.finder' ShowPathbar -bool true && killall Finder
defaults write 'com.apple.finder' ShowStatusBar -bool true && killall Finder
defaults write 'NSGlobalDomain' NSTableViewDefaultSizeMode -bool true && killall Finder
defaults write 'com.apple.Finder' FXPreferredViewStyle Nlsv && killall Finder
defaults write com.apple.finder FXPreferredGroupBy -string "None"
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:columns:4:ascending true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:columns:kind:ascending true" ~/Library/Preferences/com.apple.finder.plist
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
defaults write com.apple.screencapture disable-shadow -bool true
defaults write 'com.apple.screencapture' type -string png && killall SystemUIServer
defaults write 'NSGlobalDomain' AppleFontSmoothing -int 2
mkdir -p ~/Screen\ Shots
defaults write com.apple.screencapture location ~/Screen\ Shots
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0
# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Set edge-dragging delay to 0.7
defaults write com.apple.dock workspaces-edge-delay -float 1.0
defaults write 'NSGlobalDomain' com.apple.mouse.scaling -float 2
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor IconType -int 5
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor SortDirection -int 0
