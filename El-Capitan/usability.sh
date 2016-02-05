# [[file:provisioning.org::*karabiner][F1B1D8B4-662F-4DD2-8C02-CE51CFF862E0]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install karabiner
else
    echo "karabiner: Only install on hosts"
fi
# F1B1D8B4-662F-4DD2-8C02-CE51CFF862E0 ends here

# [[file:provisioning.org::*Spectacle][944FB8AE-DD79-49C6-8ABC-878A782234BE]]
brew cask install spectacle
# 944FB8AE-DD79-49C6-8ABC-878A782234BE ends here

# [[file:provisioning.org::*Little%20Snitch][0A6CDD3C-BB1F-4AB1-8523-C4F5383A6856]]
brew cask install little-snitch
# 0A6CDD3C-BB1F-4AB1-8523-C4F5383A6856 ends here

# [[file:provisioning.org::*Bartender][1483E8B6-098B-4793-91BD-F5081B2F76ED]]
brew cask install bartender
# 1483E8B6-098B-4793-91BD-F5081B2F76ED ends here

# [[file:provisioning.org::*flux][17B2744A-477B-4E79-A152-D1D43E8FB030]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install flux
else
    echo "flux: Only install on hosts"
fi
# 17B2744A-477B-4E79-A152-D1D43E8FB030 ends here

# [[file:provisioning.org::*xquartz][442A6B4B-C210-4436-B0AE-F571D3F75B01]]
brew cask install xquartz
# 442A6B4B-C210-4436-B0AE-F571D3F75B01 ends here

# [[file:provisioning.org::*Tuxera%20NTFS][F09F391E-0A25-4B8D-B70F-6FD35A103D95]]
brew cask install tuxera-ntfs
# F09F391E-0A25-4B8D-B70F-6FD35A103D95 ends here
