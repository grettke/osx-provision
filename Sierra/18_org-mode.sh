# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A][org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A]]
rm -rf ~/src/org-mode
cd ~/src
echo `date +%Y-%m-%dT%H:%M:%S%z`
git clone https://code.orgmode.org/bzg/org-mode.git
cd org-mode
git fetch && git fetch --tags
echo `date +%Y-%m-%dT%H:%M:%S%z`
git checkout release_9.0.9
mk autoloads
# org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A ends here
