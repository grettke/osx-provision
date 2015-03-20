
# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -N '' -t rsa -C "gcr@wisdomandwonder.com" -f orion_gcr_rsa

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

chmod 600 ~/.ssh/orion_gcr_rsa
chmod 600 ~/.ssh/orion_gcr_rsa.pub
ssh-add -K ~/.ssh/orion_gcr_rsa

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

cat ~/.ssh/orion_gcr_rsa.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

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

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

ssh -T github-grettke
read -p "Did it work? If not, fix it."

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

ssh -T bitbucket-grettke
read -p "Did it work? If not, fix it."

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global core.editor vi
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global merge.tool diffmerge
git config --global mergetool.diffmerge.cmd "/usr/local/bin/diffmerge --merge --result=\$MERGED \$LOCAL \$BASE \$REMOTE"
git config --global mergetool.keepBackup false
git config --global diff.tool diffmerge
git config --global difftool.diffmerge.cmd "/usr/local/bin/diffmerge \$LOCAL \$REMOTE"

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

mkdir -p ~/git/bitbucket-grettke
mkdir -p ~/git/github-grettke
mkdir -p ~/git/github-anon
cd ~/git/bitbucket-grettke
git clone bitbucket-grettke:grettke/alec.git
git clone bitbucket-grettke:grettke/list.git
git clone bitbucket-grettke:grettke/hardware.git
git clone bitbucket-grettke:grettke/resume.git
git clone bitbucket-grettke:grettke/rule-engine-notes.git
cd ~/git/github-grettke
git clone github-grettke:grettke/home.git
git clone github-grettke:grettke/kitchenplan.gi
git clone github-grettke:grettke/stathon.git
git clone github-grettke:grettke/osx-provision.git
cd ~/git/github-anon
git clone git@github.com:tomislav/osx-terminal.app-colors-solarized.git

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

mkdir ~/tmp
cd ~/tmp
curl -O https://bootstrap.pypa.io/get-pip.py
sudo -H python ./get-pip.py

# Automated:1 ends here

# [[file:~/git/bitbucket-grettke/hardware/apple/macbookpro/c02m/provisioning.org::*Automated][Automated:1]]

sudo pip install GitPython==0.3.2.RC1

# Automated:1 ends here
