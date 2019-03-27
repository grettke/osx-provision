# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_3DA5AD9E-E1DD-4B4D-9CC3-A2894A312E13][org_gcr_2017-05-12_mara_3DA5AD9E-E1DD-4B4D-9CC3-A2894A312E13]]
#+BEGIN_SRC sh
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
  brew cask install carbon-copy-cloner
else
  echo "carbon-copy-cloner: Only install on hosts"
fi
# org_gcr_2017-05-12_mara_3DA5AD9E-E1DD-4B4D-9CC3-A2894A312E13 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_0E88C363-DC01-4894-AD2A-B826AEE96847][org_gcr_2017-05-12_mara_0E88C363-DC01-4894-AD2A-B826AEE96847]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
  brew cask install vmware-fusion
else
  echo "vmware-fusion: Only install on hosts"
fi
# org_gcr_2017-05-12_mara_0E88C363-DC01-4894-AD2A-B826AEE96847 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_411A8284-5DDC-45B4-A0D1-37EE4B6F6CC5][org_gcr_2017-05-12_mara_411A8284-5DDC-45B4-A0D1-37EE4B6F6CC5]]
brew cask install ipartition
# org_gcr_2017-05-12_mara_411A8284-5DDC-45B4-A0D1-37EE4B6F6CC5 ends here
