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
    vagrant plugin install vagrant-digitalocean
else
    echo "vagrant: Only install on hosts"
fi
# 165A046E-FFC9-4431-8150-CF9F4890EA24 ends here

# [[file:provisioning.org::*Packer][5C1B39F1-FC9C-4992-B891-D6208168D5F1]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install packer
else
    echo "packer: Only install on hosts"
fi
# 5C1B39F1-FC9C-4992-B891-D6208168D5F1 ends here

# [[file:provisioning.org::*iPartition][D7F9F051-BE46-4E38-BE35-6E8CE4B5D727]]
brew cask install ipartition
# D7F9F051-BE46-4E38-BE35-6E8CE4B5D727 ends here
