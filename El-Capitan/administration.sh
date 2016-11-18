# [[file:provisioning.org::DB082535-A43F-46EA-9F1B-1BB6302CA396][DB082535-A43F-46EA-9F1B-1BB6302CA396]]
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# DB082535-A43F-46EA-9F1B-1BB6302CA396 ends here

# [[file:provisioning.org::5C68042B-9C59-42C9-9A7F-D625C0475C3A][5C68042B-9C59-42C9-9A7F-D625C0475C3A]]
brew tap caskroom/cask
# 5C68042B-9C59-42C9-9A7F-D625C0475C3A ends here

# [[file:provisioning.org::92F77AD1-E9DC-4740-B3A3-C6A3A4034068][92F77AD1-E9DC-4740-B3A3-C6A3A4034068]]
rm -rf ~/git/github-anonymous
mkdir -p ~/git/github-anonymous
cd ~/git/github-anonymous
# 92F77AD1-E9DC-4740-B3A3-C6A3A4034068 ends here

# [[file:provisioning.org::D94BB210-9FCF-4A63-825A-9353E2709654][D94BB210-9FCF-4A63-825A-9353E2709654]]
git clone https://github.com/grettke/bash.git
cd bash
./deploy
cd
# D94BB210-9FCF-4A63-825A-9353E2709654 ends here

# [[file:provisioning.org::ADE3737D-A638-4BBD-9DD5-C42681EA1C0D][ADE3737D-A638-4BBD-9DD5-C42681EA1C0D]]
echo $BASH_VERSION
brew install bash
if grep "/usr/local/bin/bash" /etc/shells > /dev/null; then
    echo "brew bash already configured in shells; doing nothing"
else
    sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
    chsh -s /usr/local/bin/bash
fi
echo $BASH_VERSION
# ADE3737D-A638-4BBD-9DD5-C42681EA1C0D ends here

# [[file:provisioning.org::DD72394C-9D37-446C-A704-E88BE2B0CEED][DD72394C-9D37-446C-A704-E88BE2B0CEED]]
brew tap caskroom/fonts
# DD72394C-9D37-446C-A704-E88BE2B0CEED ends here

# [[file:provisioning.org::74BEB31B-9499-4144-B997-9E16B3FA24D9][74BEB31B-9499-4144-B997-9E16B3FA24D9]]
brew cask install font-dejavu-sans
brew cask install font-quivira
brew cask install font-noto-sans
brew cask install font-noto-sans-symbols
brew cask install font-symbola
brew cask install font-fontawesome
brew cask install font-montserrat
# 74BEB31B-9499-4144-B997-9E16B3FA24D9 ends here

# [[file:provisioning.org::A02C8B94-4717-42AA-8676-36D13B168BB6][A02C8B94-4717-42AA-8676-36D13B168BB6]]
brew cask install popchar
# A02C8B94-4717-42AA-8676-36D13B168BB6 ends here

# [[file:provisioning.org::429CCB8C-CFCF-40C9-87B5-03384D5DFE14][429CCB8C-CFCF-40C9-87B5-03384D5DFE14]]
rm -rf ~/git/github-anonymous/osx-terminal.app-colors-solarized
cd ~/git/github-anonymous
git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
# 429CCB8C-CFCF-40C9-87B5-03384D5DFE14 ends here

# [[file:provisioning.org::716756F8-6497-4367-9330-9A578AC31AA6][716756F8-6497-4367-9330-9A578AC31AA6]]
brew install fortune
# 716756F8-6497-4367-9330-9A578AC31AA6 ends here

# [[file:provisioning.org::A61A74A8-B361-4395-B9DE-E6F843166511][A61A74A8-B361-4395-B9DE-E6F843166511]]
cd ~/git/github-anonymous
git clone https://github.com/Homebrew/homebrew.git
git clone https://github.com/caskroom/homebrew-cask.git
# A61A74A8-B361-4395-B9DE-E6F843166511 ends here
