set -x
rm -rf ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
echo "What email address would you like to use for this SSH key?"
read SSHEMAIL
SSHID=`whoami`-`hostname`
SSHUID=$SSHID-`date '+%Y_%m_%d_%H_%M_%S'`
SSHFILE=$SSHUID-rsa
ssh-keygen -N '' -t rsa -C $SSHEMAIL -f $SSHFILE
chmod 600 ~/.ssh/$SSHFILE
chmod 600 ~/.ssh/$SSHFILE.pub
ssh-add -K ~/.ssh/$SSHFILE
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
echo "Name your Git site key: $SSHFILE"
cat ~/.ssh/$SSHFILE.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."
cat > ~/.ssh/config << EOF
Host github-`whoami`
     HostName github.com
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/$SSHFILE.pub
Host bitbucket-`whoami`
     HostName bitbucket.org
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/$SSHFILE.pub
EOF
ssh -T github-`whoami`
read -p "Did it work? If not, fix it."
ssh -T bitbucket-`whoami`
read -p "Did it work? If not, fix it."
