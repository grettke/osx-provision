# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_7281D794-15F4-4C0B-BCEB-E6BD05E5DF0B][org_gcr_2017-05-12_mara_7281D794-15F4-4C0B-BCEB-E6BD05E5DF0B]]
brew cask install deltawalker
# org_gcr_2017-05-12_mara_7281D794-15F4-4C0B-BCEB-E6BD05E5DF0B ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_C91E9080-A185-4BA7-ABB8-4EBA21E3FA31][org_gcr_2017-05-12_mara_C91E9080-A185-4BA7-ABB8-4EBA21E3FA31]]
brew install python@2
globalpip install virtualenv
globalpip install --upgrade pip setuptools virtualenv
# org_gcr_2017-05-12_mara_C91E9080-A185-4BA7-ABB8-4EBA21E3FA31 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_88321593-1A4B-46A2-AC58-A42C6B24F1C2][org_gcr_2017-05-12_mara_88321593-1A4B-46A2-AC58-A42C6B24F1C2]]
cd ~/
rm -rf ~/proselint
mkdir -p ~/proselint
cd ~/proselint
vens
veon
pip2.7 install proselint
veof
cd ~/
# org_gcr_2017-05-12_mara_88321593-1A4B-46A2-AC58-A42C6B24F1C2 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-01-17_mara_A27CD30B-8EE7-4F98-919D-68E170038150][org_gcr_2018-01-17_mara_A27CD30B-8EE7-4F98-919D-68E170038150]]
cd ~/
rm -rf ~/yamllint
mkdir -p ~/yamllint
cd ~/yamllint
vens
veon
pip2.7 install yamllint
veof
cd ~/
# org_gcr_2018-01-17_mara_A27CD30B-8EE7-4F98-919D-68E170038150 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_CB12AE91-2573-4886-85B1-56F2EA62062E][org_gcr_2017-05-12_mara_CB12AE91-2573-4886-85B1-56F2EA62062E]]
brew install ruby
brew install rbenv
# org_gcr_2017-05-12_mara_CB12AE91-2573-4886-85B1-56F2EA62062E ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_45F5FEE0-3692-4AB2-B942-D6895BDF956A][org_gcr_2017-05-12_mara_45F5FEE0-3692-4AB2-B942-D6895BDF956A]]
brew cask install racket
# org_gcr_2017-05-12_mara_45F5FEE0-3692-4AB2-B942-D6895BDF956A ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_9B75A8BF-1F84-41C7-BA05-E2094F541B69][org_gcr_2017-05-12_mara_9B75A8BF-1F84-41C7-BA05-E2094F541B69]]
brew install gforth
# org_gcr_2017-05-12_mara_9B75A8BF-1F84-41C7-BA05-E2094F541B69 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_F2DCC726-8AFD-490F-92D6-61EAD46119F9][org_gcr_2017-05-12_mara_F2DCC726-8AFD-490F-92D6-61EAD46119F9]]
brew install node
# org_gcr_2017-05-12_mara_F2DCC726-8AFD-490F-92D6-61EAD46119F9 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_FF9AFF4C-BF99-4553-BECC-1C176C8FE4A3][org_gcr_2017-05-12_mara_FF9AFF4C-BF99-4553-BECC-1C176C8FE4A3]]
npm install -g jshint
# org_gcr_2017-05-12_mara_FF9AFF4C-BF99-4553-BECC-1C176C8FE4A3 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_FACDF6BA-3CAA-4265-B1B3-563FF5D60151][org_gcr_2017-05-12_mara_FACDF6BA-3CAA-4265-B1B3-563FF5D60151]]
brew install gnu-apl
# org_gcr_2017-05-12_mara_FACDF6BA-3CAA-4265-B1B3-563FF5D60151 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_B4963484-93A3-4298-9852-8724504C53A5][org_gcr_2017-05-12_mara_B4963484-93A3-4298-9852-8724504C53A5]]
brew install emacs \
     --with-cocoa \
     --with-imagemagick@6 \
     --with-librsvg \
     --with-mailutils \
     --with-modules
rm $(brew --prefix)/bin/emacs
ln -s $(brew --prefix emacs)/bin/emacs $(brew --prefix)/bin/emacs
rm $(brew --prefix)/bin/emacsclient
ln -s $(brew --prefix emacs)/bin/emacsclient $(brew --prefix)/bin/emacsclient
# org_gcr_2017-05-12_mara_B4963484-93A3-4298-9852-8724504C53A5 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-07-30_mara_1F4656FC-2D17-4C4D-975B-DBC94ADAD23A][org_gcr_2017-07-30_mara_1F4656FC-2D17-4C4D-975B-DBC94ADAD23A]]
brew install go
brew install gox
# org_gcr_2017-07-30_mara_1F4656FC-2D17-4C4D-975B-DBC94ADAD23A ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_CFCB8712-4E27-484C-A459-402C008961A1][org_gcr_2017-05-12_mara_CFCB8712-4E27-484C-A459-402C008961A1]]
brew cask install sourcetree
# org_gcr_2017-05-12_mara_CFCB8712-4E27-484C-A459-402C008961A1 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-24T09-26-51-05-00_cosmicality_3D012A17-86CA-4215-8EB4-110E209B49BE][org_gcr_2018-09-24T09-26-51-05-00_cosmicality_3D012A17-86CA-4215-8EB4-110E209B49BE]]
brew cask install jetbrains-toolbox
# org_gcr_2018-09-24T09-26-51-05-00_cosmicality_3D012A17-86CA-4215-8EB4-110E209B49BE ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_39185E42-F547-489B-85F1-D754C1794178][org_gcr_2017-05-12_mara_39185E42-F547-489B-85F1-D754C1794178]]
brew cask install rstudio
# org_gcr_2017-05-12_mara_39185E42-F547-489B-85F1-D754C1794178 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_4FB4D5A0-C3AF-4BBD-84B5-C9579DA2AFE6][org_gcr_2017-05-12_mara_4FB4D5A0-C3AF-4BBD-84B5-C9579DA2AFE6]]
brew cask install dash
# org_gcr_2017-05-12_mara_4FB4D5A0-C3AF-4BBD-84B5-C9579DA2AFE6 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_550D985C-BAE4-409E-9289-A712EA44B335][org_gcr_2017-05-12_mara_550D985C-BAE4-409E-9289-A712EA44B335]]
brew install the_silver_searcher
# org_gcr_2017-05-12_mara_550D985C-BAE4-409E-9289-A712EA44B335 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_1E6B3FB1-97E1-456D-A0CE-7D686FDF5E31][org_gcr_2017-05-12_mara_1E6B3FB1-97E1-456D-A0CE-7D686FDF5E31]]
brew install shellcheck
# org_gcr_2017-05-12_mara_1E6B3FB1-97E1-456D-A0CE-7D686FDF5E31 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-09-07_mara_A2CEC35D-5F40-4568-8057-C791E34B7E8F][org_gcr_2017-09-07_mara_A2CEC35D-5F40-4568-8057-C791E34B7E8F]]
brew install make
# org_gcr_2017-09-07_mara_A2CEC35D-5F40-4568-8057-C791E34B7E8F ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-04-09T19-27-23-05-00_mara_4F071667-58DE-427E-A738-A222180928EA][org_gcr_2018-04-09T19-27-23-05-00_mara_4F071667-58DE-427E-A738-A222180928EA]]
cd ~/
rm -rf ~/vcard
mkdir -p ~/vcard
cd ~/vcard
vens
veon
pip2.7 install vcard
veof
cd ~/
# org_gcr_2018-04-09T19-27-23-05-00_mara_4F071667-58DE-427E-A738-A222180928EA ends here
