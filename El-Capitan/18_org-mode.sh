# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A][org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A]]
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
# org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A ends here
