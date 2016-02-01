# [[file:provisioning.org::*Generic][41FF7AA3-8273-4281-A7E8-C60B048723D4]]
rm -rf ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
echo "What email address would you like to use for this SSH key?"
read SSHEMAIL
SSHID=`whoami`-`hostname`
SSHUID=$SSHID-`date '+%Y_%m_%d_%H_%M_%S'`
SSHFILE=$SSHUID-rsa
ssh-keygen -N '' -t rsa -C $SSHEMAIL -f $SSHFILE
# 41FF7AA3-8273-4281-A7E8-C60B048723D4 ends here

# [[file:provisioning.org::*Generic][298B36CF-28A0-45CC-BACF-787EAB06F348]]
chmod 600 ~/.ssh/$SSHFILE
chmod 600 ~/.ssh/$SSHFILE.pub
ssh-add -K ~/.ssh/$SSHFILE
# 298B36CF-28A0-45CC-BACF-787EAB06F348 ends here

# [[file:provisioning.org::*Generic][53F16E84-34DC-48D1-998C-B9214B32AD1E]]
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
# 53F16E84-34DC-48D1-998C-B9214B32AD1E ends here

# [[file:provisioning.org::*Generic][3934CA71-20AE-4136-AB57-1DEF8EBC0ADB]]
echo "Name your Git site key: $SSHFILE"
cat ~/.ssh/$SSHFILE.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."
# 3934CA71-20AE-4136-AB57-1DEF8EBC0ADB ends here

# [[file:provisioning.org::*Generic][70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F]]
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
# 70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F ends here

# [[file:provisioning.org::*Generic][07933181-5F02-43CB-9DF8-232DA213E4BB]]
ssh -T github-`whoami`
read -p "Did it work? If not, fix it."
# 07933181-5F02-43CB-9DF8-232DA213E4BB ends here

# [[file:provisioning.org::*Generic][66DAC891-FB97-48A8-9C8B-0292095F13A6]]
ssh -T bitbucket-`whoami`
read -p "Did it work? If not, fix it."
# 66DAC891-FB97-48A8-9C8B-0292095F13A6 ends here
