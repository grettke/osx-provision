# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-13T22-20-14-05-00_cosmicality_8CA2B6E0-91D2-4769-84C1-2A3CA3E4CAE4][org_gcr_2018-09-13T22-20-14-05-00_cosmicality_8CA2B6E0-91D2-4769-84C1-2A3CA3E4CAE4]]
function 22C8initsshdir {
  cd ~/
  local timestamp=`date +%Y%m%d%H%M%S`
  local newdotssh="newssh$timestamp"
  local olddotssh="oldssh$timestamp"
  printf "Cloning .ssh directory from Git to %s\n" "$newdotssh"
  git clone gitlab-gcr:grettke/dotssh.git "$newdotssh"
  printf "Renaming local .ssh directory to %s\n" "$olddotssh"
  mv .ssh "$olddotssh"
  printf "Renaming new working copy %s to .ssh\n" "$newdotssh"
  mv "$newdotssh" .ssh
  printf "Leaving the backup in case there were any problems.\n"
}
22C8initsshdir
# org_gcr_2018-09-13T22-20-14-05-00_cosmicality_8CA2B6E0-91D2-4769-84C1-2A3CA3E4CAE4 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_DA1B734B-8994-4465-AA58-08E2EF337770][org_gcr_2017-05-12_mara_DA1B734B-8994-4465-AA58-08E2EF337770]]
git config --global user.name "Grant Rettke"
git config --global user.email grant@wisdomandwonder.com
git config --global color.ui true
git config --global core.autocrlf input
git config --global alias.st status
git config --global alias.ci commit
git config --global svn.rmdir true
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/Resources/git-diff $LOCAL $REMOTE'
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/Resources/git-merge $LOCAL $REMOTE $BASE $MERGED'
git config --global mergetool.keepBackup false
# org_gcr_2017-05-12_mara_DA1B734B-8994-4465-AA58-08E2EF337770 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_CF6E9DCD-5A6E-4335-93CF-2E03937C9C28][org_gcr_2017-05-12_mara_CF6E9DCD-5A6E-4335-93CF-2E03937C9C28]]
rm -rf ~/git/github
rm -rf ~/git/gitlab

mkdir -p ~/git/github
mkdir -p ~/git/gitlab

cd ~/git/gitlab
git clone gitlab-`whoami`:grettke/resume.git
git clone gitlab-`whoami`:grettke/notes.git
git clone gitlab-`whoami`:grettke/signature.git
git clone gitlab-`whoami`:grettke/grant-personal.git
git clone gitlab-`whoami`:grettke/correspondence.git
git clone gitlab-`whoami`:grettke/wnw.git
git clone gitlab-`whoami`:grettke/texmf.git
git clone gitlab-`whoami`:grettke/sgph

cd ~/git/github
git clone github-`whoami`:grettke/osx-provision.git
git clone github-`whoami`:grettke/bash.git
git clone github-`whoami`:grettke/wisdomandwonder.git
git clone github-`whoami`:grettke/recursive-git-status-bash.git

cd ~/git/github-anonymous
git clone https://github.com/encharm/Font-Awesome-SVG-PNG
git clone https://github.com/dwyl/english-words.git
git clone https://github.com/manute/gorepl-mode.git
# org_gcr_2017-05-12_mara_CF6E9DCD-5A6E-4335-93CF-2E03937C9C28 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-05-12_mara_300013CB-D6E2-414E-9FBF-68D4581D971C][org_gcr_2017-05-12_mara_300013CB-D6E2-414E-9FBF-68D4581D971C]]
rm ~/src || true
rm -rf ~/git/src
mkdir -p ~/git/src
ln -s ~/git/src ~/src
cd ~/src
git clone github-`whoami`:grettke/help.git
rm ~/.emacs.el || true
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d.copy
mv ~/.emacs.d ~/.emacs.d.copy
rm -rf ~/src/.emacs.d
mkdir ~/src/.emacs.d
cd ~/src/.emacs.d
git clone gitlab-`whoami`:grettke/dotemacsdotd.git .
ln -s ~/src/.emacs.d ~/.emacs.d
mv ~/.emacs.d/eshell ~/.emacs.d/eshell.copy
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
rm ~/.jshintrc || true
ln -s ~/src/help/.jshintrc ~/.jshintrc
rm ~/.Xmodmap || true
ln -s ~/src/help/.Xmodmap ~/.Xmodmap
# org_gcr_2017-05-12_mara_300013CB-D6E2-414E-9FBF-68D4581D971C ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-12T14-42-11-05-00_cosmicality_449B2EDF-1F14-4E08-B9F4-9469A71B9EE7][org_gcr_2018-09-12T14-42-11-05-00_cosmicality_449B2EDF-1F14-4E08-B9F4-9469A71B9EE7]]
rm -rf ~/src/xml-rpc-el
rm -rf ~/src/metaweblog
rm -rf ~/src/org2blog
rm -rf ~/src/org2blogwiki
rm -rf ~/src/pretty-mode
rm -rf ~/src/auto-capitalize
rm -rf ~/src/corporate-bs-generator
rm -rf ~/src/org-utf-to-xetex
rm -rf ~/src/universal-emotions-emoticons
rm -rf ~/src/say
rm -rf ~/src/list
rm -rf ~/src/hardware
cd ~/src
git clone ghb:grettke/xml-rpc-el.git
git clone ghb:org2blog/metaweblog.git
git clone ghb:org2blog/org2blog.git
git clone ghb:org2blog/org2blog.wiki.git org2blogwiki
git clone ghb:pretty-mode/pretty-mode.git
git clone ghb:grettke/corporate-bs-generator.git
git clone ghb:grettke/org-utf-to-xetex.git
git clone ghb:grettke/universal-emotions-emoticons.git
git clone ghb:grettke/say.git
git clone glb:grettke/list.git
git clone glb:grettke/hardware
# org_gcr_2018-09-12T14-42-11-05-00_cosmicality_449B2EDF-1F14-4E08-B9F4-9469A71B9EE7 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-09-12T14-42-11-05-00_cosmicality_B7FE7813-593B-40D3-B3F8-BE15B898D81D][org_gcr_2018-09-12T14-42-11-05-00_cosmicality_B7FE7813-593B-40D3-B3F8-BE15B898D81D]]
rm -rf ~/Music/iTunes
rm ~/Music/iTunes || true
cd ~/git/gitlab
rm -rf ./iTunes
git clone gitlab-`whoami`:grettke/iTunes.git
ln -s ~/git/gitlab/iTunes ~/Music/iTunes
# org_gcr_2018-09-12T14-42-11-05-00_cosmicality_B7FE7813-593B-40D3-B3F8-BE15B898D81D ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2017-06-18_mara_4833AB48-1C15-4E4E-A767-F2711FFDAAE5][org_gcr_2017-06-18_mara_4833AB48-1C15-4E4E-A767-F2711FFDAAE5]]
rm ~/util || true
cd ~/src
rm -rf ./util
git clone gitlab-`whoami`:grettke/util.git
ln -s ~/src/util ~/util
# org_gcr_2017-06-18_mara_4833AB48-1C15-4E4E-A767-F2711FFDAAE5 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2018-11-17T16-07-47-06-00_cosmicality_50DD5E72-371D-4304-814A-85DFD4AE6973][org_gcr_2018-11-17T16-07-47-06-00_cosmicality_50DD5E72-371D-4304-814A-85DFD4AE6973]]
cd ~/src
rm -rf ./aspell
git clone gitlab-`whoami`:grettke/aspell.git
rm ~/.aspell.en.pws || true
rm ~/.aspell.en.prepl || true
ln -s ~/src/aspell/.aspell.en.pws ~/.aspell.en.pws
ln -s ~/src/aspell/.aspell.en.prepl ~/.aspell.en.prepl
# org_gcr_2018-11-17T16-07-47-06-00_cosmicality_50DD5E72-371D-4304-814A-85DFD4AE6973 ends here

# [[file:~/git/github/osx-provision/Sierra/provisioning.org::org_gcr_2019-08-24T11-58-31-05-00_cosmicality_317769B9-96FD-498D-8A30-DB5ACAFFA674][org_gcr_2019-08-24T11-58-31-05-00_cosmicality_317769B9-96FD-498D-8A30-DB5ACAFFA674]]
cd ~/src
rm -rf ./macoslocaldictionary
git clone glb:grettke/macoslocaldictionary.git
rm ~/Library/Spelling/LocalDictionary | true
ln -s ~/src/macoslocaldictionary/LocalDictionary ~/Library/Spelling/LocalDictionary
# org_gcr_2019-08-24T11-58-31-05-00_cosmicality_317769B9-96FD-498D-8A30-DB5ACAFFA674 ends here
