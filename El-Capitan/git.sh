set -x

brew install git

mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -N '' -t rsa -C "gcr@wisdomandwonder.com" -f orion_gcr_rsa

chmod 600 ~/.ssh/orion_gcr_rsa
chmod 600 ~/.ssh/orion_gcr_rsa.pub
ssh-add -K ~/.ssh/orion_gcr_rsa

echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

cat ~/.ssh/orion_gcr_rsa.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."

cat > ~/.ssh/config << EOF
Host github-grettke
     HostName github.com
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/orion_gcr_rsa.pub
Host bitbucket-grettke
     HostName bitbucket.org
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/orion_gcr_rsa.pub
EOF

ssh -T github-grettke
read -p "Did it work? If not, fix it."

ssh -T bitbucket-grettke
read -p "Did it work? If not, fix it."

git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global core.editor vi
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd=/Applications/DeltaWalker.app/Contents/MacOS/git-diff $
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd=/Applications/DeltaWalker.app/Contents/MacOS/git-merge $LOCAL $REMOTE $BASE $MERGED
git config --global mergetool.keepBackup false

mkdir -p ~/git/bitbucket
mkdir -p ~/git/github
mkdir -p ~/git/github-anon
mkdir -p ~/src
cd ~/git/bitbucket
git clone bitbucket-grettke:grettke/alec.git
git clone bitbucket-grettke:grettke/list.git
git clone bitbucket-grettke:grettke/hardware.git
git clone bitbucket-grettke:grettke/resume.git
git clone bitbucket-grettke:grettke/rule-engine-notes.git
git clone bitbucket-grettke:grettke/notes.git
git clone bitbucket-grettke:grettke/signature.git
git clone bitbucket-grettke:grettke/grant-personal.git
git clone bitbucket-grettke:grettke/cover-letter.git
git clone bitbucket-grettke:grettke/correspondence.git
git clone bitbucket-grettke:grettke/texmf.git
git clone bitbucket-grettke:grettke/sas.git
cd ~/git/github
git clone github-grettke:grettke/home.git
git clone github-grettke:grettke/kitchenplan.gi
git clone github-grettke:grettke/stathon.git
git clone github-grettke:grettke/osx-provision.git
cd ~/git/github
git clone github-grettke:tomislav/osx-terminal.app-colors-solarized.git
cd ~/src
git clone github-grettke:grettke/help.git
