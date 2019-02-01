# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_5876A250-F4E4-4B63-996B-95123802B918][org_gcr_2017-05-12_mara_5876A250-F4E4-4B63-996B-95123802B918]]
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# org_gcr_2017-05-12_mara_5876A250-F4E4-4B63-996B-95123802B918 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_A1A27177-989C-4DB3-8C8F-DF9CFA241DD0][org_gcr_2017-05-12_mara_A1A27177-989C-4DB3-8C8F-DF9CFA241DD0]]
brew tap caskroom/cask
# org_gcr_2017-05-12_mara_A1A27177-989C-4DB3-8C8F-DF9CFA241DD0 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-06-12T21-48-52-05-00_mara_82D7A5A9-0B09-473C-82B8-7DB744CD2FA8][org_gcr_2018-06-12T21-48-52-05-00_mara_82D7A5A9-0B09-473C-82B8-7DB744CD2FA8]]
brew tap caskroom/versions
brew update
# org_gcr_2018-06-12T21-48-52-05-00_mara_82D7A5A9-0B09-473C-82B8-7DB744CD2FA8 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_3E37011A-C975-4EA2-82D7-15CEAB02C4F4][org_gcr_2017-05-12_mara_3E37011A-C975-4EA2-82D7-15CEAB02C4F4]]
brew install git
# org_gcr_2017-05-12_mara_3E37011A-C975-4EA2-82D7-15CEAB02C4F4 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_9F9C42F7-6E0F-45C9-8719-B6E8A0CFEC7C][org_gcr_2017-05-12_mara_9F9C42F7-6E0F-45C9-8719-B6E8A0CFEC7C]]
rm -rf ~/git/github-anonymous
mkdir -p ~/git/github-anonymous
cd ~/git/github-anonymous
# org_gcr_2017-05-12_mara_9F9C42F7-6E0F-45C9-8719-B6E8A0CFEC7C ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-11-04T02-09-58-06-00_cosmicality_8E2C0260-F2EA-4656-B9F6-E0F374158ABE][org_gcr_2018-11-04T02-09-58-06-00_cosmicality_8E2C0260-F2EA-4656-B9F6-E0F374158ABE]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
  brew cask install karabiner-elements
else
  echo "karabiner-elements: Only install on hosts"
fi
# org_gcr_2018-11-04T02-09-58-06-00_cosmicality_8E2C0260-F2EA-4656-B9F6-E0F374158ABE ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-11-04T02-09-58-06-00_cosmicality_753A2DB7-C321-430D-8945-C3407BAC23D6][org_gcr_2018-11-04T02-09-58-06-00_cosmicality_753A2DB7-C321-430D-8945-C3407BAC23D6]]
rm ~/.config/karabiner || true
cd ~/src
rm -rf ./karabiner
git clone gitlab-`whoami`:grettke/karabiner-elements.git karabiner
ln -s ~/src/karabiner ~/.config/karabiner
# org_gcr_2018-11-04T02-09-58-06-00_cosmicality_753A2DB7-C321-430D-8945-C3407BAC23D6 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_8E036592-BF53-4D12-ACA4-F9CED385432C][org_gcr_2017-05-12_mara_8E036592-BF53-4D12-ACA4-F9CED385432C]]
git clone https://github.com/grettke/bash.git
cd bash
./deploy
cd
# org_gcr_2017-05-12_mara_8E036592-BF53-4D12-ACA4-F9CED385432C ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_F8CE935B-10B1-4261-857C-42C5281BDF9E][org_gcr_2017-05-12_mara_F8CE935B-10B1-4261-857C-42C5281BDF9E]]
bash --version
brew install bash
if grep "/usr/local/bin/bash" /etc/shells > /dev/null; then
  echo "brew bash already configured in shells; doing nothing"
else
  sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
  chsh -s /usr/local/bin/bash
fi
brew install bashdb
bashhome=$(brew --prefix bash)
bdbhome=$(brew --prefix bashdb)
rm -rf $bashhome/share/bashdb
ln -s $bdbhome/share/bashdb $bashhome/share/bashdb
unset bashhome
unset bdbhome
brew install bash-completion@2
bash --version
bashdb --version
# org_gcr_2017-05-12_mara_F8CE935B-10B1-4261-857C-42C5281BDF9E ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_C4A8F02D-CF13-414E-B515-A9E6ADE8E5FC][org_gcr_2017-05-12_mara_C4A8F02D-CF13-414E-B515-A9E6ADE8E5FC]]
brew tap caskroom/fonts
# org_gcr_2017-05-12_mara_C4A8F02D-CF13-414E-B515-A9E6ADE8E5FC ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_57293DFD-7465-4AE6-9FCB-AF240AFEA14C][org_gcr_2017-05-12_mara_57293DFD-7465-4AE6-9FCB-AF240AFEA14C]]
brew cask install font-dejavu-sans
brew cask install font-fira-mono
brew cask install font-fira-sans
brew cask install font-fontawesome
brew cask install font-awesome-terminal-fonts
brew cask install font-han-nom-a
brew cask install font-icomoon
brew cask install font-mfizz
brew cask install font-montserrat
brew cask install font-quivira
brew cask install font-symbola
brew cask install font-unifrakturcook
brew cask install font-unifrakturmaguntia
# org_gcr_2017-05-12_mara_57293DFD-7465-4AE6-9FCB-AF240AFEA14C ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-03-21T11-56-35-05-00_mara_9769893B-7CC8-4097-A9DF-19BB6532D1DA][org_gcr_2018-03-21T11-56-35-05-00_mara_9769893B-7CC8-4097-A9DF-19BB6532D1DA]]
brew install fondu
# org_gcr_2018-03-21T11-56-35-05-00_mara_9769893B-7CC8-4097-A9DF-19BB6532D1DA ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_55BC0C54-06BC-4D75-84AA-587B1C282E80][org_gcr_2017-05-12_mara_55BC0C54-06BC-4D75-84AA-587B1C282E80]]
rm -rf ~/git/github-anonymous/osx-terminal.app-colors-solarized
cd ~/git/github-anonymous
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
# org_gcr_2017-05-12_mara_55BC0C54-06BC-4D75-84AA-587B1C282E80 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_DBDFD463-19F7-4708-B2DE-33B6F66EEB04][org_gcr_2017-05-12_mara_DBDFD463-19F7-4708-B2DE-33B6F66EEB04]]
brew install fortune
# org_gcr_2017-05-12_mara_DBDFD463-19F7-4708-B2DE-33B6F66EEB04 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-01-25_mara_9783633F-1314-4A17-B057-ECBE72BA782A][org_gcr_2018-01-25_mara_9783633F-1314-4A17-B057-ECBE72BA782A]]
brew install coreutils
brew install gnu-sed
# org_gcr_2018-01-25_mara_9783633F-1314-4A17-B057-ECBE72BA782A ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-05-08T04-16-55-05-00_mara_5693091A-3304-4506-9B95-6615BEAB04E0][org_gcr_2018-05-08T04-16-55-05-00_mara_5693091A-3304-4506-9B95-6615BEAB04E0]]
brew install joe
# org_gcr_2018-05-08T04-16-55-05-00_mara_5693091A-3304-4506-9B95-6615BEAB04E0 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2019-01-14T09-58-00-06-00_cosmicality_BC3E5845-FE3A-4BA1-B00F-45084C5D7BAA][org_gcr_2019-01-14T09-58-00-06-00_cosmicality_BC3E5845-FE3A-4BA1-B00F-45084C5D7BAA]]
brew install pwgen
# org_gcr_2019-01-14T09-58-00-06-00_cosmicality_BC3E5845-FE3A-4BA1-B00F-45084C5D7BAA ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_29BF003F-8B3B-499D-BD71-DEB8B37616FB][org_gcr_2017-05-12_mara_29BF003F-8B3B-499D-BD71-DEB8B37616FB]]
echo "Script complete"
# org_gcr_2017-05-12_mara_29BF003F-8B3B-499D-BD71-DEB8B37616FB ends here
