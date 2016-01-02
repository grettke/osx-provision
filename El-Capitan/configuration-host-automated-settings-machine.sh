# [[file:next.org::*Machine][41886902-0FB3-425B-B512-C1A160F8E3D6]]
# [[file:~/git/github/osx-provision/El-Capitan/next.org::*Machine][EB44FB31-2B26-436C-89F3-E58B59450F87]]
sudo -v
# EB44FB31-2B26-436C-89F3-E58B59450F87 ends here
# [[file:~/git/github/osx-provision/El-Capitan/next.org::*Machine][C3D25C79-DF2D-4A1D-AE4F-16F20395AA95]]
set -x
# C3D25C79-DF2D-4A1D-AE4F-16F20395AA95 ends here
# [[file:~/git/github/osx-provision/El-Capitan/next.org::*Machine][291FDE06-DF44-4156-A013-B763A8727B00]]
sudo scutil --set HostName ""
echo "Enter HostName (plain old hostname): "
read vhn
sudo scutil --set HostName $vhn
sudo scutil --set LocalHostName ""
echo "Enter LocalHostName (name for Bonjour services): "
read vlhn
sudo scutil --set LocalHostName $vlhn
sudo defaults delete 'com.apple.smb.server' NetBIOSName
read "Enter NetBIOSName (name that Windows boxes will see): "
read vnbn
sudo defaults write 'com.apple.smb.server' NetBIOSName -string $vnbn
sudo scutil --set ComputerName ""
echo "Enter ComputerName (human friendly GUI name): "
read vcn
sudo scutil --set ComputerName $cn
# 291FDE06-DF44-4156-A013-B763A8727B00 ends here
# [[file:~/git/github/osx-provision/El-Capitan/next.org::*Machine][2F39C8B9-CA25-4C94-8E77-AD348D5235A9]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
# 2F39C8B9-CA25-4C94-8E77-AD348D5235A9 ends here
# [[file:~/git/github/osx-provision/El-Capitan/next.org::*Machine][850816F3-B82E-4EE0-9895-6E99CB6A7593]]
sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
All creativity is an extended form of a joke.
          — Alan Kay"
# 850816F3-B82E-4EE0-9895-6E99CB6A7593 ends here
# [[file:~/git/github/osx-provision/El-Capitan/next.org::*Machine][DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0]]
sudo spctl --master-disable
# DBE84671-1CC0-4DBA-AC7C-72F9EAC857A0 ends here
# 41886902-0FB3-425B-B512-C1A160F8E3D6 ends here
