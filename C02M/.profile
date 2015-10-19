export PS1='\u@\h:\w> '
export HOMEBREW_NO_EMOJI=1
export INFOPATH='/usr/local/share/info:/usr/share/info'
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
export CCRYPT="/usr/local/Cellar/ccrypt/1.10/share/emacs/site-lisp"
source `brew --repository`/Library/Contributions/brew_bash_completion.sh
export EELIB="/Users/$(whoami)/EELIB"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home"
export MACTEX_BIN="/usr/local/texlive/2014/bin/x86_64-darwin"
export PATH=/usr/local/bin:$JAVA_HOME/bin:$MACTEX_BIN:~/bin:$PATH
alias e='open /Applications/Emacs.app --args --debug-init'
alias ec='/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw --debug-init'
alias r='r --no-save'
alias R='r --no-save'
alias bbc='~/git/github/stathon/stathon.py ~/git/bitbucket/ | grep True'
alias gbc='~/git/github/stathon/stathon.py ~/git/github/ | grep True'
alias gpom='git push origin master'
alias gst='git status'
alias r='r --no-save'
alias R='r --no-save'
