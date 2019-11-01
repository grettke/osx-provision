# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_8082AC3B-7751-40C3-B8C3-E1C8B678F07A][org_gcr_2017-05-12_mara_8082AC3B-7751-40C3-B8C3-E1C8B678F07A]]
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
# org_gcr_2017-05-12_mara_8082AC3B-7751-40C3-B8C3-E1C8B678F07A ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_E7F0585C-736B-4B4F-8123-BEF176250886][org_gcr_2017-05-12_mara_E7F0585C-736B-4B4F-8123-BEF176250886]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
# org_gcr_2017-05-12_mara_E7F0585C-736B-4B4F-8123-BEF176250886 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_D79CA624-89B0-4F92-877A-B0C2C14A4B2F][org_gcr_2017-05-12_mara_D79CA624-89B0-4F92-877A-B0C2C14A4B2F]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
All creativity is an extended form of a joke.
          — Alan Kay"
# org_gcr_2017-05-12_mara_D79CA624-89B0-4F92-877A-B0C2C14A4B2F ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_3290F2DF-990B-4CE3-8529-36521F720963][org_gcr_2017-05-12_mara_3290F2DF-990B-4CE3-8529-36521F720963]]
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# org_gcr_2017-05-12_mara_3290F2DF-990B-4CE3-8529-36521F720963 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_AD487C53-1C16-4734-9275-B1B72F41D725][org_gcr_2017-05-12_mara_AD487C53-1C16-4734-9275-B1B72F41D725]]
sudo spctl --master-disable
# org_gcr_2017-05-12_mara_AD487C53-1C16-4734-9275-B1B72F41D725 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_FECCE7E6-6F35-4DC3-8646-CD445EBFE430][org_gcr_2017-05-12_mara_FECCE7E6-6F35-4DC3-8646-CD445EBFE430]]
defaults write 'NSGlobalDomain' NSAutomaticSpellingCorrectionEnabled -bool false
# org_gcr_2017-05-12_mara_FECCE7E6-6F35-4DC3-8646-CD445EBFE430 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_0865BC69-697B-44F1-BAAD-8F0EA0F62E47][org_gcr_2017-05-12_mara_0865BC69-697B-44F1-BAAD-8F0EA0F62E47]]
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint -bool true
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint2 -bool true
# org_gcr_2017-05-12_mara_0865BC69-697B-44F1-BAAD-8F0EA0F62E47 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_17B24F88-6FFB-4BC3-811F-546E4A875EA5][org_gcr_2017-05-12_mara_17B24F88-6FFB-4BC3-811F-546E4A875EA5]]
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode -bool true
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode2 -bool true
# org_gcr_2017-05-12_mara_17B24F88-6FFB-4BC3-811F-546E4A875EA5 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_C358FC0F-758F-4B87-9608-9AB34FA17B0A][org_gcr_2017-05-12_mara_C358FC0F-758F-4B87-9608-9AB34FA17B0A]]
defaults write 'com.apple.print.PrintingPrefs' 'Quit When Finished' -bool true
# org_gcr_2017-05-12_mara_C358FC0F-758F-4B87-9608-9AB34FA17B0A ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_9F534597-1727-420D-BA53-09267E9EB7AB][org_gcr_2017-05-12_mara_9F534597-1727-420D-BA53-09267E9EB7AB]]
defaults write NSGlobalDomain _HIHideMenuBar -bool true
# org_gcr_2017-05-12_mara_9F534597-1727-420D-BA53-09267E9EB7AB ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_35F6C8B1-4D7A-4823-A77E-DDA7F8060AFF][org_gcr_2017-05-12_mara_35F6C8B1-4D7A-4823-A77E-DDA7F8060AFF]]
defaults write 'com.apple.menuextra.battery' ShowPercent -bool true
# org_gcr_2017-05-12_mara_35F6C8B1-4D7A-4823-A77E-DDA7F8060AFF ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_7B2BD1E7-4165-4E7F-92D1-C658E9804F51][org_gcr_2017-05-12_mara_7B2BD1E7-4165-4E7F-92D1-C658E9804F51]]
defaults write 'com.apple.menuextra.clock' DateFormat -string "EEE MMM d  HH:mm"
# org_gcr_2017-05-12_mara_7B2BD1E7-4165-4E7F-92D1-C658E9804F51 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_FA0C8365-624A-4590-98D1-131671483174][org_gcr_2017-05-12_mara_FA0C8365-624A-4590-98D1-131671483174]]
defaults write 'com.apple.TimeMachine' DoNotOfferNewDisksForBackup -bool true
# org_gcr_2017-05-12_mara_FA0C8365-624A-4590-98D1-131671483174 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_4073FE48-C5ED-4074-84C9-212B5544CB05][org_gcr_2017-05-12_mara_4073FE48-C5ED-4074-84C9-212B5544CB05]]
defaults write 'com.apple.desktopservices' DSDontWriteNetworkStores -bool true
# org_gcr_2017-05-12_mara_4073FE48-C5ED-4074-84C9-212B5544CB05 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_4D88B78D-92CA-46AE-AFBC-B69D78F46296][org_gcr_2017-05-12_mara_4D88B78D-92CA-46AE-AFBC-B69D78F46296]]
defaults write 'NSGlobalDomain' NSDocumentSaveNewDocumentsToCloud -bool false
# org_gcr_2017-05-12_mara_4D88B78D-92CA-46AE-AFBC-B69D78F46296 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_BD54854E-74A3-42C0-989A-F39C70D762F1][org_gcr_2017-05-12_mara_BD54854E-74A3-42C0-989A-F39C70D762F1]]
defaults write 'NSGlobalDomain' NSWindowResizeTime -float 0.001
# org_gcr_2017-05-12_mara_BD54854E-74A3-42C0-989A-F39C70D762F1 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_CE6EBA74-B9B0-45AA-B741-7F2BF0F0AD24][org_gcr_2017-05-12_mara_CE6EBA74-B9B0-45AA-B741-7F2BF0F0AD24]]
defaults write com.apple.LaunchServices LSQuarantine -bool false
# org_gcr_2017-05-12_mara_CE6EBA74-B9B0-45AA-B741-7F2BF0F0AD24 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_F0EC81C0-85C3-401D-BADF-B7156B043B00][org_gcr_2017-05-12_mara_F0EC81C0-85C3-401D-BADF-B7156B043B00]]
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
# org_gcr_2017-05-12_mara_F0EC81C0-85C3-401D-BADF-B7156B043B00 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_F839E739-239F-452B-BB09-557FBC539EF1][org_gcr_2017-05-12_mara_F839E739-239F-452B-BB09-557FBC539EF1]]
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
# org_gcr_2017-05-12_mara_F839E739-239F-452B-BB09-557FBC539EF1 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_9D937F98-0106-444A-BC40-C37283FAB316][org_gcr_2017-05-12_mara_9D937F98-0106-444A-BC40-C37283FAB316]]
defaults write com.apple.CrashReporter DialogType -string "none"
# org_gcr_2017-05-12_mara_9D937F98-0106-444A-BC40-C37283FAB316 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_6A505F3E-B686-46A7-A617-EEC6419C81A5][org_gcr_2017-05-12_mara_6A505F3E-B686-46A7-A617-EEC6419C81A5]]
defaults write com.apple.helpviewer DevMode -bool true
# org_gcr_2017-05-12_mara_6A505F3E-B686-46A7-A617-EEC6419C81A5 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_10BE7A63-4C25-40AA-B9C8-60F2267FB5F6][org_gcr_2017-05-12_mara_10BE7A63-4C25-40AA-B9C8-60F2267FB5F6]]
sudo systemsetup -setrestartfreeze on
# org_gcr_2017-05-12_mara_10BE7A63-4C25-40AA-B9C8-60F2267FB5F6 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_24BCF9D2-732A-472C-855D-6AFAE6BE1967][org_gcr_2017-05-12_mara_24BCF9D2-732A-472C-855D-6AFAE6BE1967]]
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# org_gcr_2017-05-12_mara_24BCF9D2-732A-472C-855D-6AFAE6BE1967 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_4F242371-3696-4DF2-AC94-22F2038E83BE][org_gcr_2017-05-12_mara_4F242371-3696-4DF2-AC94-22F2038E83BE]]
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# org_gcr_2017-05-12_mara_4F242371-3696-4DF2-AC94-22F2038E83BE ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_B5E344AD-EF14-4F0D-BE99-E6717081917B][org_gcr_2017-05-12_mara_B5E344AD-EF14-4F0D-BE99-E6717081917B]]
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
# org_gcr_2017-05-12_mara_B5E344AD-EF14-4F0D-BE99-E6717081917B ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_278431C8-F6C9-4648-9828-EC3C001265FE][org_gcr_2017-05-12_mara_278431C8-F6C9-4648-9828-EC3C001265FE]]
defaults write 'NSGlobalDomain' ApplePressAndHoldEnabled -bool false
# org_gcr_2017-05-12_mara_278431C8-F6C9-4648-9828-EC3C001265FE ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_1535AE8C-9440-484F-8916-B3B1E0E367E9][org_gcr_2017-05-12_mara_1535AE8C-9440-484F-8916-B3B1E0E367E9]]
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
# org_gcr_2017-05-12_mara_1535AE8C-9440-484F-8916-B3B1E0E367E9 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_92C03F93-F5AB-480A-9D11-AD4B0340175D][org_gcr_2017-05-12_mara_92C03F93-F5AB-480A-9D11-AD4B0340175D]]
defaults write com.apple.dock autohide -bool true && killall Dock
# org_gcr_2017-05-12_mara_92C03F93-F5AB-480A-9D11-AD4B0340175D ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_AED4ACD0-8AC0-4DA1-84C2-854352BF862E][org_gcr_2017-05-12_mara_AED4ACD0-8AC0-4DA1-84C2-854352BF862E]]
defaults write com.apple.dock launchanim -bool false && killall Dock
# org_gcr_2017-05-12_mara_AED4ACD0-8AC0-4DA1-84C2-854352BF862E ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_0BBDBF25-1CD4-4E9A-9C30-2AC387CF4F8D][org_gcr_2017-05-12_mara_0BBDBF25-1CD4-4E9A-9C30-2AC387CF4F8D]]
defaults write com.apple.dock mouse-over-hilte-stack -bool true && killall Dock
# org_gcr_2017-05-12_mara_0BBDBF25-1CD4-4E9A-9C30-2AC387CF4F8D ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_9FE18292-E785-433D-901F-C6BA8673D4CC][org_gcr_2017-05-12_mara_9FE18292-E785-433D-901F-C6BA8673D4CC]]
defaults write com.apple.dock showhidden -bool true && killall Dock
# org_gcr_2017-05-12_mara_9FE18292-E785-433D-901F-C6BA8673D4CC ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_F97562F8-8DC4-4E1B-8E0C-A91ED6404138][org_gcr_2017-05-12_mara_F97562F8-8DC4-4E1B-8E0C-A91ED6404138]]
defaults write com.apple.dock minimize-to-application -bool true && killall Dock
# org_gcr_2017-05-12_mara_F97562F8-8DC4-4E1B-8E0C-A91ED6404138 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_7660A9DA-AAD9-4B44-A40A-4A9AD376DAA4][org_gcr_2017-05-12_mara_7660A9DA-AAD9-4B44-A40A-4A9AD376DAA4]]
defaults write com.apple.dock orientation -string bottom && killall Dock
# org_gcr_2017-05-12_mara_7660A9DA-AAD9-4B44-A40A-4A9AD376DAA4 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_CE835494-145D-494D-AA53-60BDE5132068][org_gcr_2017-05-12_mara_CE835494-145D-494D-AA53-60BDE5132068]]
defaults write com.apple.Dock autohide-time-modifier -float 0 && killall Dock
# org_gcr_2017-05-12_mara_CE835494-145D-494D-AA53-60BDE5132068 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_FFFF9528-5771-410A-B554-CDEECE46223C][org_gcr_2017-05-12_mara_FFFF9528-5771-410A-B554-CDEECE46223C]]
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
# org_gcr_2017-05-12_mara_FFFF9528-5771-410A-B554-CDEECE46223C ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_CC22C9D3-6537-48AB-9C73-3B3BFAE32571][org_gcr_2017-05-12_mara_CC22C9D3-6537-48AB-9C73-3B3BFAE32571]]
defaults write com.apple.Dock tilesize -int 50 && killall Dock
# org_gcr_2017-05-12_mara_CC22C9D3-6537-48AB-9C73-3B3BFAE32571 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_CC1758DF-1E34-4335-BE0A-A3ADFF94E289][org_gcr_2017-05-12_mara_CC1758DF-1E34-4335-BE0A-A3ADFF94E289]]
defaults write com.apple.Dock show-process-indicators -bool true && killall Dock
# org_gcr_2017-05-12_mara_CC1758DF-1E34-4335-BE0A-A3ADFF94E289 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_2C282764-302C-48B3-8526-BCBBC68136D7][org_gcr_2017-05-12_mara_2C282764-302C-48B3-8526-BCBBC68136D7]]
defaults write 'com.apple.dock' persistent-apps -array '' && killall Dock
# org_gcr_2017-05-12_mara_2C282764-302C-48B3-8526-BCBBC68136D7 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_51190ECF-96AF-41E5-A3D5-305733CB369B][org_gcr_2017-05-12_mara_51190ECF-96AF-41E5-A3D5-305733CB369B]]
defaults write 'com.apple.dock' expose-animation-duration -float 0.1 && killall Dock
# org_gcr_2017-05-12_mara_51190ECF-96AF-41E5-A3D5-305733CB369B ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_8A95C7A0-1FFC-4F4A-B85B-E615692D3DD0][org_gcr_2017-05-12_mara_8A95C7A0-1FFC-4F4A-B85B-E615692D3DD0]]
defaults write 'com.apple.finder' QLEnableTextSelection -bool true && killall Finder
# org_gcr_2017-05-12_mara_8A95C7A0-1FFC-4F4A-B85B-E615692D3DD0 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_B0C608AD-9265-4878-AEBC-7E33A048F1A1][org_gcr_2017-05-12_mara_B0C608AD-9265-4878-AEBC-7E33A048F1A1]]
defaults write 'com.apple.frameworks.diskimages' auto-open-ro-root -bool true && killall Finder
defaults write 'com.apple.frameworks.diskimages' auto-open-rw-root -bool true && killall Finder
defaults write 'com.apple.finder' OpenWindowForNewRemovableDisk -bool true && killall Finder
# org_gcr_2017-05-12_mara_B0C608AD-9265-4878-AEBC-7E33A048F1A1 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_FD73E47E-42A4-4AB9-A599-12E44D822A79][org_gcr_2017-05-12_mara_FD73E47E-42A4-4AB9-A599-12E44D822A79]]
defaults write 'com.apple.finder' _FXShowPosixPathInTitle -bool true && killall Finder
# org_gcr_2017-05-12_mara_FD73E47E-42A4-4AB9-A599-12E44D822A79 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_2D637649-277F-4E7B-959E-924E88F046A6][org_gcr_2017-05-12_mara_2D637649-277F-4E7B-959E-924E88F046A6]]
defaults write 'com.apple.finder' NewWindowTarget -string PfHm && killall Finder
# org_gcr_2017-05-12_mara_2D637649-277F-4E7B-959E-924E88F046A6 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_1A04F6F5-D673-4043-90B1-F6283FBEF5C9][org_gcr_2017-05-12_mara_1A04F6F5-D673-4043-90B1-F6283FBEF5C9]]
defaults write 'com.apple.finder' FXDefaultSearchScope -string SCcf && killall Finder
# org_gcr_2017-05-12_mara_1A04F6F5-D673-4043-90B1-F6283FBEF5C9 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_91DF78CB-D5A0-4F5D-AA66-C402BF61F1B4][org_gcr_2017-05-12_mara_91DF78CB-D5A0-4F5D-AA66-C402BF61F1B4]]
defaults write 'com.apple.finder' AppleShowAllFiles -bool true && killall Finder
# org_gcr_2017-05-12_mara_91DF78CB-D5A0-4F5D-AA66-C402BF61F1B4 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_47D3778D-108C-4FE8-8500-7219FDE66F65][org_gcr_2017-05-12_mara_47D3778D-108C-4FE8-8500-7219FDE66F65]]
defaults write 'com.apple.finder' AppleShowAllExtensions -bool true && killall Finder
# org_gcr_2017-05-12_mara_47D3778D-108C-4FE8-8500-7219FDE66F65 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_E686D674-F91E-41C1-9AAC-CCAE9A045BE9][org_gcr_2017-05-12_mara_E686D674-F91E-41C1-9AAC-CCAE9A045BE9]]
defaults write 'com.apple.finder' ShowPathbar -bool true && killall Finder
# org_gcr_2017-05-12_mara_E686D674-F91E-41C1-9AAC-CCAE9A045BE9 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_0A61D4B3-E473-4260-BC09-E7AE3466B3FF][org_gcr_2017-05-12_mara_0A61D4B3-E473-4260-BC09-E7AE3466B3FF]]
defaults write 'com.apple.finder' ShowStatusBar -bool true && killall Finder
# org_gcr_2017-05-12_mara_0A61D4B3-E473-4260-BC09-E7AE3466B3FF ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_0E915742-485B-4FD0-B884-D2D479803765][org_gcr_2017-05-12_mara_0E915742-485B-4FD0-B884-D2D479803765]]
defaults write 'NSGlobalDomain' NSTableViewDefaultSizeMode -bool true && killall Finder
# org_gcr_2017-05-12_mara_0E915742-485B-4FD0-B884-D2D479803765 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_C3B234B5-498F-4C29-B548-03DF4D57085A][org_gcr_2017-05-12_mara_C3B234B5-498F-4C29-B548-03DF4D57085A]]
defaults write 'com.apple.Finder' FXPreferredViewStyle Nlsv && killall Finder
# org_gcr_2017-05-12_mara_C3B234B5-498F-4C29-B548-03DF4D57085A ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_818E594F-4D81-43E3-9734-F52C4C827D77][org_gcr_2017-05-12_mara_818E594F-4D81-43E3-9734-F52C4C827D77]]
defaults write com.apple.finder FXPreferredGroupBy -string "None"
# org_gcr_2017-05-12_mara_818E594F-4D81-43E3-9734-F52C4C827D77 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_3A24B6A5-AA20-4377-9D5A-5544B7DA6C8E][org_gcr_2017-05-12_mara_3A24B6A5-AA20-4377-9D5A-5544B7DA6C8E]]
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:columns:4:ascending true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:columns:kind:ascending true" ~/Library/Preferences/com.apple.finder.plist
# org_gcr_2017-05-12_mara_3A24B6A5-AA20-4377-9D5A-5544B7DA6C8E ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_67D184D1-B9CC-4020-8E2C-DB4A308723D1][org_gcr_2017-05-12_mara_67D184D1-B9CC-4020-8E2C-DB4A308723D1]]
defaults write com.apple.finder DisableAllAnimations -bool true
# org_gcr_2017-05-12_mara_67D184D1-B9CC-4020-8E2C-DB4A308723D1 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_1F11E130-3D0F-4351-ADF1-A96F891B5055][org_gcr_2017-05-12_mara_1F11E130-3D0F-4351-ADF1-A96F891B5055]]
defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
# org_gcr_2017-05-12_mara_1F11E130-3D0F-4351-ADF1-A96F891B5055 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_058DEDDA-6F7B-4EC1-80EC-EDC032D321A8][org_gcr_2017-05-12_mara_058DEDDA-6F7B-4EC1-80EC-EDC032D321A8]]
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# org_gcr_2017-05-12_mara_058DEDDA-6F7B-4EC1-80EC-EDC032D321A8 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_C7F807FE-086C-4DAD-874B-663354851470][org_gcr_2017-05-12_mara_C7F807FE-086C-4DAD-874B-663354851470]]
defaults write com.apple.screencapture disable-shadow -bool true
# org_gcr_2017-05-12_mara_C7F807FE-086C-4DAD-874B-663354851470 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_F453C1D8-DAD0-4EFC-B03C-5D502014F323][org_gcr_2017-05-12_mara_F453C1D8-DAD0-4EFC-B03C-5D502014F323]]
defaults write 'com.apple.screencapture' type -string png && killall SystemUIServer
# org_gcr_2017-05-12_mara_F453C1D8-DAD0-4EFC-B03C-5D502014F323 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_E9B0CDED-1981-4EDC-8B79-7FF6D807347C][org_gcr_2017-05-12_mara_E9B0CDED-1981-4EDC-8B79-7FF6D807347C]]
defaults write 'NSGlobalDomain' AppleFontSmoothing -int 2
# org_gcr_2017-05-12_mara_E9B0CDED-1981-4EDC-8B79-7FF6D807347C ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_C6FCF96E-90C8-42CF-86E9-028CCF471B92][org_gcr_2017-05-12_mara_C6FCF96E-90C8-42CF-86E9-028CCF471B92]]
mkdir -p ~/Screen\ Shots
defaults write com.apple.screencapture location ~/Screen\ Shots
# org_gcr_2017-05-12_mara_C6FCF96E-90C8-42CF-86E9-028CCF471B92 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_CDD537A4-A928-4084-BC7A-22EE8DA50D23][org_gcr_2017-05-12_mara_CDD537A4-A928-4084-BC7A-22EE8DA50D23]]
# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Set edge-dragging delay to 0.7
defaults write com.apple.dock workspaces-edge-delay -float 1.0
# org_gcr_2017-05-12_mara_CDD537A4-A928-4084-BC7A-22EE8DA50D23 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_B61838B5-13A9-4714-8702-C4BFDA5CE680][org_gcr_2017-05-12_mara_B61838B5-13A9-4714-8702-C4BFDA5CE680]]
defaults write com.apple.terminal StringEncodings -array 4
# org_gcr_2017-05-12_mara_B61838B5-13A9-4714-8702-C4BFDA5CE680 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_0177C8D4-4113-4149-97DF-D83AEA5B65B6][org_gcr_2017-05-12_mara_0177C8D4-4113-4149-97DF-D83AEA5B65B6]]
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
# org_gcr_2017-05-12_mara_0177C8D4-4113-4149-97DF-D83AEA5B65B6 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_E7775BEC-2D26-4D19-A8C9-0BCF9AA22230][org_gcr_2017-05-12_mara_E7775BEC-2D26-4D19-A8C9-0BCF9AA22230]]
defaults write com.apple.ActivityMonitor IconType -int 5
# org_gcr_2017-05-12_mara_E7775BEC-2D26-4D19-A8C9-0BCF9AA22230 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_5C9A0DEA-DBD3-46BA-A85C-A17CDC79826D][org_gcr_2017-05-12_mara_5C9A0DEA-DBD3-46BA-A85C-A17CDC79826D]]
defaults write com.apple.ActivityMonitor ShowCategory -int 0
# org_gcr_2017-05-12_mara_5C9A0DEA-DBD3-46BA-A85C-A17CDC79826D ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_51F2F5A5-7037-4458-8468-AD019892EBE9][org_gcr_2017-05-12_mara_51F2F5A5-7037-4458-8468-AD019892EBE9]]
defaults write com.apple.ActivityMonitor SortDirection -int 0
# org_gcr_2017-05-12_mara_51F2F5A5-7037-4458-8468-AD019892EBE9 ends here

# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2017-05-12_mara_4C582518-39DC-4D1A-BB0C-5499B4CA78D3][org_gcr_2017-05-12_mara_4C582518-39DC-4D1A-BB0C-5499B4CA78D3]]
echo "Script complete"
# org_gcr_2017-05-12_mara_4C582518-39DC-4D1A-BB0C-5499B4CA78D3 ends here
