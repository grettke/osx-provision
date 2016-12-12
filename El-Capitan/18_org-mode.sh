# [[file:provisioning.org::916D6512-03E7-4971-8BAC-53D6FA258BBD][916D6512-03E7-4971-8BAC-53D6FA258BBD]]
rm -rf ~/src/org-mode
rm -rf ~/src/org2blog
rm -rf ~/src/use-package
cd ~/src
echo `date +%Y-%m-%dT%H:%M:%S%z`
git clone git://orgmode.org/org-mode.git
echo `date +%Y-%m-%dT%H:%M:%S%z`
cd org-mode
make autoloads
cd ~/src
git clone git@github.com:punchagan/org2blog.git
git clone https://github.com/jwiegley/use-package.git
# 916D6512-03E7-4971-8BAC-53D6FA258BBD ends here
