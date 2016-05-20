# [[file:provisioning.org::291FDE06-DF44-4156-A013-B763A8727B00][291FDE06-DF44-4156-A013-B763A8727B00]]
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

# [[file:provisioning.org::2F39C8B9-CA25-4C94-8E77-AD348D5235A9][2F39C8B9-CA25-4C94-8E77-AD348D5235A9]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
# 2F39C8B9-CA25-4C94-8E77-AD348D5235A9 ends here

# [[file:provisioning.org::850816F3-B82E-4EE0-9895-6E99CB6A7593][850816F3-B82E-4EE0-9895-6E99CB6A7593]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
All creativity is an extended form of a joke.
          — Alan Kay"
# 850816F3-B82E-4EE0-9895-6E99CB6A7593 ends here

# [[file:provisioning.org::91AA8678-421C-4F05-8ECA-1D1219582C7E][91AA8678-421C-4F05-8ECA-1D1219582C7E]]
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# 91AA8678-421C-4F05-8ECA-1D1219582C7E ends here

# [[file:provisioning.org::DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0][DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0]]
sudo spctl --master-disable
# DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0 ends here

# [[file:provisioning.org::6755B45A-4331-4CA4-89D5-7A5906C3966A][6755B45A-4331-4CA4-89D5-7A5906C3966A]]
cd ~/Pictures/
curl -O http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2015/02/M101-ORG.jpg
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/Pictures/M101-ORG.jpg'";
# 6755B45A-4331-4CA4-89D5-7A5906C3966A ends here

# [[file:provisioning.org::57F27EEA-630B-4CB4-9A04-27091C4AD4CB][57F27EEA-630B-4CB4-9A04-27091C4AD4CB]]
osascript -e 'set volume output volume 50'
# 57F27EEA-630B-4CB4-9A04-27091C4AD4CB ends here

# [[file:provisioning.org::02346DB0-0D1F-4A80-89ED-C8B723C05BB6][02346DB0-0D1F-4A80-89ED-C8B723C05BB6]]
defaults write 'NSGlobalDomain' NSAutomaticSpellingCorrectionEnabled -bool false
# 02346DB0-0D1F-4A80-89ED-C8B723C05BB6 ends here

# [[file:provisioning.org::207B6C0E-E636-4FAB-A859-6E3CA370C40E][207B6C0E-E636-4FAB-A859-6E3CA370C40E]]
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint -bool true
defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint2 -bool true
# 207B6C0E-E636-4FAB-A859-6E3CA370C40E ends here

# [[file:provisioning.org::FBAD5CA1-F984-46AE-940D-90B1FC6C8454][FBAD5CA1-F984-46AE-940D-90B1FC6C8454]]
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode -bool true
defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode2 -bool true
# FBAD5CA1-F984-46AE-940D-90B1FC6C8454 ends here

# [[file:provisioning.org::F6899984-2233-4027-BBEF-1005657C7B5E][F6899984-2233-4027-BBEF-1005657C7B5E]]
defaults write 'com.apple.print.PrintingPrefs' 'Quit When Finished' -bool true
# F6899984-2233-4027-BBEF-1005657C7B5E ends here

# [[file:provisioning.org::29013D61-3A46-42CB-80CF-7C896C69D56E][29013D61-3A46-42CB-80CF-7C896C69D56E]]
defaults write NSGlobalDomain _HIHideMenuBar -bool true
# 29013D61-3A46-42CB-80CF-7C896C69D56E ends here

# [[file:provisioning.org::8351B207-A376-4149-A876-4E3E8CE06732][8351B207-A376-4149-A876-4E3E8CE06732]]
defaults write 'com.apple.menuextra.battery' ShowPercent -bool true
# 8351B207-A376-4149-A876-4E3E8CE06732 ends here

# [[file:provisioning.org::3525C306-F373-4146-8579-60E38D765425][3525C306-F373-4146-8579-60E38D765425]]
defaults write 'com.apple.menuextra.clock' DateFormat -string "EEE MMM d  HH:mm"
# 3525C306-F373-4146-8579-60E38D765425 ends here

# [[file:provisioning.org::B7665462-71BC-4929-86C9-4766C3BAA9DB][B7665462-71BC-4929-86C9-4766C3BAA9DB]]
defaults write 'com.apple.TimeMachine' DoNotOfferNewDisksForBackup -bool true
# B7665462-71BC-4929-86C9-4766C3BAA9DB ends here

# [[file:provisioning.org::EE3BD935-46A0-425C-9DAB-0CB341D5E501][EE3BD935-46A0-425C-9DAB-0CB341D5E501]]
defaults write 'com.apple.desktopservices' DSDontWriteNetworkStores -bool true
# EE3BD935-46A0-425C-9DAB-0CB341D5E501 ends here

# [[file:provisioning.org::526B969F-94AD-441B-8F5D-52141EDA0507][526B969F-94AD-441B-8F5D-52141EDA0507]]
defaults write 'NSGlobalDomain' NSDocumentSaveNewDocumentsToCloud -bool false
# 526B969F-94AD-441B-8F5D-52141EDA0507 ends here

# [[file:provisioning.org::16416BAF-CFEE-43E2-9B6B-C2B85C73D627][16416BAF-CFEE-43E2-9B6B-C2B85C73D627]]
defaults write 'NSGlobalDomain' NSWindowResizeTime -float 0.001
# 16416BAF-CFEE-43E2-9B6B-C2B85C73D627 ends here

# [[file:provisioning.org::8D12169D-8717-46D4-920E-D4C322C4458E][8D12169D-8717-46D4-920E-D4C322C4458E]]
defaults write 'NSGlobalDomain' AppleAquaColorVariant -int 6
# 8D12169D-8717-46D4-920E-D4C322C4458E ends here

# [[file:provisioning.org::337E87AE-39CC-41F5-B115-11B994E125B5][337E87AE-39CC-41F5-B115-11B994E125B5]]
defaults write 'NSGlobalDomain' AppleInterfaceStyle -string Dark
# 337E87AE-39CC-41F5-B115-11B994E125B5 ends here

# [[file:provisioning.org::F89AEE9E-D5D6-4EF9-9914-CE2C3AE53B9B][F89AEE9E-D5D6-4EF9-9914-CE2C3AE53B9B]]
defaults write com.apple.LaunchServices LSQuarantine -bool false
# F89AEE9E-D5D6-4EF9-9914-CE2C3AE53B9B ends here

# [[file:provisioning.org::A2CDF5C4-9239-47AD-9978-09582362316C][A2CDF5C4-9239-47AD-9978-09582362316C]]
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
# A2CDF5C4-9239-47AD-9978-09582362316C ends here

# [[file:provisioning.org::4FDA48E0-AC9B-48B9-A09D-E54F72787F64][4FDA48E0-AC9B-48B9-A09D-E54F72787F64]]
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
# 4FDA48E0-AC9B-48B9-A09D-E54F72787F64 ends here

# [[file:provisioning.org::E102244A-C691-4E62-BE68-3BF1EB8D340F][E102244A-C691-4E62-BE68-3BF1EB8D340F]]
defaults write com.apple.CrashReporter DialogType -string "none"
# E102244A-C691-4E62-BE68-3BF1EB8D340F ends here

# [[file:provisioning.org::FC22C88E-44B4-4C50-B00A-82DB0DCDB519][FC22C88E-44B4-4C50-B00A-82DB0DCDB519]]
defaults write com.apple.helpviewer DevMode -bool true
# FC22C88E-44B4-4C50-B00A-82DB0DCDB519 ends here

# [[file:provisioning.org::F3347821-BEB6-4D91-8ADC-D968F825D491][F3347821-BEB6-4D91-8ADC-D968F825D491]]
sudo systemsetup -setrestartfreeze on
# F3347821-BEB6-4D91-8ADC-D968F825D491 ends here

# [[file:provisioning.org::B0166A42-EB93-444D-ACDA-A0E2AED02543][B0166A42-EB93-444D-ACDA-A0E2AED02543]]
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
# B0166A42-EB93-444D-ACDA-A0E2AED02543 ends here

# [[file:provisioning.org::493ABAF1-8385-4ADF-90C3-B61699A5603B][493ABAF1-8385-4ADF-90C3-B61699A5603B]]
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
# 493ABAF1-8385-4ADF-90C3-B61699A5603B ends here

# [[file:provisioning.org::1450BB2D-B822-48D3-ADC8-46FFF00B730C][1450BB2D-B822-48D3-ADC8-46FFF00B730C]]
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# 1450BB2D-B822-48D3-ADC8-46FFF00B730C ends here

# [[file:provisioning.org::B829AB6A-309B-406F-A51F-2CF38C183210][B829AB6A-309B-406F-A51F-2CF38C183210]]
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
# B829AB6A-309B-406F-A51F-2CF38C183210 ends here

# [[file:provisioning.org::9078E7EB-65AE-4B8E-978A-E6687DB2C4EA][9078E7EB-65AE-4B8E-978A-E6687DB2C4EA]]
defaults write 'NSGlobalDomain' ApplePressAndHoldEnabled -bool false
# 9078E7EB-65AE-4B8E-978A-E6687DB2C4EA ends here

# [[file:provisioning.org::662F5288-F102-4FCA-B052-31933DFEFC0B][662F5288-F102-4FCA-B052-31933DFEFC0B]]
defaults write 'NSGlobalDomain' com.apple.keyboard.fnState -bool true
# 662F5288-F102-4FCA-B052-31933DFEFC0B ends here

# [[file:provisioning.org::03E4D631-C6E3-4E4E-BCE9-BDB87D8549FD][03E4D631-C6E3-4E4E-BCE9-BDB87D8549FD]]
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
# 03E4D631-C6E3-4E4E-BCE9-BDB87D8549FD ends here

# [[file:provisioning.org::44629106-AB81-4099-AAAE-2A1692110652][44629106-AB81-4099-AAAE-2A1692110652]]
defaults write com.apple.dock autohide -bool true && killall Dock
# 44629106-AB81-4099-AAAE-2A1692110652 ends here

# [[file:provisioning.org::3A5370F0-1F37-47A9-8AD2-5A54F7BEBAF6][3A5370F0-1F37-47A9-8AD2-5A54F7BEBAF6]]
defaults write com.apple.dock launchanim -bool false && killall Dock
# 3A5370F0-1F37-47A9-8AD2-5A54F7BEBAF6 ends here

# [[file:provisioning.org::2D1566D0-5912-4770-A53E-DAB815E886F1][2D1566D0-5912-4770-A53E-DAB815E886F1]]
defaults write com.apple.dock mouse-over-hilte-stack -bool true && killall Dock
# 2D1566D0-5912-4770-A53E-DAB815E886F1 ends here

# [[file:provisioning.org::95CAD941-7BDA-4D4E-BF2E-976D9D07DA37][95CAD941-7BDA-4D4E-BF2E-976D9D07DA37]]
defaults write com.apple.dock showhidden -bool true && killall Dock
# 95CAD941-7BDA-4D4E-BF2E-976D9D07DA37 ends here

# [[file:provisioning.org::6AB142A8-9150-4B3B-8709-237D468212E0][6AB142A8-9150-4B3B-8709-237D468212E0]]
defaults write com.apple.dock minimize-to-application -bool true && killall Dock
# 6AB142A8-9150-4B3B-8709-237D468212E0 ends here

# [[file:provisioning.org::7CF0E408-7318-4921-B8BE-F834C8A63BC7][7CF0E408-7318-4921-B8BE-F834C8A63BC7]]
defaults write com.apple.dock orientation -string left && killall Dock
# 7CF0E408-7318-4921-B8BE-F834C8A63BC7 ends here

# [[file:provisioning.org::2250EED5-046B-4F55-B64E-04787C078F5B][2250EED5-046B-4F55-B64E-04787C078F5B]]
defaults write com.apple.Dock autohide-time-modifier -float 0 && killall Dock
# 2250EED5-046B-4F55-B64E-04787C078F5B ends here

# [[file:provisioning.org::CA55EDF7-AB57-450A-A80A-D9BCE9219951][CA55EDF7-AB57-450A-A80A-D9BCE9219951]]
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
# CA55EDF7-AB57-450A-A80A-D9BCE9219951 ends here

# [[file:provisioning.org::C92642D8-BA50-46E4-B9D0-A0A7DEEAF0B9][C92642D8-BA50-46E4-B9D0-A0A7DEEAF0B9]]
defaults write com.apple.Dock tilesize -int 50 && killall Dock
# C92642D8-BA50-46E4-B9D0-A0A7DEEAF0B9 ends here

# [[file:provisioning.org::D643A6DB-461A-425D-9516-C841B0A4C9E0][D643A6DB-461A-425D-9516-C841B0A4C9E0]]
defaults write com.apple.Dock show-process-indicators -bool true && killall Dock
# D643A6DB-461A-425D-9516-C841B0A4C9E0 ends here

# [[file:provisioning.org::88023507-0070-4713-9F0D-36344D3FDED0][88023507-0070-4713-9F0D-36344D3FDED0]]
defaults write 'com.apple.dock' persistent-apps -array '' && killall Dock
# 88023507-0070-4713-9F0D-36344D3FDED0 ends here

# [[file:provisioning.org::2AEA50FA-CA94-438A-B82E-3B465CAA2E12][2AEA50FA-CA94-438A-B82E-3B465CAA2E12]]
defaults write 'com.apple.dock' expose-animation-duration -float 0.1 && killall Dock
# 2AEA50FA-CA94-438A-B82E-3B465CAA2E12 ends here

# [[file:provisioning.org::A6759B25-1B21-40C2-A75C-B2DF18A3CAC1][A6759B25-1B21-40C2-A75C-B2DF18A3CAC1]]
defaults write 'com.apple.finder' QLEnableTextSelection -bool true && killall Finder
# A6759B25-1B21-40C2-A75C-B2DF18A3CAC1 ends here

# [[file:provisioning.org::DCDE10BB-3848-4C70-9B7A-8F5641950CCB][DCDE10BB-3848-4C70-9B7A-8F5641950CCB]]
defaults write 'com.apple.frameworks.diskimages' auto-open-ro-root -bool true && killall Finder
defaults write 'com.apple.frameworks.diskimages' auto-open-rw-root -bool true && killall Finder
defaults write 'com.apple.finder' OpenWindowForNewRemovableDisk -bool true && killall Finder
# DCDE10BB-3848-4C70-9B7A-8F5641950CCB ends here

# [[file:provisioning.org::4647036E-8DB1-4119-B6D1-2028941B9A91][4647036E-8DB1-4119-B6D1-2028941B9A91]]
defaults write 'com.apple.finder' WarnOnEmptyTrash -bool false && killall Finder
# 4647036E-8DB1-4119-B6D1-2028941B9A91 ends here

# [[file:provisioning.org::00CEF20F-FDD2-464F-B8E4-968682A62B26][00CEF20F-FDD2-464F-B8E4-968682A62B26]]
defaults write 'com.apple.finder' FXEnableExtensionChangeWarning -bool false && killall Finder
# 00CEF20F-FDD2-464F-B8E4-968682A62B26 ends here

# [[file:provisioning.org::1C946EE8-4D17-4D03-BF58-F2C5C1280739][1C946EE8-4D17-4D03-BF58-F2C5C1280739]]
defaults write 'com.apple.finder' _FXShowPosixPathInTitle -bool true && killall Finder
# 1C946EE8-4D17-4D03-BF58-F2C5C1280739 ends here

# [[file:provisioning.org::85E615B8-24C6-4819-B437-BB1ED2384E82][85E615B8-24C6-4819-B437-BB1ED2384E82]]
defaults write 'com.apple.finder' NewWindowTarget -string PfHm && killall Finder
# 85E615B8-24C6-4819-B437-BB1ED2384E82 ends here

# [[file:provisioning.org::FB3EFB97-6BEC-4BE4-B8D5-8EACD289CE66][FB3EFB97-6BEC-4BE4-B8D5-8EACD289CE66]]
defaults write 'com.apple.finder' FXDefaultSearchScope -string SCcf && killall Finder
# FB3EFB97-6BEC-4BE4-B8D5-8EACD289CE66 ends here

# [[file:provisioning.org::5F5E19CE-ECA4-4633-8C67-299C2237C7E2][5F5E19CE-ECA4-4633-8C67-299C2237C7E2]]
defaults write 'com.apple.finder' AppleShowAllFiles -bool true && killall Finder
# 5F5E19CE-ECA4-4633-8C67-299C2237C7E2 ends here

# [[file:provisioning.org::7C10B346-5B87-456F-B424-1ED79C2ADE2B][7C10B346-5B87-456F-B424-1ED79C2ADE2B]]
defaults write 'com.apple.finder' AppleShowAllExtensions -bool true && killall Finder
# 7C10B346-5B87-456F-B424-1ED79C2ADE2B ends here

# [[file:provisioning.org::69400DBC-BA03-4CB4-B724-BA22C070CB2B][69400DBC-BA03-4CB4-B724-BA22C070CB2B]]
defaults write 'com.apple.finder' ShowPathbar -bool true && killall Finder
# 69400DBC-BA03-4CB4-B724-BA22C070CB2B ends here

# [[file:provisioning.org::6D032485-D6D0-47A4-9B14-06FE6FC0CB80][6D032485-D6D0-47A4-9B14-06FE6FC0CB80]]
defaults write 'com.apple.finder' ShowStatusBar -bool true && killall Finder
# 6D032485-D6D0-47A4-9B14-06FE6FC0CB80 ends here

# [[file:provisioning.org::38B74BA0-FFCD-4E46-A1F0-BA839DF631DB][38B74BA0-FFCD-4E46-A1F0-BA839DF631DB]]
defaults write 'NSGlobalDomain' NSTableViewDefaultSizeMode -bool true && killall Finder
# 38B74BA0-FFCD-4E46-A1F0-BA839DF631DB ends here

# [[file:provisioning.org::17D25945-67E7-4F54-9DAA-C23FD89A2758][17D25945-67E7-4F54-9DAA-C23FD89A2758]]
defaults write 'com.apple.Finder' FXPreferredViewStyle Nlsv && killall Finder
# 17D25945-67E7-4F54-9DAA-C23FD89A2758 ends here

# [[file:provisioning.org::49C95048-C7D9-4E7C-BAAE-5D78181FF112][49C95048-C7D9-4E7C-BAAE-5D78181FF112]]
defaults write com.apple.finder FXPreferredGroupBy -string "None"
# 49C95048-C7D9-4E7C-BAAE-5D78181FF112 ends here

# [[file:provisioning.org::C3E4AFE6-5FB1-4432-B53C-933D83B3BA48][C3E4AFE6-5FB1-4432-B53C-933D83B3BA48]]
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:columns:4:ascending true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:columns:kind:ascending true" ~/Library/Preferences/com.apple.finder.plist
# C3E4AFE6-5FB1-4432-B53C-933D83B3BA48 ends here

# [[file:provisioning.org::AF8A02A4-CFFC-4740-A6E9-3341F912906A][AF8A02A4-CFFC-4740-A6E9-3341F912906A]]
defaults write com.apple.finder DisableAllAnimations -bool true
# AF8A02A4-CFFC-4740-A6E9-3341F912906A ends here

# [[file:provisioning.org::5F9ED39D-B319-46AE-B64F-F8CCE66C14CB][5F9ED39D-B319-46AE-B64F-F8CCE66C14CB]]
defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
# 5F9ED39D-B319-46AE-B64F-F8CCE66C14CB ends here

# [[file:provisioning.org::A73210E6-B619-4523-BD19-A5F8951E8495][A73210E6-B619-4523-BD19-A5F8951E8495]]
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# A73210E6-B619-4523-BD19-A5F8951E8495 ends here

# [[file:provisioning.org::E99413DF-0D11-4824-873D-3514F9333D6E][E99413DF-0D11-4824-873D-3514F9333D6E]]
defaults write com.apple.screencapture disable-shadow -bool true
# E99413DF-0D11-4824-873D-3514F9333D6E ends here

# [[file:provisioning.org::EE876749-BDB9-466F-A0FC-567EBBF9C5C2][EE876749-BDB9-466F-A0FC-567EBBF9C5C2]]
defaults write 'com.apple.screencapture' type -string png && killall SystemUIServer
# EE876749-BDB9-466F-A0FC-567EBBF9C5C2 ends here

# [[file:provisioning.org::66472988-E3AE-44D0-9423-17E9FEA0F5F1][66472988-E3AE-44D0-9423-17E9FEA0F5F1]]
defaults write 'NSGlobalDomain' AppleFontSmoothing -int 2
# 66472988-E3AE-44D0-9423-17E9FEA0F5F1 ends here

# [[file:provisioning.org::598BE517-CC5C-4D99-AD0B-41D2D906E376][598BE517-CC5C-4D99-AD0B-41D2D906E376]]
mkdir -p ~/Screen\ Shots
defaults write com.apple.screencapture location ~/Screen\ Shots
# 598BE517-CC5C-4D99-AD0B-41D2D906E376 ends here

# [[file:provisioning.org::446CE2EF-BCBE-4D83-9ACC-2A1E2F91C64B][446CE2EF-BCBE-4D83-9ACC-2A1E2F91C64B]]
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
# 446CE2EF-BCBE-4D83-9ACC-2A1E2F91C64B ends here

# [[file:provisioning.org::FF4E8A69-A137-4E50-A4E4-59DA58A082B5][FF4E8A69-A137-4E50-A4E4-59DA58A082B5]]
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
# FF4E8A69-A137-4E50-A4E4-59DA58A082B5 ends here

# [[file:provisioning.org::6A561511-8354-408E-8805-201BAAE80A04][6A561511-8354-408E-8805-201BAAE80A04]]
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0
# 6A561511-8354-408E-8805-201BAAE80A04 ends here

# [[file:provisioning.org::7C9DE1C5-BBF8-4D40-8FAC-E78D5B85231E][7C9DE1C5-BBF8-4D40-8FAC-E78D5B85231E]]
defaults write com.apple.dock wvous-bl-corner -int 3
defaults write com.apple.dock wvous-bl-modifier -int 0
# 7C9DE1C5-BBF8-4D40-8FAC-E78D5B85231E ends here

# [[file:provisioning.org::77191228-16CC-4B95-A030-A5C2DF90CD50][77191228-16CC-4B95-A030-A5C2DF90CD50]]
# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Set edge-dragging delay to 0.7
defaults write com.apple.dock workspaces-edge-delay -float 1.0
# 77191228-16CC-4B95-A030-A5C2DF90CD50 ends here

# [[file:provisioning.org::9B804905-E9D0-43BE-8106-DC53009C58C4][9B804905-E9D0-43BE-8106-DC53009C58C4]]
defaults write 'NSGlobalDomain' com.apple.mouse.scaling -float 2
# 9B804905-E9D0-43BE-8106-DC53009C58C4 ends here

# [[file:provisioning.org::9AF4BB62-76D4-4943-88FC-704A7BA492AC][9AF4BB62-76D4-4943-88FC-704A7BA492AC]]
defaults write com.apple.terminal StringEncodings -array 4
# 9AF4BB62-76D4-4943-88FC-704A7BA492AC ends here

# [[file:provisioning.org::BC6F1328-5EA2-4B1D-AC72-654D829BDB31][BC6F1328-5EA2-4B1D-AC72-654D829BDB31]]
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
# BC6F1328-5EA2-4B1D-AC72-654D829BDB31 ends here

# [[file:provisioning.org::81FD865B-E76D-4873-8C12-42C6194AB300][81FD865B-E76D-4873-8C12-42C6194AB300]]
defaults write com.apple.ActivityMonitor IconType -int 5
# 81FD865B-E76D-4873-8C12-42C6194AB300 ends here

# [[file:provisioning.org::F02FC4BB-0B04-4B8A-965C-71B181139FC8][F02FC4BB-0B04-4B8A-965C-71B181139FC8]]
defaults write com.apple.ActivityMonitor ShowCategory -int 0
# F02FC4BB-0B04-4B8A-965C-71B181139FC8 ends here

# [[file:provisioning.org::C2C6F54C-D4B7-4CBE-AF80-E45CE40C9A54][C2C6F54C-D4B7-4CBE-AF80-E45CE40C9A54]]
defaults write com.apple.ActivityMonitor SortDirection -int 0
# C2C6F54C-D4B7-4CBE-AF80-E45CE40C9A54 ends here
