# [[file:next.org::*Download%20Org%20Mode][916D6512-03E7-4971-8BAC-53D6FA258BBD]]
set -x
rm -rf ~/src
cd ~/src
git clone git://orgmode.org/org-mode.git
cd org-mode
emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
cd ~/src
git clone git@github.com:punchagan/org2blog.git
git clone https://github.com/jwiegley/use-package.git
git clone https://github.com/grettke/help.git
# 916D6512-03E7-4971-8BAC-53D6FA258BBD ends here
