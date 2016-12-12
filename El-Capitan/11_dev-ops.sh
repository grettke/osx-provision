# [[file:provisioning.org::orgmode:gcr:vela:5696A7AC-7227-49AA-9DDB-902BC6722018][orgmode:gcr:vela:5696A7AC-7227-49AA-9DDB-902BC6722018]]
#+BEGIN_SRC sh
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    carbon-copy-cloner
else
    echo "carbon-copy-cloner: Only install on hosts"
fi
# orgmode:gcr:vela:5696A7AC-7227-49AA-9DDB-902BC6722018 ends here

# [[file:provisioning.org::2B059288-F12E-48E1-939F-1138117FDE4B][2B059288-F12E-48E1-939F-1138117FDE4B]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install vmware-fusion
else
    echo "vmware-fusion: Only install on hosts"
fi
# 2B059288-F12E-48E1-939F-1138117FDE4B ends here

# [[file:provisioning.org::0B6E9298-89D3-40D5-83F1-9F2DC21590E8][0B6E9298-89D3-40D5-83F1-9F2DC21590E8]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install virtualbox
    brew cask install virtualbox-extension-pack

else
    echo "virtualbox: Only install on hosts"
fi
# 0B6E9298-89D3-40D5-83F1-9F2DC21590E8 ends here

# [[file:provisioning.org::165A046E-FFC9-4431-8150-CF9F4890EA24][165A046E-FFC9-4431-8150-CF9F4890EA24]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install vagrant
    vagrant plugin install vagrant-digitalocean
else
    echo "vagrant: Only install on hosts"
fi
# 165A046E-FFC9-4431-8150-CF9F4890EA24 ends here

# [[file:provisioning.org::5C1B39F1-FC9C-4992-B891-D6208168D5F1][5C1B39F1-FC9C-4992-B891-D6208168D5F1]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install packer
else
    echo "packer: Only install on hosts"
fi
# 5C1B39F1-FC9C-4992-B891-D6208168D5F1 ends here

# [[file:provisioning.org::D7F9F051-BE46-4E38-BE35-6E8CE4B5D727][D7F9F051-BE46-4E38-BE35-6E8CE4B5D727]]
brew cask install ipartition
# D7F9F051-BE46-4E38-BE35-6E8CE4B5D727 ends here
