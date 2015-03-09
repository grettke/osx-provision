
export PS1='\u@\h:\w> '
export HOMEBREW_NO_EMOJI=1
export INFOPATH='/usr/local/share/info:/usr/share/info'
export VAGRANT_DEFAULT_PROVIDER=vmware_fusion
source `brew --repository`/Library/Contributions/brew_bash_completion.sh
export EELIB="/Users/$(whoami)/EELIB"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home"
export PATH=/usr/local/bin:$JAVA_HOME:$PATH
alias r='r --no-save'
alias R='r --no-save'
alias bc='~/git/github-grettke/stathon/stathon.py ~/git/bitbucket-grettke/ | grep True'
alias gc='~/git/github-grettke/stathon/stathon.py ~/git/github-grettke/ | grep True'
