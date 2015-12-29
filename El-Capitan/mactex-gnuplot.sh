# [[file:provisioning.org::*MacTex%20&%20GnuPlot][F70EC578-023C-45CD-A584-F00AE7D33400]]
set -x
ls /usr/local/texlive/2015
sudo cp /usr/local/texlive/2015/texmf.cnf /usr/local/texlive/2015/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
ls /usr/local/texlive/2015
sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
# F70EC578-023C-45CD-A584-F00AE7D33400 ends here

# [[file:provisioning.org::*MacTex%20&%20GnuPlot][34890901-8E9D-46E5-9738-2718CD26908E]]
kpsewhich KomaDefault.lco
# 34890901-8E9D-46E5-9738-2718CD26908E ends here

# [[file:provisioning.org::*MacTex%20&%20GnuPlot][008DCE01-EE0D-4A96-93A5-7B6E91D7C951]]
sudo mktexlsr
# 008DCE01-EE0D-4A96-93A5-7B6E91D7C951 ends here

# [[file:provisioning.org::*Install%20GNUPlot][FB8E0242-CDD6-45E4-86A7-10871990595A]]
brew install gnuplot --with-latex --with-pdflib-lite --with-test --with-x11
# FB8E0242-CDD6-45E4-86A7-10871990595A ends here
