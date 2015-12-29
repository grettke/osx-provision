# [[file:provisioning.org::*Dotfiles][C86B35D4-0009-499F-A779-5E148FF231FB]]
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm ~/.aspell.en.pws
ln -s ~/git/bitbucket/list/.aspell.en.pws ~/.aspell.en.pws
rm ~/.aspell.en.prepl
ln -s ~/git/bitbucket/list/.aspell.en.prepl ~/.aspell.en.prepl
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
# C86B35D4-0009-499F-A779-5E148FF231FB ends here
