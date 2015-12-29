# [[file:provisioning.org::*Emacs%20and%20supporting%20apps][34E00A11-AB89-4C94-B52E-7B4C94401252]]
brew cask install xquartz
read -p "Review the installation. Press return to continue."
brew cask install growlnotify
read -p "Review the installation. Press return to continue."
brew install ccrypt
read -p "Review the installation. Press return to continue."
brew install aspell -all
read -p "Review the installation. Press return to continue."
brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
read -p "Review the installation. Press return to continue."
brew install emacs --cocoa --with-gnutls --with-imagemagick
read -p "Review the installation. Press return to continue."
brew install graphviz
read -p "Review the installation. Press return to continue."
brew install pandoc
read -p "Review the installation. Press return to continue."
brew linkapps
# 34E00A11-AB89-4C94-B52E-7B4C94401252 ends here
