# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::82653612-8AFE-4FF7-86D8-921DDA662EB9][82653612-8AFE-4FF7-86D8-921DDA662EB9]]
brew cask install deltawalker
# 82653612-8AFE-4FF7-86D8-921DDA662EB9 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::4128F3DB-7E7C-4885-B54E-AA78423855C5][4128F3DB-7E7C-4885-B54E-AA78423855C5]]
brew install python
brew linkapps python
pip install virtualenv
pip install --upgrade pip setuptools virtualenv
# 4128F3DB-7E7C-4885-B54E-AA78423855C5 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:696D3C27-F72A-4D64-BB70-A14D42CCCD5A][orgmode:gcr:vela:696D3C27-F72A-4D64-BB70-A14D42CCCD5A]]
cd ~/
rm -rf ~/util/proselint
mkdir -p ~/util/proselint
cd ~/util/proselint
vens
veon
pip install proselint
veof
cd ~/util/
# orgmode:gcr:vela:696D3C27-F72A-4D64-BB70-A14D42CCCD5A ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::2C2EE0BA-1EED-401F-83BB-31DA8485A4AC][2C2EE0BA-1EED-401F-83BB-31DA8485A4AC]]
curl -L https://install.perlbrew.pl | bash
~/perl5/perlbrew/bin/perlbrew install perl-5.24.0
perl -v
~/perl5/perlbrew/bin/perlbrew switch perl-5.24.0
perl -v
perlbrew install-cpanm
cpanm install Text::Unidecode
# 2C2EE0BA-1EED-401F-83BB-31DA8485A4AC ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::EF706E2F-46B7-4F69-ADDB-9D62FDFCD23D][EF706E2F-46B7-4F69-ADDB-9D62FDFCD23D]]
brew install ruby
# EF706E2F-46B7-4F69-ADDB-9D62FDFCD23D ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::519EF47C-E443-4445-B762-C8FC781566F0][519EF47C-E443-4445-B762-C8FC781566F0]]
brew cask install racket
# 519EF47C-E443-4445-B762-C8FC781566F0 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::1CE4F12C-241C-4B77-8262-D08472B78B4B][1CE4F12C-241C-4B77-8262-D08472B78B4B]]
brew install gforth
# 1CE4F12C-241C-4B77-8262-D08472B78B4B ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:BA81BB77-0E23-4B3F-B4D7-0112502A464C][orgmode:gcr:vela:BA81BB77-0E23-4B3F-B4D7-0112502A464C]]
brew install node
# orgmode:gcr:vela:BA81BB77-0E23-4B3F-B4D7-0112502A464C ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:4EFB1142-C26F-4A2D-8A75-8A970646442D][orgmode:gcr:vela:4EFB1142-C26F-4A2D-8A75-8A970646442D]]
npm install -g jshint
rm ~/.jshintrc
ln -s ~/src/help/.jshintrc ~/.jshintrc
# orgmode:gcr:vela:4EFB1142-C26F-4A2D-8A75-8A970646442D ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::89EB0121-7F14-4AFD-BB61-E46F675FE4A3][89EB0121-7F14-4AFD-BB61-E46F675FE4A3]]
brew install gnu-apl
# 89EB0121-7F14-4AFD-BB61-E46F675FE4A3 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::F5E5B964-50FA-49EF-BABF-EFE558057EC2][F5E5B964-50FA-49EF-BABF-EFE558057EC2]]
brew install git
brew install git-flow-avh
# F5E5B964-50FA-49EF-BABF-EFE558057EC2 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::CCF91EC0-F689-4279-972C-9F1D32C4C64B][CCF91EC0-F689-4279-972C-9F1D32C4C64B]]
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-natural-title-bar --without-spacemacs-icon
brew linkapps
# CCF91EC0-F689-4279-972C-9F1D32C4C64B ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:2017-04-25:mara:2F10442E-9672-48FE-90BF-46B52E197FF1][orgmode:gcr:2017-04-25:mara:2F10442E-9672-48FE-90BF-46B52E197FF1]]
rm -rf ~/src/magit
cd ~/src
git clone https://github.com/magit/magit.git
cd magit
make
# orgmode:gcr:2017-04-25:mara:2F10442E-9672-48FE-90BF-46B52E197FF1 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::7143E58E-A1B9-4A5A-B189-6E88AB0612D7][7143E58E-A1B9-4A5A-B189-6E88AB0612D7]]
brew cask install sourcetree
# 7143E58E-A1B9-4A5A-B189-6E88AB0612D7 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::CC15039B-B03A-4B3B-AFF4-AF483DDFE3A6][CC15039B-B03A-4B3B-AFF4-AF483DDFE3A6]]
brew install smlnj
# CC15039B-B03A-4B3B-AFF4-AF483DDFE3A6 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:F8C7DC4C-3DB3-4547-9A94-AF03D2F15366][orgmode:gcr:vela:F8C7DC4C-3DB3-4547-9A94-AF03D2F15366]]
brew install ocaml
brew install opam
# orgmode:gcr:vela:F8C7DC4C-3DB3-4547-9A94-AF03D2F15366 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:1F488BEB-BCE5-4A80-8FC3-9E8F28E181D4][orgmode:gcr:vela:1F488BEB-BCE5-4A80-8FC3-9E8F28E181D4]]
brew cask install haskell-platform
# orgmode:gcr:vela:1F488BEB-BCE5-4A80-8FC3-9E8F28E181D4 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:243473A9-D8D5-4F05-BC70-99E7BFAA9C78][orgmode:gcr:vela:243473A9-D8D5-4F05-BC70-99E7BFAA9C78]]
brew cask install squeak
# orgmode:gcr:vela:243473A9-D8D5-4F05-BC70-99E7BFAA9C78 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::50A94F7F-487B-485E-BEAE-6184D93C2933][50A94F7F-487B-485E-BEAE-6184D93C2933]]
brew install cvs
# 50A94F7F-487B-485E-BEAE-6184D93C2933 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::0D6175B9-3005-4AB5-AA71-F34C875D2FE1][0D6175B9-3005-4AB5-AA71-F34C875D2FE1]]
brew install bzr
# 0D6175B9-3005-4AB5-AA71-F34C875D2FE1 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::6C03B646-2683-4BB5-88F7-D8EB337B3596][6C03B646-2683-4BB5-88F7-D8EB337B3596]]
brew install hg
# 6C03B646-2683-4BB5-88F7-D8EB337B3596 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::0E3B9A2C-7E91-4D21-A9F0-A94C483B7992][0E3B9A2C-7E91-4D21-A9F0-A94C483B7992]]
brew cask install intellij-idea
# 0E3B9A2C-7E91-4D21-A9F0-A94C483B7992 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::610E12B1-3C58-4326-BE81-18EF1F40D544][610E12B1-3C58-4326-BE81-18EF1F40D544]]
brew cask install pycharm
# 610E12B1-3C58-4326-BE81-18EF1F40D544 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::479B7BC3-9F35-4422-82C9-DE3722E4A4B6][479B7BC3-9F35-4422-82C9-DE3722E4A4B6]]
brew cask install webstorm
# 479B7BC3-9F35-4422-82C9-DE3722E4A4B6 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::8D154800-90B1-4D63-9B75-D6C3F61FED9E][8D154800-90B1-4D63-9B75-D6C3F61FED9E]]
brew cask install rstudio
# 8D154800-90B1-4D63-9B75-D6C3F61FED9E ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::23B49731-0AA0-4FD9-AA2F-EEBBCF21C3F9][23B49731-0AA0-4FD9-AA2F-EEBBCF21C3F9]]
brew cask install dash
# 23B49731-0AA0-4FD9-AA2F-EEBBCF21C3F9 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::5E540A84-0B1E-4D24-9576-54B6993493BD][5E540A84-0B1E-4D24-9576-54B6993493BD]]
brew tap homebrew/science
brew install glpk
# 5E540A84-0B1E-4D24-9576-54B6993493BD ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::4B420426-4B25-4E40-AB5C-F7EDDDB4C0AA][4B420426-4B25-4E40-AB5C-F7EDDDB4C0AA]]
brew install the_silver_searcher
# 4B420426-4B25-4E40-AB5C-F7EDDDB4C0AA ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::B4C9F9F6-E628-4771-82E5-083212B30942][B4C9F9F6-E628-4771-82E5-083212B30942]]
brew install shellcheck
# B4C9F9F6-E628-4771-82E5-083212B30942 ends here
