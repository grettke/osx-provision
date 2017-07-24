# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_7281D794-15F4-4C0B-BCEB-E6BD05E5DF0B][org_gcr_2017-05-12_mara_7281D794-15F4-4C0B-BCEB-E6BD05E5DF0B]]
brew cask install deltawalker
# org_gcr_2017-05-12_mara_7281D794-15F4-4C0B-BCEB-E6BD05E5DF0B ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_C91E9080-A185-4BA7-ABB8-4EBA21E3FA31][org_gcr_2017-05-12_mara_C91E9080-A185-4BA7-ABB8-4EBA21E3FA31]]
brew install python
pip install virtualenv
pip install --upgrade pip setuptools virtualenv
# org_gcr_2017-05-12_mara_C91E9080-A185-4BA7-ABB8-4EBA21E3FA31 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_88321593-1A4B-46A2-AC58-A42C6B24F1C2][org_gcr_2017-05-12_mara_88321593-1A4B-46A2-AC58-A42C6B24F1C2]]
cd ~/
rm -rf ~/proselint
mkdir -p ~/proselint
cd ~/proselint
vens
veon
pip install proselint
veof
cd ~/
# org_gcr_2017-05-12_mara_88321593-1A4B-46A2-AC58-A42C6B24F1C2 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_D02A1D1B-25D6-4D30-9D81-6E1F3E59AC20][org_gcr_2017-05-12_mara_D02A1D1B-25D6-4D30-9D81-6E1F3E59AC20]]
curl -L https://install.perlbrew.pl | bash
~/perl5/perlbrew/bin/perlbrew install perl-5.24.0
perl -v
~/perl5/perlbrew/bin/perlbrew switch perl-5.24.0
perl -v
perlbrew install-cpanm
cpanm install Text::Unidecode
# org_gcr_2017-05-12_mara_D02A1D1B-25D6-4D30-9D81-6E1F3E59AC20 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_CB12AE91-2573-4886-85B1-56F2EA62062E][org_gcr_2017-05-12_mara_CB12AE91-2573-4886-85B1-56F2EA62062E]]
brew install ruby
# org_gcr_2017-05-12_mara_CB12AE91-2573-4886-85B1-56F2EA62062E ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-07-13_mara_1E3E6EF0-544C-4903-A64D-322223B3309C][org_gcr_2017-07-13_mara_1E3E6EF0-544C-4903-A64D-322223B3309C]]
brew install chezscheme
# org_gcr_2017-07-13_mara_1E3E6EF0-544C-4903-A64D-322223B3309C ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_45F5FEE0-3692-4AB2-B942-D6895BDF956A][org_gcr_2017-05-12_mara_45F5FEE0-3692-4AB2-B942-D6895BDF956A]]
brew cask install racket
# org_gcr_2017-05-12_mara_45F5FEE0-3692-4AB2-B942-D6895BDF956A ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_9B75A8BF-1F84-41C7-BA05-E2094F541B69][org_gcr_2017-05-12_mara_9B75A8BF-1F84-41C7-BA05-E2094F541B69]]
brew install gforth
# org_gcr_2017-05-12_mara_9B75A8BF-1F84-41C7-BA05-E2094F541B69 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_F2DCC726-8AFD-490F-92D6-61EAD46119F9][org_gcr_2017-05-12_mara_F2DCC726-8AFD-490F-92D6-61EAD46119F9]]
brew install node
# org_gcr_2017-05-12_mara_F2DCC726-8AFD-490F-92D6-61EAD46119F9 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_FF9AFF4C-BF99-4553-BECC-1C176C8FE4A3][org_gcr_2017-05-12_mara_FF9AFF4C-BF99-4553-BECC-1C176C8FE4A3]]
npm install -g jshint
rm ~/.jshintrc
ln -s ~/src/help/.jshintrc ~/.jshintrc
# org_gcr_2017-05-12_mara_FF9AFF4C-BF99-4553-BECC-1C176C8FE4A3 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_FACDF6BA-3CAA-4265-B1B3-563FF5D60151][org_gcr_2017-05-12_mara_FACDF6BA-3CAA-4265-B1B3-563FF5D60151]]
brew install gnu-apl
# org_gcr_2017-05-12_mara_FACDF6BA-3CAA-4265-B1B3-563FF5D60151 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_3E37011A-C975-4EA2-82D7-15CEAB02C4F4][org_gcr_2017-05-12_mara_3E37011A-C975-4EA2-82D7-15CEAB02C4F4]]
brew install git
brew install git-flow-avh
# org_gcr_2017-05-12_mara_3E37011A-C975-4EA2-82D7-15CEAB02C4F4 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_B4963484-93A3-4298-9852-8724504C53A5][org_gcr_2017-05-12_mara_B4963484-93A3-4298-9852-8724504C53A5]]
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-natural-title-bar --without-spacemacs-icon
brew tap railwaycat/emacsmacport
brew install emacs-mac \
     --with-dbus \
     --with-gnutls \
     --with-imagemagick \
     --with-modules \
     --with-official-icon \
     --with-xml2
rm $(brew --prefix)/bin/emacs
ln -s $(brew --prefix emacs-mac)/bin/emacs $(brew --prefix)/bin/emacs
rm $(brew --prefix)/bin/emacsclient
ln -s $(brew --prefix emacs-mac)/bin/emacsclient $(brew --prefix)/bin/emacsclient
# org_gcr_2017-05-12_mara_B4963484-93A3-4298-9852-8724504C53A5 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_97EED15A-390A-49AA-B645-A4BA156A79D3][org_gcr_2017-05-12_mara_97EED15A-390A-49AA-B645-A4BA156A79D3]]
rm -rf ~/src/magit
cd ~/src
git clone https://github.com/magit/magit.git
cd magit
make
# org_gcr_2017-05-12_mara_97EED15A-390A-49AA-B645-A4BA156A79D3 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_CFCB8712-4E27-484C-A459-402C008961A1][org_gcr_2017-05-12_mara_CFCB8712-4E27-484C-A459-402C008961A1]]
brew cask install sourcetree
# org_gcr_2017-05-12_mara_CFCB8712-4E27-484C-A459-402C008961A1 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_50F9FD2F-2906-41A7-A3F0-62E57D784594][org_gcr_2017-05-12_mara_50F9FD2F-2906-41A7-A3F0-62E57D784594]]
brew install smlnj
# org_gcr_2017-05-12_mara_50F9FD2F-2906-41A7-A3F0-62E57D784594 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_1CA17E50-8BCC-43A2-99C3-A3052FF3B262][org_gcr_2017-05-12_mara_1CA17E50-8BCC-43A2-99C3-A3052FF3B262]]
brew install ocaml
brew install opam
# org_gcr_2017-05-12_mara_1CA17E50-8BCC-43A2-99C3-A3052FF3B262 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_421506C6-DA2D-49F8-9615-485DD7E2CAEF][org_gcr_2017-05-12_mara_421506C6-DA2D-49F8-9615-485DD7E2CAEF]]
brew cask install haskell-platform
# org_gcr_2017-05-12_mara_421506C6-DA2D-49F8-9615-485DD7E2CAEF ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_FB0EF355-80E7-4CC1-BCE5-4DB157B15F6F][org_gcr_2017-05-12_mara_FB0EF355-80E7-4CC1-BCE5-4DB157B15F6F]]
brew cask install squeak
# org_gcr_2017-05-12_mara_FB0EF355-80E7-4CC1-BCE5-4DB157B15F6F ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_C9E429BB-EA4B-4164-953F-B6228F3D660A][org_gcr_2017-05-12_mara_C9E429BB-EA4B-4164-953F-B6228F3D660A]]
brew install cvs
# org_gcr_2017-05-12_mara_C9E429BB-EA4B-4164-953F-B6228F3D660A ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_2C9CC44F-3EC7-4744-8AA7-2EE4EFCFCA4D][org_gcr_2017-05-12_mara_2C9CC44F-3EC7-4744-8AA7-2EE4EFCFCA4D]]
brew install bzr
# org_gcr_2017-05-12_mara_2C9CC44F-3EC7-4744-8AA7-2EE4EFCFCA4D ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_3BA20AD2-3D13-4738-84BC-D83FA092E32E][org_gcr_2017-05-12_mara_3BA20AD2-3D13-4738-84BC-D83FA092E32E]]
brew install hg
# org_gcr_2017-05-12_mara_3BA20AD2-3D13-4738-84BC-D83FA092E32E ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_BC282D24-78F6-4CA4-B9B0-DD59A9BDDC2D][org_gcr_2017-05-12_mara_BC282D24-78F6-4CA4-B9B0-DD59A9BDDC2D]]
brew cask install intellij-idea
# org_gcr_2017-05-12_mara_BC282D24-78F6-4CA4-B9B0-DD59A9BDDC2D ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_40BDECF3-BBA5-47C8-83D0-A30BE58C2896][org_gcr_2017-05-12_mara_40BDECF3-BBA5-47C8-83D0-A30BE58C2896]]
brew cask install pycharm
# org_gcr_2017-05-12_mara_40BDECF3-BBA5-47C8-83D0-A30BE58C2896 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_DF8C77C0-B051-4C54-943E-18FDA192039D][org_gcr_2017-05-12_mara_DF8C77C0-B051-4C54-943E-18FDA192039D]]
brew cask install webstorm
# org_gcr_2017-05-12_mara_DF8C77C0-B051-4C54-943E-18FDA192039D ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_39185E42-F547-489B-85F1-D754C1794178][org_gcr_2017-05-12_mara_39185E42-F547-489B-85F1-D754C1794178]]
brew cask install rstudio
# org_gcr_2017-05-12_mara_39185E42-F547-489B-85F1-D754C1794178 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_4FB4D5A0-C3AF-4BBD-84B5-C9579DA2AFE6][org_gcr_2017-05-12_mara_4FB4D5A0-C3AF-4BBD-84B5-C9579DA2AFE6]]
brew cask install dash
# org_gcr_2017-05-12_mara_4FB4D5A0-C3AF-4BBD-84B5-C9579DA2AFE6 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_D19983EF-ED98-425B-8485-EC2E5E682DA1][org_gcr_2017-05-12_mara_D19983EF-ED98-425B-8485-EC2E5E682DA1]]
brew tap homebrew/science
brew install glpk
# org_gcr_2017-05-12_mara_D19983EF-ED98-425B-8485-EC2E5E682DA1 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_550D985C-BAE4-409E-9289-A712EA44B335][org_gcr_2017-05-12_mara_550D985C-BAE4-409E-9289-A712EA44B335]]
brew install the_silver_searcher
# org_gcr_2017-05-12_mara_550D985C-BAE4-409E-9289-A712EA44B335 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_1E6B3FB1-97E1-456D-A0CE-7D686FDF5E31][org_gcr_2017-05-12_mara_1E6B3FB1-97E1-456D-A0CE-7D686FDF5E31]]
brew install shellcheck
# org_gcr_2017-05-12_mara_1E6B3FB1-97E1-456D-A0CE-7D686FDF5E31 ends here
