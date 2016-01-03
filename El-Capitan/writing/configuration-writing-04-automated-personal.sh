# [[file:next.org::*Git%20Setup][B807D882-CDAB-4029-9FFE-FB967D0DB38F]]
set -x
# B807D882-CDAB-4029-9FFE-FB967D0DB38F ends here

# [[file:next.org::*Git%20Setup][41FF7AA3-8273-4281-A7E8-C60B048723D4]]
rm -rf ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -N '' -t rsa -C "gcr@wisdomandwonder.com" -f orion_gcr_rsa
# 41FF7AA3-8273-4281-A7E8-C60B048723D4 ends here

# [[file:next.org::*Git%20Setup][298B36CF-28A0-45CC-BACF-787EAB06F348]]
chmod 600 ~/.ssh/orion_gcr_rsa
chmod 600 ~/.ssh/orion_gcr_rsa.pub
ssh-add -K ~/.ssh/orion_gcr_rsa
# 298B36CF-28A0-45CC-BACF-787EAB06F348 ends here

# [[file:next.org::*Git%20Setup][53F16E84-34DC-48D1-998C-B9214B32AD1E]]
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
# 53F16E84-34DC-48D1-998C-B9214B32AD1E ends here

# [[file:next.org::*Git%20Setup][3934CA71-20AE-4136-AB57-1DEF8EBC0ADB]]
cat ~/.ssh/orion_gcr_rsa.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."
# 3934CA71-20AE-4136-AB57-1DEF8EBC0ADB ends here

# [[file:next.org::*Git%20Setup][70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F]]
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
# 70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F ends here

# [[file:next.org::*Git%20Setup][07933181-5F02-43CB-9DF8-232DA213E4BB]]
ssh -T github-grettke
read -p "Did it work? If not, fix it."
# 07933181-5F02-43CB-9DF8-232DA213E4BB ends here

# [[file:next.org::*Git%20Setup][66DAC891-FB97-48A8-9C8B-0292095F13A6]]
ssh -T bitbucket-grettke
read -p "Did it work? If not, fix it."
# 66DAC891-FB97-48A8-9C8B-0292095F13A6 ends here

# [[file:next.org::*Git%20Setup][C85D0036-9DDA-4786-9621-470FB418BBD6]]
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

# [[file:next.org::*Git%20Setup][5BD1669B-8E2A-46B5-AB80-88DA5764DEEB]]
rm -rf ~/git/bitbucket
rm -rf ~/git/github
rm -rf ~/src/help
mkdir -p ~/git/bitbucket
mkdir -p ~/git/github
cd ~/git/bitbucket
git clone bitbucket-grettke:grettke/list.git
git clone bitbucket-grettke:grettke/resume.git
git clone bitbucket-grettke:grettke/notes.git
git clone bitbucket-grettke:grettke/signature.git
git clone bitbucket-grettke:grettke/grant-personal.git
git clone bitbucket-grettke:grettke/correspondence.git
git clone bitbucket-grettke:grettke/texmf.git
cd ~/git/github
git clone github-grettke:grettke/osx-provision.git
cd ~/git/github-anonq
git clone https://github.com/bkuhlmann/osx
git clone https://github.com/monfresh/laptop
cd ~/src
git clone github-grettke:grettke/help.git
# 5BD1669B-8E2A-46B5-AB80-88DA5764DEEB ends here

# [[file:next.org::*TeX][4053A83F-EA3D-4431-AA4A-62336DF2F95E]]
set -x
ls /usr/local/texlive/2015
sudo cp /usr/local/texlive/2015/texmf.cnf /usr/local/texlive/2015/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
ls /usr/local/texlive/2015
sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
# 4053A83F-EA3D-4431-AA4A-62336DF2F95E ends here

# [[file:next.org::*TeX][34890901-8E9D-46E5-9738-2718CD26908E]]
kpsewhich KomaDefault.lco
# 34890901-8E9D-46E5-9738-2718CD26908E ends here

# [[file:next.org::*TeX][008DCE01-EE0D-4A96-93A5-7B6E91D7C951]]
sudo mktexlsr
# 008DCE01-EE0D-4A96-93A5-7B6E91D7C951 ends here
