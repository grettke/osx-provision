# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_8F72F214-3D61-446E-B0A0-ED9629115936][org_gcr_2017-05-12_mara_8F72F214-3D61-446E-B0A0-ED9629115936]]
brew cask install popchar
# org_gcr_2017-05-12_mara_8F72F214-3D61-446E-B0A0-ED9629115936 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_785FA752-E2FA-411E-8D07-911938D9E656][org_gcr_2017-05-12_mara_785FA752-E2FA-411E-8D07-911938D9E656]]
brew cask install little-snitch
# org_gcr_2017-05-12_mara_785FA752-E2FA-411E-8D07-911938D9E656 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2019-01-11T19-53-25-06-00_cosmicality_86632247-7574-4AFE-957D-B7C698E45B26][org_gcr_2019-01-11T19-53-25-06-00_cosmicality_86632247-7574-4AFE-957D-B7C698E45B26]]
brew cask install wireshark
# org_gcr_2019-01-11T19-53-25-06-00_cosmicality_86632247-7574-4AFE-957D-B7C698E45B26 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_34436A54-0E97-48DD-8391-E6A6B36A6A84][org_gcr_2017-05-12_mara_34436A54-0E97-48DD-8391-E6A6B36A6A84]]
brew cask install bartender
# org_gcr_2017-05-12_mara_34436A54-0E97-48DD-8391-E6A6B36A6A84 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_3DA6A9C5-8086-4B61-B38F-A87E6A470345][org_gcr_2017-05-12_mara_3DA6A9C5-8086-4B61-B38F-A87E6A470345]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
  brew cask install flux
else
  echo "flux: Only install on hosts"
fi
# org_gcr_2017-05-12_mara_3DA6A9C5-8086-4B61-B38F-A87E6A470345 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_9F387AF4-1A72-4D36-866B-4AF99B771776][org_gcr_2017-05-12_mara_9F387AF4-1A72-4D36-866B-4AF99B771776]]
brew cask install xquartz
# org_gcr_2017-05-12_mara_9F387AF4-1A72-4D36-866B-4AF99B771776 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-24T09-26-51-05-00_cosmicality_14FD75A6-624E-4AB7-94A8-C5EF341B62A8][org_gcr_2018-09-24T09-26-51-05-00_cosmicality_14FD75A6-624E-4AB7-94A8-C5EF341B62A8]]
defaults write org.macosforge.xquartz.X11 app_to_run /usr/bin/true
# org_gcr_2018-09-24T09-26-51-05-00_cosmicality_14FD75A6-624E-4AB7-94A8-C5EF341B62A8 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-24T09-26-51-05-00_cosmicality_2EB565D2-70D7-4CE1-AD25-BB3BB28B62BB][org_gcr_2018-09-24T09-26-51-05-00_cosmicality_2EB565D2-70D7-4CE1-AD25-BB3BB28B62BB]]
defaults write org.macosforge.xquartz.X11 dpi -int 105
# org_gcr_2018-09-24T09-26-51-05-00_cosmicality_2EB565D2-70D7-4CE1-AD25-BB3BB28B62BB ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-24T09-26-51-05-00_cosmicality_7C0AA8D7-5B7C-462D-8EAD-F06BDDB36999][org_gcr_2018-09-24T09-26-51-05-00_cosmicality_7C0AA8D7-5B7C-462D-8EAD-F06BDDB36999]]
brew install wmctrl
# org_gcr_2018-09-24T09-26-51-05-00_cosmicality_7C0AA8D7-5B7C-462D-8EAD-F06BDDB36999 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_60488E6B-8459-40A4-8811-1B146A6802EC][org_gcr_2017-05-12_mara_60488E6B-8459-40A4-8811-1B146A6802EC]]
brew cask install tuxera-ntfs
# org_gcr_2017-05-12_mara_60488E6B-8459-40A4-8811-1B146A6802EC ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_66B04382-0B16-4B9E-8388-9339BBA44308][org_gcr_2017-05-12_mara_66B04382-0B16-4B9E-8388-9339BBA44308]]
brew cask install switchresx
# org_gcr_2017-05-12_mara_66B04382-0B16-4B9E-8388-9339BBA44308 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_C5F1CDAB-387E-4549-BCAA-0315C7482A7A][org_gcr_2017-05-12_mara_C5F1CDAB-387E-4549-BCAA-0315C7482A7A]]
brew install terminal-notifier
# org_gcr_2017-05-12_mara_C5F1CDAB-387E-4549-BCAA-0315C7482A7A ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-10-30_mara_F7594669-E656-4276-BCA0-70A239877046][org_gcr_2017-10-30_mara_F7594669-E656-4276-BCA0-70A239877046]]
brew cask install malwarebytes
# org_gcr_2017-10-30_mara_F7594669-E656-4276-BCA0-70A239877046 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-01-23_mara_D2FA266D-85A3-4CA5-A196-4E80E7AC354B][org_gcr_2018-01-23_mara_D2FA266D-85A3-4CA5-A196-4E80E7AC354B]]
brew cask install geekbench
# org_gcr_2018-01-23_mara_D2FA266D-85A3-4CA5-A196-4E80E7AC354B ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-01-23_mara_9B535D8D-868D-4004-BBA1-A7FEFC9939DC][org_gcr_2018-01-23_mara_9B535D8D-868D-4004-BBA1-A7FEFC9939DC]]
brew cask install daisydisk
# org_gcr_2018-01-23_mara_9B535D8D-868D-4004-BBA1-A7FEFC9939DC ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-04-12T21-31-52-05-00_mara_B0101C87-2562-4D78-9BC0-11F49488ED1E][org_gcr_2018-04-12T21-31-52-05-00_mara_B0101C87-2562-4D78-9BC0-11F49488ED1E]]
brew cask install contexts
# org_gcr_2018-04-12T21-31-52-05-00_mara_B0101C87-2562-4D78-9BC0-11F49488ED1E ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2019-04-24T18-13-26-05-00_cosmicality_6C4FB56D-9B54-4029-992C-FC0A2BBD08F4][org_gcr_2019-04-24T18-13-26-05-00_cosmicality_6C4FB56D-9B54-4029-992C-FC0A2BBD08F4]]
brew cask install coconutbattery
# org_gcr_2019-04-24T18-13-26-05-00_cosmicality_6C4FB56D-9B54-4029-992C-FC0A2BBD08F4 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2019-05-29T21-58-33-05-00_cosmicality_A5FD8FC7-333B-4B0B-9876-202C6375DBC9][org_gcr_2019-05-29T21-58-33-05-00_cosmicality_A5FD8FC7-333B-4B0B-9876-202C6375DBC9]]
brew cask install freefilesync
# org_gcr_2019-05-29T21-58-33-05-00_cosmicality_A5FD8FC7-333B-4B0B-9876-202C6375DBC9 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2019-08-02T15-13-06-05-00_cosmicality_DDDFE93F-37E0-4861-BABC-D1DADE489419][org_gcr_2019-08-02T15-13-06-05-00_cosmicality_DDDFE93F-37E0-4861-BABC-D1DADE489419]]
brew cask install path-finder
# org_gcr_2019-08-02T15-13-06-05-00_cosmicality_DDDFE93F-37E0-4861-BABC-D1DADE489419 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_CFE8C328-2D5E-4367-9E36-8E76EF29F2BB][org_gcr_2017-05-12_mara_CFE8C328-2D5E-4367-9E36-8E76EF29F2BB]]
echo "The Administration is complete."
echo "Restart your Terminal to pick up the changes."
# org_gcr_2017-05-12_mara_CFE8C328-2D5E-4367-9E36-8E76EF29F2BB ends here
