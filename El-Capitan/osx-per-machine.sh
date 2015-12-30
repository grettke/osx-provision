# [[file:provisioning.org::*Per%20Machine][C3D25C79-DF2D-4A1D-AE4F-16F20395AA95]]
set -x
read -p "Press [Enter] key to continue..."
# C3D25C79-DF2D-4A1D-AE4F-16F20395AA95 ends here

# [[file:provisioning.org::*Per%20Machine][291FDE06-DF44-4156-A013-B763A8727B00]]
sudo scutil --set HostName ""
echo "Enter HostName: "
read vhn
sudo scutil --set HostName $vhn
sudo scutil --set LocalHostName ""
echo "Enter LocalHostName: "
read vlhn
sudo scutil --set LocalHostName $vlhn
sudo defaults delete 'com.apple.smb.server' NetBIOSName
sudo defaults write 'com.apple.smb.server' NetBIOSName -string $vlhn
sudo scutil --set ComputerName ""
echo "Enter ComputerName: "
read vcn
sudo scutil --set ComputerName $cn
read -p "Press [Enter] key to continue..."
# 291FDE06-DF44-4156-A013-B763A8727B00 ends here

# [[file:provisioning.org::*Per%20Machine][2F39C8B9-CA25-4C94-8E77-AD348D5235A9]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
read -p "Press [Enter] key to continue..."
# 2F39C8B9-CA25-4C94-8E77-AD348D5235A9 ends here

# [[file:provisioning.org::*Per%20Machine][850816F3-B82E-4EE0-9895-6E99CB6A7593]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
All creativity is an extended form of a joke.
          — Alan Kay"
read -p "Press [Enter] key to continue..."
# 850816F3-B82E-4EE0-9895-6E99CB6A7593 ends here

# [[file:provisioning.org::*Per%20Machine][DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0]]
sudo spctl --master-disable
read -p "Press [Enter] key to continue..."
# DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0 ends here
