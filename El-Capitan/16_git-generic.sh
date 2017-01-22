# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::53F16E84-34DC-48D1-998C-B9214B32AD1E][53F16E84-34DC-48D1-998C-B9214B32AD1E]]
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
# 53F16E84-34DC-48D1-998C-B9214B32AD1E ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:vela:AD6DEA88-0EB1-4B7C-A2C6-E27C0EC92604][orgmode:gcr:vela:AD6DEA88-0EB1-4B7C-A2C6-E27C0EC92604]]
echo ""
echo "With your help I configure SSH for you"
echo ""
echo "First I =rm -rf ~/.ssh= *destroying* your entire SSH configuration"
echo "Second I create a public and private keypair"
echo "Third I create a config file for Github and Bitbuccket"
echo "Fourth you upload your public SSH key both to Github and Bitbucket"
echo "Fifth I test each connection out and let you know if it worked"
echo ""
echo "Then again maybe you *don't want me to do any of that*"
echo "Maybe you already ran this script want to *keep* it"
echo "Maybe you brought an existing config and key pair files with you"
echo "Doesn't make any difference... its completely hypothetical"
echo ""
echo "Time to choose:"

PS3="Your choice (press the corresonding number): "

bail="*Stop*. *Don’t*. *Get me outta here*. *Exit this script*."
stay="Yup. Gotcha. Do it. Run this script."
options=("$bail" "$stay")

select opt in "${options[@]}"
do
    case $opt in
        "$bail")
            echo "*Sayonara*"
            sleep 1
            exit
            ;;
        "$stay")
            echo "Gotcha. Running it."
            sleep 1
            break
            ;;
        *)
            echo "You're not getting outta here until you choose."
            ;;
    esac
done
# orgmode:gcr:vela:AD6DEA88-0EB1-4B7C-A2C6-E27C0EC92604 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::41FF7AA3-8273-4281-A7E8-C60B048723D4][41FF7AA3-8273-4281-A7E8-C60B048723D4]]
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

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::298B36CF-28A0-45CC-BACF-787EAB06F348][298B36CF-28A0-45CC-BACF-787EAB06F348]]
chmod 600 ~/.ssh/$SSHFILE
chmod 600 ~/.ssh/$SSHFILE.pub
ssh-add -K ~/.ssh/$SSHFILE
# 298B36CF-28A0-45CC-BACF-787EAB06F348 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::3934CA71-20AE-4136-AB57-1DEF8EBC0ADB][3934CA71-20AE-4136-AB57-1DEF8EBC0ADB]]
echo "Name your Git site key: $SSHFILE"
cat ~/.ssh/$SSHFILE.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket, GitLab and GitHub. When you are finished, hit [enter] to continue."
# 3934CA71-20AE-4136-AB57-1DEF8EBC0ADB ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F][70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F]]
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
Host gitlab-`whoami`
     HostName gitlab.com
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/$SSHFILE.pub
EOF
# 70D5D9F2-6CFC-4FB5-BC45-416B4ABA029F ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::66DAC891-FB97-48A8-9C8B-0292095F13A6][66DAC891-FB97-48A8-9C8B-0292095F13A6]]
ssh -T bitbucket-`whoami`
read -p "Did it work? If not, fix it. [hit enter to continue]"
# 66DAC891-FB97-48A8-9C8B-0292095F13A6 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::orgmode:gcr:2017-01-21:mara:42CE5B43-ED8C-473C-B8D0-C630181C15F5][orgmode:gcr:2017-01-21:mara:42CE5B43-ED8C-473C-B8D0-C630181C15F5]]
ssh -T gitlab-`whoami`
read -p "Did it work? If not, fix it. [hit enter to continue]"
# orgmode:gcr:2017-01-21:mara:42CE5B43-ED8C-473C-B8D0-C630181C15F5 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::07933181-5F02-43CB-9DF8-232DA213E4BB][07933181-5F02-43CB-9DF8-232DA213E4BB]]
ssh -T github-`whoami`
read -p "Did it work? If not, fix it. [hit enter to continue]"
# 07933181-5F02-43CB-9DF8-232DA213E4BB ends here
