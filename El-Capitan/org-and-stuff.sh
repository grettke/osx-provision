# [[file:provisioning.org::*Install%20Org%20Mode%20and%20supporting%20stuff%20per%20HELP][916D6512-03E7-4971-8BAC-53D6FA258BBD]]
set -x
rm -rf ~/src/org-mode
rm -rf ~/src/org2blog
rm -rf ~/src/use-package
cd ~/src
git clone git://orgmode.org/org-mode.git
cd org-mode
emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
cd ~/src
git clone github-grettke:punchagan/org2blog.git
cd ~/src
git clone https://github.com/jwiegley/use-package.git
# 916D6512-03E7-4971-8BAC-53D6FA258BBD ends here
