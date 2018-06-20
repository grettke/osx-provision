# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A][org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A]]
rm -rf ~/src/xml-rpc-el
rm -rf ~/src/metaweblog
rm -rf ~/src/org-mode
rm -rf ~/src/org2blog
rm -rf ~/src/pretty-mode
rm -rf ~/src/use-package
rm -rf ~/src/reveal.js
rm -rf ~/src/go-hydra
rm -rf ~/src/emacs-batteries-included
rm -rf ~/src/solarized-emacs
cd ~/src
echo `date +%Y-%m-%dT%H:%M:%S%z`
git clone git://orgmode.org/org-mode.git
echo `date +%Y-%m-%dT%H:%M:%S%z`
cd org-mode
make autoloads
cd ~/src
git clone github-`whoami`:grettke/xml-rpc-el.git
git clone github-`whoami`:org2blog/metaweblog.git
git clone github-`whoami`:org2blog/org2blog.git
git clone github-`whoami`:grettke/pretty-mode.git
git clone https://github.com/jwiegley/use-package.git
git clone https://github.com/hakimel/reveal.js.git
git clone gitlab-`whoami`:grettke/go-hydra.git
git clone github-`whoami`:grettke/emacs-batteries-included.git
git clone github-`whoami`:grettke/solarized-emacs.git
# org_gcr_2017-05-12_mara_9ED0592E-A409-4049-BD98-DD5151723C1A ends here
