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

# [[file:provisioning.org::*VirtualBox][0B6E9298-89D3-40D5-83F1-9F2DC21590E8]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install virtualbox
    brew cask install virtualbox-extension-pack

else
    echo "virtualbox: Only install on hosts"
fi
# 0B6E9298-89D3-40D5-83F1-9F2DC21590E8 ends here

# [[file:provisioning.org::*Vagrant][165A046E-FFC9-4431-8150-CF9F4890EA24]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install vagrant
else
    echo "vagrant: Only install on hosts"
fi
# 165A046E-FFC9-4431-8150-CF9F4890EA24 ends here
