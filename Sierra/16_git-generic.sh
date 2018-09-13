# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_55FC3852-A687-4430-9F57-BB871B1AE9C7][org_gcr_2017-05-12_mara_55FC3852-A687-4430-9F57-BB871B1AE9C7]]
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
# org_gcr_2017-05-12_mara_55FC3852-A687-4430-9F57-BB871B1AE9C7 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_3F6EFEBA-1E8A-46D8-AC65-4E0948C1EF86][org_gcr_2017-05-12_mara_3F6EFEBA-1E8A-46D8-AC65-4E0948C1EF86]]
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
# org_gcr_2017-05-12_mara_3F6EFEBA-1E8A-46D8-AC65-4E0948C1EF86 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_2A10A4BD-3F69-43B0-98CF-F5217F12E427][org_gcr_2017-05-12_mara_2A10A4BD-3F69-43B0-98CF-F5217F12E427]]
rm -rf ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
echo "What email address would you like to use for this SSH key?"
read SSHEMAIL
echo "What logical name, organization, or group name? For example: gitlab"
read SSHORG
SSHID=`whoami`-`hostname`
SSHUID=$SSHID-$SSHORG-`date '+%Y_%m_%d_%H_%M_%S'`
SSHFILE=$SSHUID-rsa
ssh-keygen -N '' -t rsa -C $SSHEMAIL -f $SSHFILE
# org_gcr_2017-05-12_mara_2A10A4BD-3F69-43B0-98CF-F5217F12E427 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_4DAD3656-07C1-4832-A45F-8712D9643B3E][org_gcr_2017-05-12_mara_4DAD3656-07C1-4832-A45F-8712D9643B3E]]
chmod 600 ~/.ssh/$SSHFILE
chmod 600 ~/.ssh/$SSHFILE.pub
ssh-add -K ~/.ssh/$SSHFILE
# org_gcr_2017-05-12_mara_4DAD3656-07C1-4832-A45F-8712D9643B3E ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_DCEFE0DD-F891-4909-AB33-C8BC4A4B6D68][org_gcr_2017-05-12_mara_DCEFE0DD-F891-4909-AB33-C8BC4A4B6D68]]
echo "Name your Git site key: $SSHFILE"
cat ~/.ssh/$SSHFILE.pub | pbcopy
read -p
"The new key is in your clipboard. Go and add this key to BitBucket, GitHub and GitLab. When you are finished, hit [enter] to continue."
# org_gcr_2017-05-12_mara_DCEFE0DD-F891-4909-AB33-C8BC4A4B6D68 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_D7361B03-DEA4-40C7-A44A-CCE122078DF6][org_gcr_2017-05-12_mara_D7361B03-DEA4-40C7-A44A-CCE122078DF6]]
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
# org_gcr_2017-05-12_mara_D7361B03-DEA4-40C7-A44A-CCE122078DF6 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_7DF422E7-EF5D-4D66-841A-F55AE00F0554][org_gcr_2017-05-12_mara_7DF422E7-EF5D-4D66-841A-F55AE00F0554]]
ssh -T bitbucket-`whoami`
read -p "Did it work? If not, fix it. [hit enter to continue]"
# org_gcr_2017-05-12_mara_7DF422E7-EF5D-4D66-841A-F55AE00F0554 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_D580852C-DEE2-4EB4-A4A0-B7EF0262EB27][org_gcr_2017-05-12_mara_D580852C-DEE2-4EB4-A4A0-B7EF0262EB27]]
ssh -T gitlab-`whoami`
read -p "Did it work? If not, fix it. [hit enter to continue]"
# org_gcr_2017-05-12_mara_D580852C-DEE2-4EB4-A4A0-B7EF0262EB27 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_CA0BFC40-D793-455D-98EA-CF40A940E003][org_gcr_2017-05-12_mara_CA0BFC40-D793-455D-98EA-CF40A940E003]]
ssh -T github-`whoami`
read -p "Did it work? If not, fix it. [hit enter to continue]"
# org_gcr_2017-05-12_mara_CA0BFC40-D793-455D-98EA-CF40A940E003 ends here
