# [[file:provisioning.org::C85D0036-9DDA-4786-9621-470FB418BBD6][C85D0036-9DDA-4786-9621-470FB418BBD6]]
git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd '/opt/homebrew-cask/Caskroom/deltawalker/2.1.2/DeltaWalker.app/Contents/MacOS/git-diff $LOCAL $REMOTE'
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd '/opt/homebrew-cask/Caskroom/deltawalker/2.1.2/DeltaWalker.app/Contents/MacOS/git-merge $LOCAL $REMOTE $BASE $MERGED'
git config --global mergetool.keepBackup false
# C85D0036-9DDA-4786-9621-470FB418BBD6 ends here

# [[file:provisioning.org::5BD1669B-8E2A-46B5-AB80-88DA5764DEEB][5BD1669B-8E2A-46B5-AB80-88DA5764DEEB]]
rm -rf ~/git/bitbucket
rm -rf ~/git/github
rm -rf ~/src/help
mkdir -p ~/git/bitbucket
mkdir -p ~/git/github
cd ~/git/bitbucket
git clone bitbucket-`whoami`:grettke/list.git
git clone bitbucket-`whoami`:grettke/resume.git
git clone bitbucket-`whoami`:grettke/notes.git
git clone bitbucket-`whoami`:grettke/signature.git
git clone bitbucket-`whoami`:grettke/grant-personal.git
git clone bitbucket-`whoami`:grettke/correspondence.git
git clone bitbucket-`whoami`:grettke/wnw.git
git clone bitbucket-`whoami`:grettke/texmf.git
git clone bitbucket-`whoami`:grettke/hardware
git clone bitbucket-`whoami`:grettke/tracking01
cd ~/git/github
git clone github-`whoami`:grettke/osx-provision.git
git clone github-`whoami`:grettke/bash.git
git clone github-`whoami`:grettke/wisdomandwonder.git
git clone github-`whoami`:grettke/home.git
# 5BD1669B-8E2A-46B5-AB80-88DA5764DEEB ends here

# [[file:provisioning.org::F407E69A-6C92-4254-A0E3-A442166AD57B][F407E69A-6C92-4254-A0E3-A442166AD57B]]
cd ~/git/github-anonymous
rm -rf ~/src
mkdir ~/src
cd ~/src
git clone github-`whoami`:grettke/help.git
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
# F407E69A-6C92-4254-A0E3-A442166AD57B ends here
