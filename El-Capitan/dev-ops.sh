# [[file:provisioning.org::*Carbon%20Copy%20Cloner][27354A58-46C4-426B-8483-A96F7B63342D]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install carbon-copy-cloner
else
    echo "carbon-copy-cloner: Only install on hosts"
fi
# 27354A58-46C4-426B-8483-A96F7B63342D ends here

# [[file:provisioning.org::*VMWare%20Fusion][2B059288-F12E-48E1-939F-1138117FDE4B]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install vmware-fusion
else
    echo "vmware-fusion: Only install on hosts"
fi
# 2B059288-F12E-48E1-939F-1138117FDE4B ends here

# [[file:provisioning.org::*Vagrant][165A046E-FFC9-4431-8150-CF9F4890EA24]]
brew cask install vagrant
# 165A046E-FFC9-4431-8150-CF9F4890EA24 ends here
