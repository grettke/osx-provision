# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_8F72F214-3D61-446E-B0A0-ED9629115936][org_gcr_2017-05-12_mara_8F72F214-3D61-446E-B0A0-ED9629115936]]
brew cask install popchar
# org_gcr_2017-05-12_mara_8F72F214-3D61-446E-B0A0-ED9629115936 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_4C8F534B-7B5A-436B-AE43-9F603BF62988][org_gcr_2017-05-12_mara_4C8F534B-7B5A-436B-AE43-9F603BF62988]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install karabiner
else
  echo "karabiner: Only install on hosts"
fi
# org_gcr_2017-05-12_mara_4C8F534B-7B5A-436B-AE43-9F603BF62988 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_995F2EC7-2BD0-4966-9FEE-BE512C28786E][org_gcr_2017-05-12_mara_995F2EC7-2BD0-4966-9FEE-BE512C28786E]]
brew cask install spectacle
# org_gcr_2017-05-12_mara_995F2EC7-2BD0-4966-9FEE-BE512C28786E ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_785FA752-E2FA-411E-8D07-911938D9E656][org_gcr_2017-05-12_mara_785FA752-E2FA-411E-8D07-911938D9E656]]
brew cask install little-snitch
# org_gcr_2017-05-12_mara_785FA752-E2FA-411E-8D07-911938D9E656 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_34436A54-0E97-48DD-8391-E6A6B36A6A84][org_gcr_2017-05-12_mara_34436A54-0E97-48DD-8391-E6A6B36A6A84]]
brew cask install bartender
# org_gcr_2017-05-12_mara_34436A54-0E97-48DD-8391-E6A6B36A6A84 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_3DA6A9C5-8086-4B61-B38F-A87E6A470345][org_gcr_2017-05-12_mara_3DA6A9C5-8086-4B61-B38F-A87E6A470345]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install flux
else
  echo "flux: Only install on hosts"
fi
# org_gcr_2017-05-12_mara_3DA6A9C5-8086-4B61-B38F-A87E6A470345 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_9F387AF4-1A72-4D36-866B-4AF99B771776][org_gcr_2017-05-12_mara_9F387AF4-1A72-4D36-866B-4AF99B771776]]
brew cask install xquartz
defaults write org.macosforge.xquartz.X11 dpi -int 170
# org_gcr_2017-05-12_mara_9F387AF4-1A72-4D36-866B-4AF99B771776 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_60488E6B-8459-40A4-8811-1B146A6802EC][org_gcr_2017-05-12_mara_60488E6B-8459-40A4-8811-1B146A6802EC]]
brew cask install tuxera-ntfs
# org_gcr_2017-05-12_mara_60488E6B-8459-40A4-8811-1B146A6802EC ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_66B04382-0B16-4B9E-8388-9339BBA44308][org_gcr_2017-05-12_mara_66B04382-0B16-4B9E-8388-9339BBA44308]]
brew cask install switchresx
# org_gcr_2017-05-12_mara_66B04382-0B16-4B9E-8388-9339BBA44308 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_C5F1CDAB-387E-4549-BCAA-0315C7482A7A][org_gcr_2017-05-12_mara_C5F1CDAB-387E-4549-BCAA-0315C7482A7A]]
brew install terminal-notifier
# org_gcr_2017-05-12_mara_C5F1CDAB-387E-4549-BCAA-0315C7482A7A ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_CFE8C328-2D5E-4367-9E36-8E76EF29F2BB][org_gcr_2017-05-12_mara_CFE8C328-2D5E-4367-9E36-8E76EF29F2BB]]
echo "Script is done"
# org_gcr_2017-05-12_mara_CFE8C328-2D5E-4367-9E36-8E76EF29F2BB ends here
