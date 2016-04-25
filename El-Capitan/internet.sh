# [[file:provisioning.org::*MPlayer%20OSX%20Extended][093814E5-DB0A-481C-9B39-ACF62216BB55]]
brew cask install mplayer-osx-extended
# 093814E5-DB0A-481C-9B39-ACF62216BB55 ends here

# [[file:provisioning.org::*Skype][D3411D0C-F38A-409F-8D6C-5A03AFEE9CCF]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install skype
else
    echo "skype: Only install on hosts"
fi
# D3411D0C-F38A-409F-8D6C-5A03AFEE9CCF ends here

# [[file:provisioning.org::*Dropbox][3F5B9D5C-F54B-4DE9-A9FC-64D5AFDF2C86]]
if [ ! -d "/Library/Application Support/VMware Tools" ]; then
    brew cask install dropbox
else
    echo "dropbox: Only install on hosts"
fi
# 3F5B9D5C-F54B-4DE9-A9FC-64D5AFDF2C86 ends here

# [[file:provisioning.org::*Chrome][63C6CF90-7C76-4260-A7A5-7786561B2A70]]
brew cask install google-chrome
# 63C6CF90-7C76-4260-A7A5-7786561B2A70 ends here

# [[file:provisioning.org::*Firefox][32D109DB-1554-40D5-B591-FCC2F922F903]]
brew cask install firefox
# 32D109DB-1554-40D5-B591-FCC2F922F903 ends here

# [[file:provisioning.org::*Opera][D852AD6F-DF45-4FF9-A391-954323438F96]]
brew cask install opera
# D852AD6F-DF45-4FF9-A391-954323438F96 ends here

# [[file:provisioning.org::*Slack][75569C81-CF17-482A-8EF3-53457897457C]]
brew cask install slack
# 75569C81-CF17-482A-8EF3-53457897457C ends here

# [[file:provisioning.org::*Kindle][B4E47A43-27D2-4478-821A-0E6C6138FB40]]
brew cask install kindle
# B4E47A43-27D2-4478-821A-0E6C6138FB40 ends here

# [[file:provisioning.org::*wget][59E4E9CA-178C-4901-9E02-F5D1CDE00BB4]]
brew install wget
# 59E4E9CA-178C-4901-9E02-F5D1CDE00BB4 ends here

# [[file:provisioning.org::*Screenflow][536ADA22-0876-44F9-A76D-57B961A7A8A0]]
brew cask install screenflow
# 536ADA22-0876-44F9-A76D-57B961A7A8A0 ends here

# [[file:provisioning.org::*inkscape][97116D0B-68F4-4E15-B06C-CD9EF99A084A]]
brew install homebrew/gui/inkscape
# 97116D0B-68F4-4E15-B06C-CD9EF99A084A ends here

# [[file:provisioning.org::*gimp][B9005B12-56A9-4AAF-ACF3-725C464B2D96]]
brew cask install gimp
# B9005B12-56A9-4AAF-ACF3-725C464B2D96 ends here

# [[file:provisioning.org::*FreeCAD][10A88007-A1AC-4866-A500-C3589478E2E8]]
brew cask install freecad
# 10A88007-A1AC-4866-A500-C3589478E2E8 ends here
