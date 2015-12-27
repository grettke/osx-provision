# [[file:provisioning.org::*Per%20Machine][291FDE06-DF44-4156-A013-B763A8727B00]]

set -x
read -p "Press [Enter] key to continue..."

echo "Enter machine name: "
read ivar
echo "You entered: $ivar"
sudo scutil --set ComputerName $ivar
sudo scutil --set HostName $ivar
sudo scutil --set LocalHostName $ivar
sudo defaults write 'com.apple.smb.server' NetBIOSName -string $ivar
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
