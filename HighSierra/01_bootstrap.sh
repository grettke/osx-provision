# [[file:~/src/osx-provision/HighSierra/provision.org::org_gcr_2019-10-27T22-29-41-05-00_cosmicality_FCA5AA1E-A175-4973-8E78-F01B61A18DAF][org_gcr_2019-10-27T22-29-41-05-00_cosmicality_FCA5AA1E-A175-4973-8E78-F01B61A18DAF]]
read -p "Did you already perform the manual steps? If not, do them. [hit enter to continue or Control-C to abort]"

mkdir -p ~/.config

rm -rf ~/tmp
mkdir ~/tmp

rm -rf ~/bin
mkdir ~/bin

rm -rf ~/opt
mkdir ~/opt

sudo rm -rf /usr/local/
sudo mkdir -p /usr/local/bin
sudo mkdir -p /usr/local/include
sudo mkdir -p /usr/local/lib
sudo mkdir -p /usr/local/opt
sudo mkdir -p /usr/local/share

rm -rf ~/.config/karabiner
cd ~/src
rm -rf ./maccadet
git clone ghb:grettke/maccadet.git
ln -s ~/src/maccadet ~/.config/karabiner

rm ~/.gitignore_global
echo .DS_Store > ~/.gitignore_global

git config --global core.excludesfile ~/.gitignore_global

rm -rf ~/.ssh
cp -r /Volumes/Host\ 3/Users/gcr/.ssh ~/.ssh
chmod 600 ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519.pub
ssh-add -K ~/.ssh/id_ed25519

ssh -T glb
read -p "Did it work? If not, fix it. [hit enter to continue or Control-C to abort]"
ssh -T ghb
read -p "Did it work? If not, fix it. [hit enter to continue or Control-C to abort]"

function 22C8initsshdir {
  cd ~/
  local timestamp=`date +%Y%m%d%H%M%S`
  local newdotssh="newssh$timestamp"
  local olddotssh="oldssh$timestamp"
  printf "Cloning .ssh directory from Git to %s\n" "$newdotssh"
  git clone glb:grettke/dotssh.git "$newdotssh"
  printf "Renaming local .ssh directory to %s\n" "$olddotssh"
  mv .ssh "$olddotssh"
  printf "Renaming new working copy %s to .ssh\n" "$newdotssh"
  mv "$newdotssh" .ssh
  chmod 600 ~/.ssh/id_ed25519
  chmod 600 ~/.ssh/id_ed25519.pub
  printf "Leaving the backup in case there were any problems.\n"
}
22C8initsshdir

read -p "I just replaced your .ssh directory with your one from Git. Now testing: [hit enter to continue]"
ssh -T glb
read -p "Did it work? If not, fix it. [hit enter to continue or Control-C to abort]"
ssh -T ghb
read -p "Did it work? If not, fix it. [hit enter to continue or Control-C to abort]"

rm -rf ~/src
mkdir ~/src
cd ~/src

git clone ghb:grettke/bash.git
cd bash
git fetch && git fetch --tags
git checkout highsierra
cd ..
git clone https://github.com/scriptingosx/GNU-bash-mac-installer.git

git clone ghb:grettke/osx-provision.git
cd osx-provision
git fetch && git fetch --tags
git checkout highsierra
cd ..

git clone ghb:grettke/lolsmacs.git
git clone ghb:grettke/myamacs.git
cd myamacs
git fetch && git fetch --tags
git checkout highsierra
cd ..
git clone glb:grettke/amacsdotd.git
git clone ghb:grettke/maccadet.git
git clone ghb:grettke/help.git
git clone glb:grettke/list.git
git clone glb:grettke/license.git

git clone ghb:org2blog/org2blog.git
git clone https://github.com/hniksic/emacs-htmlize.git htmlize
git clone https://github.com/abo-abo/hydra.git
git clone https://github.com/hexmode/xml-rpc-el.git xml-rpc
git clone ghb:magnars/s.el.git s
git clone ghb:magnars/dash.el dash
git clone https://github.com/alphapapa/org-make-toc.git
git clone https://github.com/purcell/package-lint.git
git clone ghb:grettke/pretty-mode.git
git clone ghb:grettke/universal-emotions-emoticons.git
git clone ghb:grettke/corporate-bs-generator.git
git clone ghb:grettke/org-utf-to-xetex.git
git clone ghb:grettke/say.git
git clone https://github.com/federicotdn/flymake-shellcheck.git

git clone ghb:grettke/wisdomandwonder.git

cd

rm ~/.emacs.el
ln -s ~/src/myamacs/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
rm ~/.emacs.d
ln -s ~/src/amacsdotd ~/.emacs.d
sudo rm /usr/local/bin/emacs
sudo ln -s /Applications/Emacs.app/Contents/MacOS/Emacs /usr/local/bin/emacs

rm -rf ~/src/org-mode
cd ~/src
git clone https://code.orgmode.org/bzg/org-mode.git
cd org-mode
git fetch && git fetch --tags
git checkout release_9.0.9
make autoloads

cd ~/src/GNU-bash-mac-installer
sh ./buildGNUbashPkg.sh
read -p "BASH is ready to install. Install it now. When you are done come back here. [hit enter to continue]"
sudo rm /usr/local/bin/bash
sudo ln -s /usr/local/bin/bash5 /usr/local/bin/bash
if grep "/usr/local/bin/bash$" /etc/shells > /dev/null; then
  echo "/usr/local/bin/bash already configured in shells; doing nothing"
else
  sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
  chsh -s /usr/local/bin/bash
fi

cd ~/src/bash
./deploy
# org_gcr_2019-10-27T22-29-41-05-00_cosmicality_FCA5AA1E-A175-4973-8E78-F01B61A18DAF ends here
