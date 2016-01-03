# [[file:next.org::*Link%20Files%20and%20Folders][567603FF-8A5F-4E06-939C-8D21D60AD4ED]]
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
# 567603FF-8A5F-4E06-939C-8D21D60AD4ED ends here
