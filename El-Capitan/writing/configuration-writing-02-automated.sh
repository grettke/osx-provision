# [[file:provisioning.org::*Automated:%20Install%20and%20automatically%20configure%20as%20much%20as%20possible][16925E43-FD2E-4CB7-957F-DCE747A4FC8C]]
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Software][F1A77C76-9D56-45CE-8C27-9A4DD9D50B1F]]
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Profile][92F77AD1-E9DC-4740-B3A3-C6A3A4034068]]
rm ~/.profile
cp ./profile-common ~/.profile
source ~/.profile
cat ~/.profile
# 92F77AD1-E9DC-4740-B3A3-C6A3A4034068 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Debug][4EE99FBE-E06D-4D65-9B29-F3C9D2704C4B]]
set -x
sudo -v
# 4EE99FBE-E06D-4D65-9B29-F3C9D2704C4B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Brew%20&%20Brew%20Cask][DB082535-A43F-46EA-9F1B-1BB6302CA396]]
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# DB082535-A43F-46EA-9F1B-1BB6302CA396 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Brew%20&%20Brew%20Cask][5C68042B-9C59-42C9-9A7F-D625C0475C3A]]
brew tap caskroom/cask
# 5C68042B-9C59-42C9-9A7F-D625C0475C3A ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*karabiner][E81A12BB-2B0F-468D-8090-4B525168B86A]]
brew cask install karabiner
# E81A12BB-2B0F-468D-8090-4B525168B86A ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*git][F5E5B964-50FA-49EF-BABF-EFE558057EC2]]
brew install git
# F5E5B964-50FA-49EF-BABF-EFE558057EC2 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Python][4128F3DB-7E7C-4885-B54E-AA78423855C5]]
brew install python
brew linkapps python
# 4128F3DB-7E7C-4885-B54E-AA78423855C5 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Ruby][EF706E2F-46B7-4F69-ADDB-9D62FDFCD23D]]
brew install ruby
# EF706E2F-46B7-4F69-ADDB-9D62FDFCD23D ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Bash][ADE3737D-A638-4BBD-9DD5-C42681EA1C0D]]
echo $BASH_VERSION
brew install bash
if grep "/usr/local/bin/bash" /etc/shells > /dev/null; then
    echo "brew bash already configured in shells; doing nothing"
else
    sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    chsh -s /usr/local/bin/bash
fi
echo $BASH_VERSION
# ADE3737D-A638-4BBD-9DD5-C42681EA1C0D ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Spectacle][944FB8AE-DD79-49C6-8ABC-878A782234BE]]
brew cask install spectacle
# 944FB8AE-DD79-49C6-8ABC-878A782234BE ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Little%20Snitch][0A6CDD3C-BB1F-4AB1-8523-C4F5383A6856]]
brew cask install little-snitch
# 0A6CDD3C-BB1F-4AB1-8523-C4F5383A6856 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*VLC][093814E5-DB0A-481C-9B39-ACF62216BB55]]
brew cask install vlc
# 093814E5-DB0A-481C-9B39-ACF62216BB55 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Adobe%20Flash%20Player][20537EB1-65C8-4CD4-B637-0DCE0F10558E]]
brew cask install flash-player
# 20537EB1-65C8-4CD4-B637-0DCE0F10558E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*VMWare%20Fusion][2B059288-F12E-48E1-939F-1138117FDE4B]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install vmware-fusion
else
    echo "vmware-fusion: Only install on hosts"
fi
# 2B059288-F12E-48E1-939F-1138117FDE4B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Skype][D3411D0C-F38A-409F-8D6C-5A03AFEE9CCF]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install skype
else
    echo "skype: Only install on hosts"
fi
# D3411D0C-F38A-409F-8D6C-5A03AFEE9CCF ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dropbox][3F5B9D5C-F54B-4DE9-A9FC-64D5AFDF2C86]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install dropbox
else
    echo "dropbox: Only install on hosts"
fi
# 3F5B9D5C-F54B-4DE9-A9FC-64D5AFDF2C86 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Bartender][1483E8B6-098B-4793-91BD-F5081B2F76ED]]
brew cask install bartender
# 1483E8B6-098B-4793-91BD-F5081B2F76ED ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Chrome][63C6CF90-7C76-4260-A7A5-7786561B2A70]]
brew cask install google-chrome
# 63C6CF90-7C76-4260-A7A5-7786561B2A70 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Firefox][32D109DB-1554-40D5-B591-FCC2F922F903]]
brew cask install firefox
# 32D109DB-1554-40D5-B591-FCC2F922F903 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Filezilla][E35E5182-A810-4547-B6E8-866CC13AA7FA]]
brew cask install filezilla
# E35E5182-A810-4547-B6E8-866CC13AA7FA ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Carbon%20Copy%20Cloner][27354A58-46C4-426B-8483-A96F7B63342D]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install carbon-copy-cloner
else
    echo "carbon-copy-cloner: Only install on hosts"
fi
# 27354A58-46C4-426B-8483-A96F7B63342D ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*flux][17B2744A-477B-4E79-A152-D1D43E8FB030]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install flux
else
    echo "flux: Only install on hosts"
fi
# 17B2744A-477B-4E79-A152-D1D43E8FB030 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Fonts][DD72394C-9D37-446C-A704-E88BE2B0CEED]]
brew tap caskroom/fonts
# DD72394C-9D37-446C-A704-E88BE2B0CEED ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Fonts][74BEB31B-9499-4144-B997-9E16B3FA24D9]]
brew cask install font-dejavu-sans
brew cask install font-quivira
brew cask install font-noto-sans
brew cask install font-noto-sans-symbols
brew cask install font-symbola
# 74BEB31B-9499-4144-B997-9E16B3FA24D9 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Terminal][429CCB8C-CFCF-40C9-87B5-03384D5DFE14]]
mkdir -p ~/git/github-anonymous
cd ~/git/github-anonymous
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
# 429CCB8C-CFCF-40C9-87B5-03384D5DFE14 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*ccrypt][9FBFA1B1-9677-4366-BF34-9A5D33A5677C]]
brew install ccrypt
# 9FBFA1B1-9677-4366-BF34-9A5D33A5677C ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*tree][91E886FD-0DFA-475D-B85C-B7DD07BDFB1B]]
brew install tree
# 91E886FD-0DFA-475D-B85C-B7DD07BDFB1B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*archey][900B81AC-3E1F-411F-9B11-9D23B958296E]]
brew install archey
# 900B81AC-3E1F-411F-9B11-9D23B958296E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*figlet][5667DE11-E68E-4558-A765-256D23A65B14]]
brew install figlet
# 5667DE11-E68E-4558-A765-256D23A65B14 ends here
# F1A77C76-9D56-45CE-8C27-9A4DD9D50B1F ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Set%20up%20the%20new%20profile][B4E9BFE0-DE8F-428D-ADC5-A7B03D55C770]]
rm ~/.profile
cp ./profile-writing ~/.profile
source ~/.profile
cat ~/.profile
# B4E9BFE0-DE8F-428D-ADC5-A7B03D55C770 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Bunch%20of%20Stuff][CCF91EC0-F689-4279-972C-9F1D32C4C64B]]
brew cask install xquartz
brew cask install growlnotify
brew install aspell -all
brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
brew install graphviz
brew install pandoc
brew install emacs --with-cocoa --with-gnutls --with-imagemagick
brew linkapps
# CCF91EC0-F689-4279-972C-9F1D32C4C64B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Java][274A6FA4-B619-422A-8546-C1DCE6C47B63]]
brew cask install java
# 274A6FA4-B619-422A-8546-C1DCE6C47B63 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Deltawalker][82653612-8AFE-4FF7-86D8-921DDA662EB9]]
brew cask install deltawalker
# 82653612-8AFE-4FF7-86D8-921DDA662EB9 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*MacTeX][C4F43DC6-97F3-4237-9746-B40243C20950]]
brew cask install mactex
# C4F43DC6-97F3-4237-9746-B40243C20950 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*GnuPlot][A6FDD2B6-412D-41A5-B58A-942C6540BB57]]
brew install gnuplot --with-latex --with-pdflib-lite --with-test --with-x11
# A6FDD2B6-412D-41A5-B58A-942C6540BB57 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Download%20Org%20Mode][916D6512-03E7-4971-8BAC-53D6FA258BBD]]
set -x
rm -rf ~/src
cd ~/src
git clone git://orgmode.org/org-mode.git
cd org-mode
emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
cd ~/src
git clone git@github.com:punchagan/org2blog.git
git clone https://github.com/jwiegley/use-package.git
git clone https://github.com/grettke/help.git
# 916D6512-03E7-4971-8BAC-53D6FA258BBD ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Link%20Files%20and%20Folders][567603FF-8A5F-4E06-939C-8D21D60AD4ED]]
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
# 567603FF-8A5F-4E06-939C-8D21D60AD4ED ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Machine][6B36623E-8E41-45E6-9B7F-86AD9C4DED9F]]
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Machine][291FDE06-DF44-4156-A013-B763A8727B00]]
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
# 291FDE06-DF44-4156-A013-B763A8727B00 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Machine][2F39C8B9-CA25-4C94-8E77-AD348D5235A9]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
# 2F39C8B9-CA25-4C94-8E77-AD348D5235A9 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Machine][850816F3-B82E-4EE0-9895-6E99CB6A7593]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
All creativity is an extended form of a joke.
          — Alan Kay"
# 850816F3-B82E-4EE0-9895-6E99CB6A7593 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Machine][DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0]]
sudo spctl --master-disable
# DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0 ends here
# 6B36623E-8E41-45E6-9B7F-86AD9C4DED9F ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*User][F8B79F85-E593-4B4A-94E8-E7F5DE2D0A0B]]
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*User][2E9BB301-11E8-4A9A-979D-C7F04FAF6F78]]

# 2E9BB301-11E8-4A9A-979D-C7F04FAF6F78 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][6755B45A-4331-4CA4-89D5-7A5906C3966A]]
cd ~/Pictures/
curl -O http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2015/02/M101-ORG.jpg
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/Pictures/M101-ORG.jpg'";
# 6755B45A-4331-4CA4-89D5-7A5906C3966A ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][57F27EEA-630B-4CB4-9A04-27091C4AD4CB]]
osascript -e 'set volume output volume 50'
# 57F27EEA-630B-4CB4-9A04-27091C4AD4CB ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][02346DB0-0D1F-4A80-89ED-C8B723C05BB6]]
defaults write 'NSGlobalDomain' NSAutomaticSpellingCorrectionEnabled -bool false
# 02346DB0-0D1F-4A80-89ED-C8B723C05BB6 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][207B6C0E-E636-4FAB-A859-6E3CA370C40E]]
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint -bool true
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint2 -bool true
# 207B6C0E-E636-4FAB-A859-6E3CA370C40E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][FBAD5CA1-F984-46AE-940D-90B1FC6C8454]]
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode -bool true
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode2 -bool true
# FBAD5CA1-F984-46AE-940D-90B1FC6C8454 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][F6899984-2233-4027-BBEF-1005657C7B5E]]
defaults write 'com.apple.print.PrintingPrefs' 'Quit When Finished' -bool true
# F6899984-2233-4027-BBEF-1005657C7B5E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][8351B207-A376-4149-A876-4E3E8CE06732]]
defaults write 'com.apple.menuextra.battery' ShowPercent -bool true
# 8351B207-A376-4149-A876-4E3E8CE06732 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][3525C306-F373-4146-8579-60E38D765425]]
defaults write 'com.apple.menuextra.clock' DateFormat -string "EEE MMM d  HH:mm"
# 3525C306-F373-4146-8579-60E38D765425 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][B7665462-71BC-4929-86C9-4766C3BAA9DB]]
defaults write 'com.apple.TimeMachine' DoNotOfferNewDisksForBackup -bool true
# B7665462-71BC-4929-86C9-4766C3BAA9DB ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][EE3BD935-46A0-425C-9DAB-0CB341D5E501]]
defaults write 'com.apple.desktopservices' DSDontWriteNetworkStores -bool true
# EE3BD935-46A0-425C-9DAB-0CB341D5E501 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][526B969F-94AD-441B-8F5D-52141EDA0507]]
defaults write 'NSGlobalDomain' NSDocumentSaveNewDocumentsToCloud -bool false
# 526B969F-94AD-441B-8F5D-52141EDA0507 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][16416BAF-CFEE-43E2-9B6B-C2B85C73D627]]
defaults write 'NSGlobalDomain' NSWindowResizeTime -float 0.001
# 16416BAF-CFEE-43E2-9B6B-C2B85C73D627 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][8D12169D-8717-46D4-920E-D4C322C4458E]]
defaults write 'NSGlobalDomain' AppleAquaColorVariant -int 6
# 8D12169D-8717-46D4-920E-D4C322C4458E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][337E87AE-39CC-41F5-B115-11B994E125B5]]
defaults write 'NSGlobalDomain' AppleInterfaceStyle -string Dark
# 337E87AE-39CC-41F5-B115-11B994E125B5 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][F89AEE9E-D5D6-4EF9-9914-CE2C3AE53B9B]]
defaults write com.apple.LaunchServices LSQuarantine -bool false
# F89AEE9E-D5D6-4EF9-9914-CE2C3AE53B9B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][A2CDF5C4-9239-47AD-9978-09582362316C]]
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
# A2CDF5C4-9239-47AD-9978-09582362316C ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][4FDA48E0-AC9B-48B9-A09D-E54F72787F64]]
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
# 4FDA48E0-AC9B-48B9-A09D-E54F72787F64 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][E102244A-C691-4E62-BE68-3BF1EB8D340F]]
defaults write com.apple.CrashReporter DialogType -string "none"
# E102244A-C691-4E62-BE68-3BF1EB8D340F ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][FC22C88E-44B4-4C50-B00A-82DB0DCDB519]]
defaults write com.apple.helpviewer DevMode -bool true
# FC22C88E-44B4-4C50-B00A-82DB0DCDB519 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][F3347821-BEB6-4D91-8ADC-D968F825D491]]
sudo systemsetup -setrestartfreeze on
# F3347821-BEB6-4D91-8ADC-D968F825D491 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][B0166A42-EB93-444D-ACDA-A0E2AED02543]]
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# B0166A42-EB93-444D-ACDA-A0E2AED02543 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][493ABAF1-8385-4ADF-90C3-B61699A5603B]]
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
# 493ABAF1-8385-4ADF-90C3-B61699A5603B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][1450BB2D-B822-48D3-ADC8-46FFF00B730C]]
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# 1450BB2D-B822-48D3-ADC8-46FFF00B730C ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Globals,%20Logical%20or%20Literal][B829AB6A-309B-406F-A51F-2CF38C183210]]
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
# B829AB6A-309B-406F-A51F-2CF38C183210 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hardware][9078E7EB-65AE-4B8E-978A-E6687DB2C4EA]]
defaults write 'NSGlobalDomain' ApplePressAndHoldEnabled -bool false
# 9078E7EB-65AE-4B8E-978A-E6687DB2C4EA ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hardware][662F5288-F102-4FCA-B052-31933DFEFC0B]]
defaults write 'NSGlobalDomain' com.apple.keyboard.fnState -bool true
# 662F5288-F102-4FCA-B052-31933DFEFC0B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hardware][03E4D631-C6E3-4E4E-BCE9-BDB87D8549FD]]
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
# 03E4D631-C6E3-4E4E-BCE9-BDB87D8549FD ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][44629106-AB81-4099-AAAE-2A1692110652]]
defaults write com.apple.dock autohide -bool true && killall Dock
# 44629106-AB81-4099-AAAE-2A1692110652 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][3A5370F0-1F37-47A9-8AD2-5A54F7BEBAF6]]
defaults write com.apple.dock launchanim -bool false && killall Dock
# 3A5370F0-1F37-47A9-8AD2-5A54F7BEBAF6 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][2D1566D0-5912-4770-A53E-DAB815E886F1]]
defaults write com.apple.dock mouse-over-hilte-stack -bool true && killall Dock
# 2D1566D0-5912-4770-A53E-DAB815E886F1 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][95CAD941-7BDA-4D4E-BF2E-976D9D07DA37]]
defaults write com.apple.dock showhidden -bool true && killall Dock
# 95CAD941-7BDA-4D4E-BF2E-976D9D07DA37 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][6AB142A8-9150-4B3B-8709-237D468212E0]]
defaults write com.apple.dock minimize-to-application -bool true && killall Dock
# 6AB142A8-9150-4B3B-8709-237D468212E0 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][7CF0E408-7318-4921-B8BE-F834C8A63BC7]]
defaults write com.apple.dock orientation -string left && killall Dock
# 7CF0E408-7318-4921-B8BE-F834C8A63BC7 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][2250EED5-046B-4F55-B64E-04787C078F5B]]
defaults write com.apple.Dock autohide-time-modifier -float 0 && killall Dock
# 2250EED5-046B-4F55-B64E-04787C078F5B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][CA55EDF7-AB57-450A-A80A-D9BCE9219951]]
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
# CA55EDF7-AB57-450A-A80A-D9BCE9219951 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][C92642D8-BA50-46E4-B9D0-A0A7DEEAF0B9]]
defaults write com.apple.Dock tilesize -int 50 && killall Dock
# C92642D8-BA50-46E4-B9D0-A0A7DEEAF0B9 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][D643A6DB-461A-425D-9516-C841B0A4C9E0]]
defaults write com.apple.Dock show-process-indicators -bool true && killall Dock
# D643A6DB-461A-425D-9516-C841B0A4C9E0 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][88023507-0070-4713-9F0D-36344D3FDED0]]
defaults write 'com.apple.dock' persistent-apps -array '' && killall Dock
# 88023507-0070-4713-9F0D-36344D3FDED0 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Dock][2AEA50FA-CA94-438A-B82E-3B465CAA2E12]]
defaults write 'com.apple.dock' expose-animation-duration -float 0.1 && killall Dock
# 2AEA50FA-CA94-438A-B82E-3B465CAA2E12 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][A6759B25-1B21-40C2-A75C-B2DF18A3CAC1]]
defaults write 'com.apple.finder' QLEnableTextSelection -bool true && killall Finder
# A6759B25-1B21-40C2-A75C-B2DF18A3CAC1 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][DCDE10BB-3848-4C70-9B7A-8F5641950CCB]]
defaults write 'com.apple.frameworks.diskimages' auto-open-ro-root -bool true && killall Finder
defaults write 'com.apple.frameworks.diskimages' auto-open-rw-root -bool true && killall Finder
defaults write 'com.apple.finder' OpenWindowForNewRemovableDisk -bool true && killall Finder
# DCDE10BB-3848-4C70-9B7A-8F5641950CCB ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][4647036E-8DB1-4119-B6D1-2028941B9A91]]
defaults write 'com.apple.finder' WarnOnEmptyTrash -bool false && killall Finder
# 4647036E-8DB1-4119-B6D1-2028941B9A91 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][00CEF20F-FDD2-464F-B8E4-968682A62B26]]
defaults write 'com.apple.finder' FXEnableExtensionChangeWarning -bool false && killall Finder
# 00CEF20F-FDD2-464F-B8E4-968682A62B26 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][1C946EE8-4D17-4D03-BF58-F2C5C1280739]]
defaults write 'com.apple.finder' _FXShowPosixPathInTitle -bool true && killall Finder
# 1C946EE8-4D17-4D03-BF58-F2C5C1280739 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][85E615B8-24C6-4819-B437-BB1ED2384E82]]
defaults write 'com.apple.finder' NewWindowTarget -string PfHm && killall Finder
# 85E615B8-24C6-4819-B437-BB1ED2384E82 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][FB3EFB97-6BEC-4BE4-B8D5-8EACD289CE66]]
defaults write 'com.apple.finder' FXDefaultSearchScope -string SCcf && killall Finder
# FB3EFB97-6BEC-4BE4-B8D5-8EACD289CE66 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][5F5E19CE-ECA4-4633-8C67-299C2237C7E2]]
defaults write 'com.apple.finder' AppleShowAllFiles -bool true && killall Finder
# 5F5E19CE-ECA4-4633-8C67-299C2237C7E2 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][7C10B346-5B87-456F-B424-1ED79C2ADE2B]]
defaults write 'com.apple.finder' AppleShowAllExtensions -bool true && killall Finder
# 7C10B346-5B87-456F-B424-1ED79C2ADE2B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][69400DBC-BA03-4CB4-B724-BA22C070CB2B]]
defaults write 'com.apple.finder' ShowPathbar -bool true && killall Finder
# 69400DBC-BA03-4CB4-B724-BA22C070CB2B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][6D032485-D6D0-47A4-9B14-06FE6FC0CB80]]
defaults write 'com.apple.finder' ShowStatusBar -bool true && killall Finder
# 6D032485-D6D0-47A4-9B14-06FE6FC0CB80 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][38B74BA0-FFCD-4E46-A1F0-BA839DF631DB]]
defaults write 'NSGlobalDomain' NSTableViewDefaultSizeMode -bool true && killall Finder
# 38B74BA0-FFCD-4E46-A1F0-BA839DF631DB ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][17D25945-67E7-4F54-9DAA-C23FD89A2758]]
defaults write 'com.apple.Finder' FXPreferredViewStyle Nlsv && killall Finder
# 17D25945-67E7-4F54-9DAA-C23FD89A2758 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][49C95048-C7D9-4E7C-BAAE-5D78181FF112]]
defaults write com.apple.finder FXPreferredGroupBy -string "None"
# 49C95048-C7D9-4E7C-BAAE-5D78181FF112 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][C3E4AFE6-5FB1-4432-B53C-933D83B3BA48]]
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:columns:4:ascending true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:columns:kind:ascending true" ~/Library/Preferences/com.apple.finder.plist
# C3E4AFE6-5FB1-4432-B53C-933D83B3BA48 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][AF8A02A4-CFFC-4740-A6E9-3341F912906A]]
defaults write com.apple.finder DisableAllAnimations -bool true
# AF8A02A4-CFFC-4740-A6E9-3341F912906A ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Finder][5F9ED39D-B319-46AE-B64F-F8CCE66C14CB]]
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
# 5F9ED39D-B319-46AE-B64F-F8CCE66C14CB ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Screen][A73210E6-B619-4523-BD19-A5F8951E8495]]
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# A73210E6-B619-4523-BD19-A5F8951E8495 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Screen][E99413DF-0D11-4824-873D-3514F9333D6E]]
defaults write com.apple.screencapture disable-shadow -bool true
# E99413DF-0D11-4824-873D-3514F9333D6E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Screen][EE876749-BDB9-466F-A0FC-567EBBF9C5C2]]
defaults write 'com.apple.screencapture' type -string png && killall SystemUIServer
# EE876749-BDB9-466F-A0FC-567EBBF9C5C2 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Screen][66472988-E3AE-44D0-9423-17E9FEA0F5F1]]
defaults write 'NSGlobalDomain' AppleFontSmoothing -int 2
# 66472988-E3AE-44D0-9423-17E9FEA0F5F1 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Screen][598BE517-CC5C-4D99-AD0B-41D2D906E376]]
mkdir -p ~/Screen\ Shots
defaults write com.apple.screencapture location ~/Screen\ Shots
# 598BE517-CC5C-4D99-AD0B-41D2D906E376 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hotcorners][446CE2EF-BCBE-4D83-9ACC-2A1E2F91C64B]]
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
# 446CE2EF-BCBE-4D83-9ACC-2A1E2F91C64B ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hotcorners][FF4E8A69-A137-4E50-A4E4-59DA58A082B5]]
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
# FF4E8A69-A137-4E50-A4E4-59DA58A082B5 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hotcorners][6A561511-8354-408E-8805-201BAAE80A04]]
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0
# 6A561511-8354-408E-8805-201BAAE80A04 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Hotcorners][7C9DE1C5-BBF8-4D40-8FAC-E78D5B85231E]]
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0
# 7C9DE1C5-BBF8-4D40-8FAC-E78D5B85231E ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Spaces][77191228-16CC-4B95-A030-A5C2DF90CD50]]
# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Set edge-dragging delay to 0.7
defaults write com.apple.dock workspaces-edge-delay -float 1.0
# 77191228-16CC-4B95-A030-A5C2DF90CD50 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Mouse][9B804905-E9D0-43BE-8106-DC53009C58C4]]
defaults write 'NSGlobalDomain' com.apple.mouse.scaling -float 2
# 9B804905-E9D0-43BE-8106-DC53009C58C4 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Terminal][9AF4BB62-76D4-4943-88FC-704A7BA492AC]]
defaults write com.apple.terminal StringEncodings -array 4
# 9AF4BB62-76D4-4943-88FC-704A7BA492AC ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Activity%20Monitor][BC6F1328-5EA2-4B1D-AC72-654D829BDB31]]
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
# BC6F1328-5EA2-4B1D-AC72-654D829BDB31 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Activity%20Monitor][81FD865B-E76D-4873-8C12-42C6194AB300]]
defaults write com.apple.ActivityMonitor IconType -int 5
# 81FD865B-E76D-4873-8C12-42C6194AB300 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Activity%20Monitor][F02FC4BB-0B04-4B8A-965C-71B181139FC8]]
defaults write com.apple.ActivityMonitor ShowCategory -int 0
# F02FC4BB-0B04-4B8A-965C-71B181139FC8 ends here
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Activity%20Monitor][C2C6F54C-D4B7-4CBE-AF80-E45CE40C9A54]]
defaults write com.apple.ActivityMonitor SortDirection -int 0
# C2C6F54C-D4B7-4CBE-AF80-E45CE40C9A54 ends here
# F8B79F85-E593-4B4A-94E8-E7F5DE2D0A0B ends here
# 16925E43-FD2E-4CB7-957F-DCE747A4FC8C ends here
