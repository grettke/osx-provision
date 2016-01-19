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
cd ~/git/github-anonymous
git clone https://github.com/bkuhlmann/osx
git clone https://github.com/monfresh/laptop
cd ~/src
git clone github-`whoami`:grettke/help.git
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
set -x
ls /usr/local/texlive/2015
sudo cp /usr/local/texlive/2015/texmf.cnf /usr/local/texlive/2015/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
ls /usr/local/texlive/2015
sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
kpsewhich KomaDefault.lco
sudo mktexlsr
