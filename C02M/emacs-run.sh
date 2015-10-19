brew cask install xquartz

brew cask install karabiner

brew cask install spectacle

brew cask install bartender

brew cask install growlnotify

brew install ccrypt

brew install aspell -all

brew cask install java

brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11

brew install emacs --cocoa --with-gnutls --with-imagemagick
brew linkapps

ln -s ~/git/github/help/.emacs.el ~/.emacs.el
ln -s ~/git/bitbucket/alec/.aspell.en.pws ~/.aspell.en.pws
ln -s ~/git/bitbucket/alec/.aspell.en.prepl ~/.aspell.en.prepl

mkdir ~/.emacs.d
ln -s ~/git/github/help/eshell/ ~/.emacs.d/eshell
