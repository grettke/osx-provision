# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_DA1B734B-8994-4465-AA58-08E2EF337770][org_gcr_2017-05-12_mara_DA1B734B-8994-4465-AA58-08E2EF337770]]
git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/Resources/git-diff $LOCAL $REMOTE'
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/Resources/git-merge/git-merge $LOCAL $REMOTE $BASE $MERGED'
git config --global mergetool.keepBackup false
# org_gcr_2017-05-12_mara_DA1B734B-8994-4465-AA58-08E2EF337770 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_CF6E9DCD-5A6E-4335-93CF-2E03937C9C28][org_gcr_2017-05-12_mara_CF6E9DCD-5A6E-4335-93CF-2E03937C9C28]]
rm -rf ~/git/github
rm -rf ~/git/gitlab

mkdir -p ~/git/github
mkdir -p ~/git/gitlab

cd ~/git/gitlab
git clone gitlab-`whoami`:grettke/list.git
git clone gitlab-`whoami`:grettke/resume.git
git clone gitlab-`whoami`:grettke/notes.git
git clone gitlab-`whoami`:grettke/signature.git
git clone gitlab-`whoami`:grettke/grant-personal.git
git clone gitlab-`whoami`:grettke/correspondence.git
git clone gitlab-`whoami`:grettke/wnw.git
git clone gitlab-`whoami`:grettke/texmf.git
git clone gitlab-`whoami`:grettke/hardware

cd ~/git/github
git clone github-`whoami`:grettke/osx-provision.git
git clone github-`whoami`:grettke/bash.git
git clone github-`whoami`:grettke/wisdomandwonder.git
git clone github-`whoami`:grettke/recursive-git-status-bash.git
git clone github-`whoami`:pretty-mode/pretty-mode.git

cd ~/git/github-anonymous
git clone https://github.com/altercation/solarized.git
git clone https://github.com/encharm/Font-Awesome-SVG-PNG
git clone https://github.com/dwyl/english-words.git
git clone https://github.com/LearnWebCode/json-example.git
git clone https://github.com/codefresh-io/yaml-examples.git
# org_gcr_2017-05-12_mara_CF6E9DCD-5A6E-4335-93CF-2E03937C9C28 ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-05-12_mara_300013CB-D6E2-414E-9FBF-68D4581D971C][org_gcr_2017-05-12_mara_300013CB-D6E2-414E-9FBF-68D4581D971C]]
cd ~/git/github-anonymous
rm -rf ~/src
mkdir ~/src
cd ~/src
git clone github-`whoami`:grettke/help.git
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d.copy
mv ~/.emacs.d ~/.emacs.d.copy
rm -rf ~/src/.emacs.d
mkdir ~/src/.emacs.d
cd ~/src/.emacs.d
git clone gitlab-`whoami`:grettke/dotemacsdotd.git .
ln -s ~/src/.emacs.d ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
# org_gcr_2017-05-12_mara_300013CB-D6E2-414E-9FBF-68D4581D971C ends here

# [[file:~/git/github/osx-provision/El-Capitan/provisioning.org::org_gcr_2017-06-18_mara_4833AB48-1C15-4E4E-A767-F2711FFDAAE5][org_gcr_2017-06-18_mara_4833AB48-1C15-4E4E-A767-F2711FFDAAE5]]
cd ~/src
rm -rf util
git clone gitlab-`whoami`:grettke/util.git
rm ~/util
ln -s ~/src/util ~/util
cd
# org_gcr_2017-06-18_mara_4833AB48-1C15-4E4E-A767-F2711FFDAAE5 ends here
