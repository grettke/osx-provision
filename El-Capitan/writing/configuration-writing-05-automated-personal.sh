# [[file:../provisioning.org::*Git%20Setup][C85D0036-9DDA-4786-9621-470FB418BBD6]]
git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/MacOS/git-diff $LOCAL $REMOTE'
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/MacOS/git-merge $LOCAL $REMOTE $BASE $MERGED'
git config --global mergetool.keepBackup false
# C85D0036-9DDA-4786-9621-470FB418BBD6 ends here

# [[file:../provisioning.org::*Git%20Setup][5BD1669B-8E2A-46B5-AB80-88DA5764DEEB]]
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
cd ~/git/github
git clone github-`whoami`:grettke/osx-provision.git
git clone github-`whoami`:grettke/bash.git
cd ~/git/github-anonymous
git clone https://github.com/bkuhlmann/osx
git clone https://github.com/monfresh/laptop
cd ~/src
git clone github-`whoami`:grettke/help.git
# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::*Link%20Files%20and%20Folders][567603FF-8A5F-4E06-939C-8D21D60AD4ED]]
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
# 567603FF-8A5F-4E06-939C-8D21D60AD4ED ends here
# 5BD1669B-8E2A-46B5-AB80-88DA5764DEEB ends here

# [[file:../provisioning.org::*TeX][4053A83F-EA3D-4431-AA4A-62336DF2F95E]]
set -x
ls /usr/local/texlive/2015
sudo cp /usr/local/texlive/2015/texmf.cnf /usr/local/texlive/2015/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
ls /usr/local/texlive/2015
sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
# 4053A83F-EA3D-4431-AA4A-62336DF2F95E ends here

# [[file:../provisioning.org::*TeX][34890901-8E9D-46E5-9738-2718CD26908E]]
kpsewhich KomaDefault.lco
# 34890901-8E9D-46E5-9738-2718CD26908E ends here

# [[file:../provisioning.org::*TeX][008DCE01-EE0D-4A96-93A5-7B6E91D7C951]]
sudo mktexlsr
# 008DCE01-EE0D-4A96-93A5-7B6E91D7C951 ends here
