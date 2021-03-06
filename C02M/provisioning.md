# README

    ID: README

## Literate DevOps: OS X Development System

Setting up a development system is a non-trivial investment.

This document captures the steps required and automates as much as possible.

The Style Guide is a **must read** for the operator.

[Org-Mode](http://orgmode.org/) converted this manual, tedious, and error prone task to a
semi-automated, nearly reproducible, and error-less process, for *me*. This document
has never been beta tested; I am it&rsquo;s **only** user.

# Style Guide

    ID: STYLEGUIDE

-   The means justify the ends
    -   Makes entirety of the effort achievable, sensible, and valuable
-   Be ready for surprises
    -   You will learn new things every run
    -   You will be surprised by things every run
    -   You have to decide if it is an opportunity to better things or
        it is something to get upset about
        -   Only you may decide
-   Each top level section might be completed in entirety
    -   Take brakes between them
    -   Take over-night breaks
    -   The whole thing takes a while
-   Right-click to paste text into the terminal
    -   If you Pretzel-v it, it doesn&rsquo; work right
-   Make scripts executable and run them
    -   `sh` doesn&rsquo; do what you want and you always forget that
-   If one of your purchased apps doesn&rsquo; show up in AppStore then just buy it again
    -   The store will detect that you already own it and ask you to install it
    -   Growl always has this problem
    -   Used to reboot to fix it, but unreliable
-   This whole thing only makes sense when you read each line
    -   Partially because you forget after not doing it for a while
    -   The order is critical
    -   A lot of the steps are automated and only make sense after you understand
        the entire script
    -   There are still a lot of manual steps though
    -   For example automate app installs and manually configure them, **before** moving
        on to the next section
    -   Everything must be completed before moving on to the next thing
-   Disk image verification
    -   Recipes exist to disable it
    -   I don&rsquo;t use them; I want to know every time that all of my disk images are
        in a known good state
-   Try running every program
    -   Only way to identify failures
    -   Only way to automate the correct way
    -   Continue to find new issues and fixes
-   Total transparency
    -   I&rsquo;ve run this 7 times already
    -   Every time I run it I find new bugs and new improvements
    -   Provisioning reveals just how much
        -   One doesn&rsquo;t know about their OS
        -   Things can go really well despite the fact we don&rsquo;t know how to do it
            right
-   Automated provisioning is handled by [kitchenplan](https://github.com/grettke/kitchenplan)
-   Be thoughtful
    -   This is not unique to this box, I just always forget
    -   For example when I install Emacs
        -   I didn&rsquo;t think about using the main GNU release versus railwaycat&rsquo;s
            -   That was dumb because I didn&rsquo;t think about the implications
        -   First time, I installed all additional libraries
            -   That was dumb because you should only install what you specifically need
        -   Brew
            -   It is very easy to use Brew
            -   It will install a lot of stuff to make you happy
            -   If you don&rsquo;t pay attention to what it does to make you happy then it
                will eventually make you unhappy
-   Only run this setup with a reliable high-speed Internet connection
    -   Ran this at off-site, and 40% of the downloads failed
-   Once you get comfortable a couple of things happen
    -   You try to paralellize stuff to save time and it is a big mistake which
        totally defeats the purpose of taking it slowly and easy because inevitably
        you will make mistakes
    -   You forget that the means justify the ends; take it slowly and easy and
        perform the steps in that manner
    -   You will form an opinion based upon experience rather than fantasy
        -   Everyone is entitled to an opinion
        -   Some opinions are more valuable then others
        -   Experience trumps fantasy **every** time
        -   Take this dev-ops task as an opportunity to form your own
            personal-preference
        -   Valuable opinions come about as a result of a lot of good learning

# Prerequisites, Manual

    ID: E637243E-248A-4343-8A4E-DCB8B686A54A

## Scripts

    ID: 4B84F9B0-665D-408D-B504-423A0903AACB

-   Log into BitBucket/GitHub using Safari
-   Download the this repo to get a current copy all the artifacts
-   Keep the setup guide open both on a smartphone and on the computer and
    track what is happening where
    -   Seems like overkill but it is really simpler because it is easy to lose your
        place during reboots when OSX &ldquo;forgets&rdquo; the line that you were on

## Image Disk

    ID: 702C1D63-B635-40DE-A174-4EC9D379A7A3

-   Boot from EF4829
-   Dismount C02M
-   Erase C02M
    -   You have the ability to specify the file system (FS) here
    -   For this guide, it is not required, because Carbon Copy Cloner (CCC) will
        restore a disk image that has a file system that is Mac OS Extended
        Journaled (MOSEJ)
    -   The default is Mac OS Extended (not journaled)
    -   I suspect though that if I don&rsquo;t specify it here, then at some point I will
        either copy or move this passage of text, and since it does not mention the
        desired file system (MOSEJ), that it will result in a documentation bug
    -   When you do this, specify the FS and MOSEJ
-   Mount 01
-   Restore 01 to C02M
-   Dismount 01
-   Restore rescue partition on C02M
-   Boot from C02M
-   Dismount EF4829

## Recovery Partition

    ID: C33955D4-6C56-44F1-A6BF-33225CA2CF9D

-   Pretzel-r on boot to enter it
-   This makes sure that it works

### Console Password (One Time Only)

    ID: 5E43A4A7-A029-40DE-B94C-F1C5FE5C2574

-   Set the firmware password

## System Preferences

    ID: 727763EA-26B6-495F-845B-18B16B3F97C0

### Keyboard

    ID: D61B4384-B5F5-4B1D-BF11-428F0090451E

<table>


<colgroup>
<col  class="org-left">

<col  class="org-left">
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">From</th>
<th scope="col" class="org-left">To</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Caps Lock ⇪</td>
<td class="org-left">Option ⌥</td>
</tr>


<tr>
<td class="org-left">Control ^</td>
<td class="org-left">Caps Lock ⇪</td>
</tr>


<tr>
<td class="org-left">Option ⌥</td>
<td class="org-left">Command ⌘</td>
</tr>


<tr>
<td class="org-left">Command ⌘</td>
<td class="org-left">Control ⌃</td>
</tr>
</tbody>
</table>

### Displays

    ID: 2FDE3655-A1C8-4C96-AC63-A97E8783D640

-   Resolution: Scaled
    -   More Space (1920x1200

-   Arrangement
    -   Mirror screens

### Printer

    ID: 2B1596FB-1C41-4779-8ADF-B030961D4DE5

Set it up.

## Software Updates

    ID: 73C615D6-F743-43DB-B67F-B908C1394CD7

-   Installed software updates
    -   Previously this was followed by manual reboot and that was needless
-   On restart, check updates again by clicking on it to see if there are more and
    if there are then install them
    -   There is a slight delay where the screen says that there are no updates
        *before* it refreshes and tells you that it is again checking

## Profile

    ID: 791C0B00-7071-4C95-8402-1FF45BE4DB9E

Download the `~/.profile` and evaluate it. This may be a download, or just copy
from the download of the repo. I am working through the best option, as both
have seemed fine.

```sh
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
alias ec='/usr/local/Cellar/emacs/24.4/Emacs.app/Contents/MacOS/Emacs -nw --debug-init'
alias r='r --no-save'
alias R='r --no-save'
alias bbc='~/git/github/stathon/stathon.py ~/git/bitbucket/ | grep True'
alias gbc='~/git/github/stathon/stathon.py ~/git/github/ | grep True'
alias gpom='git push origin master'
alias gst='git status'
```

The OSX file system is somewhat-case-sensitive. I did not choose a
case-sensitive operating system when I installed it. If you run `r` or `R` then
OSX will start R. However, if you run an alias with the same name but upper
versus lower case then it will execute the correct alias. I learned this today.
This is why there are two aliases for starting `R`; I want a more OSX like
behavior. I am curious about having a Mac-like console.

```sh
alias r='r --no-save'
alias R='r --no-save'
```

After setting up the system, just link it here:

```sh
cd ~/
rm .profile
ln -s ~/git/bitbucket/hardware/apple/macbookpro/c02m/.profile .profile
```

## Install XCode

    ID: A6E80ED9-4E97-4263-9D23-431160F50C53

I want Xcode. I want the CLT. I want the IDE and more. I also want KitchenPlan.
The installation order of these things was not obvious to me. I got it wrong 3
times. Now it works correctly. Install Xcode and then CLT and then everyone
seems to be happy.

Go to the App Store and install it.

You must start Xcode and agree to its licensing. Afterwards, close it.

For reference, see where it lives.

```sh
xcode-select --print-path
```

    /Applications/Xcode.app/Contents/Developer

Now install the CLT. Choose **Install**.

```sh
xcode-select --install
```

Note here that the Xcode path does not change. I don&rsquo;t understand this. What I
think is happening is that Xcode is installed and that it is providing
everything that is required and CLT piggy-backs on it.

```sh
xcode-select --print-path
```

    /Applications/Xcode.app/Contents/Developer

## Brew and BrewCask

    ID: 680FF6B3-CB76-4F99-86BD-E1A8C70ACF95

Brew is [here](http://brew.sh).

Run

```sh
brew doctor
```

BrewCask is [here](http://caskroom.io).

# Git, Semi-Automated

    ID: 9D7AA569-39C7-4E74-B8A7-8932AA180DFE

After setting up this box, check out your stuff later before imaging.

## Manual

    ID: B8467CEB-891A-4199-ABAC-1AEB29A4B7E5

### DeltaWalker

    ID: 58C17FB4-D6BB-4264-BE35-99FBD4313693

Install DeltaWalker.

Previously I used Meld. That worked fine. It was in Python. Brew installed it&rsquo;s
own Python. I didn&rsquo;t like that. That is why I switched to DiffMerge. I didn&rsquo;t
want to install Brew Python in addition to OSX Python. Personal preference.

Previously I used DiffMerge. It didn&rsquo;t have block-merge. That is why I switched
to DeltaWalker.

My old setup had a problem. In Git I set up the external.diff to Meld.
external.diff is only for command line tools. Meld is a GUI. That was wrong.
I got a poor-user experience with git and vc-diff and Magit as a result.

This is the first BrewCask install, so it asks you for your password.

```sh
brew cask install deltawalker
```

The full setup follows. This documentation will show up in the productivity
setup steps, and after the fonts are installed.

```org
- Expanded DMG
  - Open /opt/homebrew-cask/Caskroom/deltawalker/
- Drag DeltaWalker into Applications
- Set up the DeltaWalker.workflow
- Copy the samples folder to test out the app and workflow later
- Start it
- Register it
  - Help, Install License Key
- Set preferences for new comparisons (be sure of this, easy not to)
  - General
    - Date formatting: English (United States)
    - Max available memory: 4096MiB
    - [X] Automatically find new updates and notify me
    - Colors and Fonts
      - Basic::Text Font and Text Editor Block Selection Font: DJSM 14
      - Differences::Font: DJSM 14
  - All Comparisons
    - [ ] Use text differencing optimized for speed
    - [X] Use text differencing optimized for accuracy
    - [X] Follow symbolic links
    - [ ] Ignore differences in whitespace
      - Want to know about tabs versus spaces
    - [ ] Ignore differences in character case
      - Interesting but default do care
    - [X] Ignore differences in line endings (CF and LF)
      - Most systems don't care
```

## Automated

    tangle: git.sh

    comments: no

    ID: 0C2714A7-1900-4E21-9611-0BE64EF565F3

Generate the key. There is no passphrase.

```sh
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -N '' -t rsa -C "gcr@wisdomandwonder.com" -f orion_gcr_rsa
```

Set permissions so that `ssh` will run.

```sh
chmod 600 ~/.ssh/orion_gcr_rsa
chmod 600 ~/.ssh/orion_gcr_rsa.pub
ssh-add -K ~/.ssh/orion_gcr_rsa
```

OSX creates this directory everywhere and it must be ignored.

```sh
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

Add they key to Bitbucket and Github.

```sh
cat ~/.ssh/orion_gcr_rsa.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."
```

Set up ~/.ssh/config.

```sh
cat > ~/.ssh/config << EOF
Host github-grettke
     HostName github.com
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/orion_gcr_rsa.pub
Host bitbucket-grettke
     HostName bitbucket.org
     User git
     PreferredAuthentications publickey
     IdentityFile ~/.ssh/orion_gcr_rsa.pub
EOF
```

Test each one out.

```sh
ssh -T github-grettke
read -p "Did it work? If not, fix it."
```

Separate them to allow for easier copy-pasting.

```sh
ssh -T bitbucket-grettke
read -p "Did it work? If not, fix it."
```

Set up my preferences.

```sh
git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global core.editor vi
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd "/Applications/DeltaWalker.app/Contents/MacOS/git-diff foo \$LOCAL foo foo \$REMOTE"
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd "/Applications/DeltaWalker.app/Contents/MacOS/git-merge \$LOCAL \$REMOTE \$BASE \$MERGED"
git config --global mergetool.keepBackup false
```

Check out projects to get basic stuff working.

```sh
mkdir -p ~/bin
mkdir -p ~/git/bitbucket
mkdir -p ~/git/github
mkdir -p ~/git/github-anon
cd ~/git/bitbucket
git clone bitbucket-grettke:grettke/alec.git
git clone bitbucket-grettke:grettke/list.git
git clone bitbucket-grettke:grettke/hardware.git
git clone bitbucket-grettke:grettke/resume.git
git clone bitbucket-grettke:grettke/rule-engine-notes.git
git clone bitbucket-grettke:grettke/notes.git
git clone bitbucket-grettke:grettke/signature.git
git clone bitbucket-grettke:grettke/grant-personal.git
git clone bitbucket-grettke:grettke/cover-letter.git
git clone bitbucket-grettke:grettke/correspondence.git
git clone bitbucket-grettke:grettke/texmf.git
git clone bitbucket-grettke:grettke/sas.git
cd ~/git/github
git clone github-grettke:grettke/help.git
git clone github-grettke:grettke/home.git
git clone github-grettke:grettke/kitchenplan.gi
git clone github-grettke:grettke/stathon.git
git clone github-grettke:grettke/osx-provision.git
git clone github-grettke:tomislav/osx-terminal.app-colors-solarized.git
```

There are a lot of ways to manage libraries for Python. There are also many ways
to manage Python installations. I am not considering any of them here. My
approach is to use the base-box as a base. It needs to do certain things well.
These directions are for my current approach.

Directions for installing Pip live [here](https://pip.pypa.io/en/latest/installing.html).

```sh
mkdir ~/tmp
cd ~/tmp
curl -O https://bootstrap.pypa.io/get-pip.py
sudo -H python ./get-pip.py
```

Install GitPython for Stathon.

```sh
sudo pip install GitPython==0.3.2.RC1
```

# OSX GUI Config, Manual

    ID: 2CF80D6B-BE09-4805-89BC-E28E8081159D

Read the [directions](https://github.com/kitchenplan/kitchenplan).

```sh
sudo gem install kitchenplan
```

Start the setup.

```sh
kitchenplan setup
```

When it asks, give my aliased URL so I can work right out of that directory.

```sh
github-grettke:grettke/kitchenplan.git
```

Provision it.

```sh
kitchenplan provision
```

Log in and out again to see changes. Previously I would reboot the machine, but
that seems unnecessary.

The first two times I tested this, the desktop picture was set correctly. The
3rd time it was not. Also 4-6. I&rsquo;m leaving that alone for now.

KitchenPlan may be run repeatedly. After completing various sections of this
script I re-ran KitchenPlan. It worked correctly.

# Emacs Environment Semi-Automated

    ID: 2AE931ED-463D-4113-AB3A-A72161E301A0

This is what it takes to get an Emacs+Org development environment set up.
Nearly everything is included but for LaTeX, which has an enormous download
and installed by hand later.

The way that I like to go through this is to:

-   Perform the steps in the manual section
-   Execute `emacs-run.sh` for the automated stuff
-   Perform the manual configuration for everything that got installed
    -   Directions are in `emacs-read.org`

## System Software

    ID: D47E9374-04FB-41AB-94A6-2A4B0D3F1D71

### Manual

    ID: 78BCFE77-0D00-488A-9C64-556AF2CE1F64

1.  Fonts

        ID: C54893B7-4372-4723-8E29-02E2EB3A7556

    ```org
    Manually install fonts used for Emacs.

    Fonts that will be installed:
    - DejaVu
    - NotoSans
    - NotoSansSymbols
    - Quivira
    - Symbola

    They live in the font dir in the ALEC project.

    Steps to install them:
    - Extract them
    - Start Font Book
    - Create a new COLLECTION "Emacs"
    - Drag the top-level  directory into the collection
      - Font Book will search through it recursively for fonts and add them
    - Correct any resolution issues, which happen every time so far
    ```

2.  Terminal

        ID: 37EFA2A6-C467-4211-9DF2-80B2D238D07D

    Select the Solarized dark theme. It is checked out in Github-Anon. Go into
    preferences, choose it, and set it as the default.

    Set the font to DJSM 17.

3.  Growl

        ID: 7C14A841-1223-4D4F-9D10-32B90A5095E1

    Install Growl via AppStore. Run it. Enable it to run on login.

    Smoke theme. Top left corner since EMACS is usually on right-half. Large.

### Automated

    ID: 24B4EC99-6A54-470D-B6A1-00AA2F5E41DB

Do the manual configuration of this stuff right away. The system is unusable
without it. For some reason I find it easy to forget that.

1.  XQuartz

        ID: A11D2C45-BBD9-42CD-97F6-DBE125A17EB5

    Why is this here? It used to be for Meld. Meld went away. It definitely *feels*
    right to be here. It is nice to have a X-Server. Stuff like the `dot` tool
    use X. I am staying true-enough here.

    This install asks for a password. I am done researching what asks for a password
    and what does not. Perfect world I would do that and break out the steps into
    things that ask for a password and things that to do not. In that perfect world,
    time does not exist. To do this in a world with time will take a lot of it.

    Asking for passwords appears to be an application-specific event and not based
    on order of Brew and BrewCask installs. Even if there is more to it, I am not
    researching it more now.

    ```sh
    brew cask install xquartz
    ```

2.  Karabiner

        ID: C3F3E565-0AC8-408E-BEB9-58601A87DDA8

    ```sh
    brew cask install karabiner
    ```

    ```org
    Run it. Approve it. Configure it with the following. Look for the
    heading with the name below following "Modify".

    Check:
    - Return to Option_L
      (+ When you type Return only, send Return)
    ```

3.  Spectacle

        ID: 4380D20F-9359-470A-97B3-37C56AE9A8E6

    ```sh
    brew cask install spectacle
    ```

    ```org
    Run it. Approve it. Set it to run at login.
    ```

4.  Bartender

        ID: 16E49B61-10C0-4A8C-9EFB-68FE01A16935

    ```sh
    brew cask install bartender
    ```

    ```org
    - GENERAL
      - Launch Bartender at login: yes.
      - At bartender launch: show bartender bar: NO.
      - Bartender bar: autohides, YES.
    - Menu bar icon highlight
      - Show when bartender bar is open: YES.
      - Bartender menu baricon:
    - ADVANCED
      - Bartender menu bar icon: visible YES.
      - Clicking on bartender will: open bartender bar.
      - For everything moved into the gutter
      - I made it display in the main for 5m.

    - Ordered them (reorder by holding Pretzel and dragging them) (do this after installing everything)
      - little snitch
        - Can't move this one at all anyway
      - Date/Time
      - Volume
      - Keychain Access
      - Battery
      - Bluetooth
      - Wifi
      - Vagrant Manager
      - Dropbox
      - Fast User Switching Menu
      - Applications Menu Settings
      - Notification center
      - Spotlight
      - Bartender

      - Hide
        - Growl
        - Karabiner
        - Spectacle
        - Carbon Copy Cloner
        - AirPort Display
        - Time Machine (completely)
        - Google Chrome (Hangouts)
        - Microsoft Remote Desktop

    Arrangement-algorithm is most activity or cared about on the outside and less so
    in the middle.
    ```

5.  Growlnotify

        ID: 32EC8433-55E8-4F2D-A4DB-217BA654FEC3

    ```sh
    brew cask install growlnotify
    ```

6.  CCrypt

        ID: 6E28AA90-2D64-493F-9D90-FD41897F3A0A

    ```sh
    brew install ccrypt
    ```

7.  Aspell

        ID: DF3016FA-FBBA-4C87-9D5A-B5373B9BE5F7

    ```sh
    brew install aspell -all
    ```

8.  Java

        ID: 64A80CB9-6DAB-49EF-8E3C-0EF11E7BA3B1

    At this point, test out Java and Langtool. The full Org stuff requires more
    configuration, like Ditaa. This assumes that you&rsquo;ve done the Emacs final config
    stuff based on warnings at startup of Emacs; not on directions on this document.

    ```sh
    brew cask install java
    ```

## Emacs

    ID: FE9C3050-9F4B-42E3-A120-ADBF1913A2B3

I quit using railwaycat&rsquo;s emacs mac port. It was really nice. One night I
reprovisionined my machine. railwaycat&rsquo;s repo was down. I learned that it was a
one-man show. I never thought about it. It means that it is not supported well.
Things that are supported well are likely to be available. I switched to the
GNU Emacs app. It has those desirable traits.

ImageMagic is required for the Emacs install, so install it first.

```sh
brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
```

With all of Emacs prerequisites satisfied, install it now.

```sh
brew install emacs --cocoa --with-gnutls --with-imagemagick
brew linkapps
```

The installer lists caveats. Do I need to know of these for each installer???

Now link my .emacs.el and try tangling.

```sh
ln -s ~/git/github/help/.emacs.el ~/.emacs.el
ln -s ~/git/bitbucket/alec/.aspell.en.pws ~/.aspell.en.pws
ln -s ~/git/bitbucket/alec/.aspell.en.prepl ~/.aspell.en.prepl
```

The eshell config lives under .emacs.d. It doesn&rsquo;t exist until Emacs is run.
This setup creates a link to the real .emacs.d. Create the directory first and
then link it.

```sh
mkdir ~/.emacs.d
ln -s ~/git/github/help/eshell/ ~/.emacs.d/eshell
```

Start Emacs. Remember any Emacs fixes. Everything should work.

# Productivity Semi-Automated

    ID: F448220B-7657-44BE-96BE-66D4A82DCAD9

To be immediately productive with the most common use cases, I need all of
these apps.

Use cases:

-   Communications
-   Productivity
-   Word processing
-   Productivity is pretty broadly defined here. It means everything.

The installation process is similar to Emacs up above:

-   Install the software automatically
-   Configure it manually
-   Manually run it and make sure that it is happy
    -   You will find new stuff every time you do this and you will get better at
        dev-ops and automate as much of it as you can and want to do

I am curious about how best to automate this portion of the installation. My
approaches were in order:

-   Just let it run and try stuff later
    -   Allows for installation failures which I don&rsquo;t like, it wastes time
        discovering the issue and resolving it
-   Verify that each app starts
    -   This is a fine approach. I would like to know at installation time though if
        there is a failure. Reading the transcript would be a good approach. Perhaps
        I should capture it, too.
    -   Works easily for command line stuff via a script. GUI stuff is slower when
        I run it through Spotlight. Perhaps it is worth tracking down the
        installation directories of everything and starting them up via `open`?
        -   Is this level of reproducibility required? Might need to quantify this.

Read through the installation messages at least once. You will learn things and
then you will improve the installation process.

## Files

    ID: 1AE57BD9-F842-4D7C-A18A-58740A9A6ACB

I always end up keeping these temp files. Yes, temp files. They don&rsquo;t live in
source control.

```sh
touch ~/tmp/post.org
touch ~/tmp/scratch.org
touch ~/tmp/todo.org
```

## Dropbox

    ID: F8E6CF70-B933-4DAB-9067-22D8A8A6B306

This one is first so that I&rsquo;ll have easy access to licenses.

```sh
brew cask install dropbox
```

```org
Sign in.
In Login Items, start Dropbox.
When on highspeed, just sync everything after copying locally of course.
When on lowspeed, just sync required.
```

## Little Snitch

    ID: 9BEF8392-9623-495D-9D78-2FE97B65931A

```sh
brew cask install little-snitch
```

```org
As of writing, the installer just gets downloaded and you need to run it like
this:

#+begin_src sh
open /opt/homebrew-cask/Caskroom/little-snitch/3.5.1/Little Snitch Installer.app/
#+end_src

Typical usage is to grant every program full access for any connection, forever,
until there is a reason not to do so.

- Gen
  - Show inactive warning
  - Silent mode: no
  - Show status in menu bar.
- Alert:
  - Detail level: Show full details
  - No: Confirm automatically
  - NO: Confirm with return and escape.
- Monitor:
  - Keyboard shortcut: On
  - Show network activity in menu bar.
    - Show data rates numerically. Monochrome.
  - Show auto when mouse enters. Hide in 2s.
- APS
  - No: Enable automatic profile switching
  - Yes: Save geolocation of networks.
- Security
  - Allow rules and profile edit.
  - Allow profile switch.
  - Allow preference editing
  - Respect privacy.
- Advanced
  - Approve rules automatically.
Update
  - Automatically check for updates daily
```

## Chrome

    ID: 12B7CE2E-3AEF-44AD-98DC-F4E4EACD4FDF

```sh
brew cask install google-chrome
```

```org
Sign into Chrome. Let the settings sync. All the JS disabling stuff needs
you to approve it. It is irritating. You always forget to approve it and make
it worse. Disable ScriptSafe right away. Turn it on as needed.
```

## Firefox

    ID: 61E12D72-B4EB-4AA9-AA86-BB620E1D90A5

```sh
brew cask install firefox
```

Sometimes this install fails. I checked the file download. The file exists. The
name hasn&rsquo;t changed. Did a manual install instead.

```org
Install the standard plugins: NoScript, Blur.
```

## Filezilla

    ID: 3F67D0FE-1FE7-4578-9C71-DE4DBD6F75C2

```sh
brew cask install filezilla
```

```org
Set up Filezilla for WnW.
```

## Skype

    ID: 934F774C-A87E-42A9-A558-152B7FEA1670

```sh
brew cask install skype
```

Got a surprise today. After doing 7 runs, Skype was installed but it was not
successfully linked into /Application. That is surprising. It is installed
under the BrewCask (cask room) location:

```sh
/opt/homebrew/Caskroom/skype/latest/Skype
```

The link to Applications didn&rsquo;t exist so Skype was not added to Login
Items. I manually added it. I clicked `+`. This Mac. Searched for &ldquo;Skype&rdquo;. Then I
chose it.

```org
Log in automatically. Don't grant access to contacts.
Preferences General. Never set my status away. Don't show birthday notifications. Don't always keep Skype up to date.
Messaing: Don't use larg emotions. Use compact chat style. Don't show when I am typing.
Notifications: Do not notify when I sign in or out, and others, and when they become
available do nothing.
Advanced: Display technical call information yes. Do not collect
call information.
Login Items, add Skype in here.
```

## SourceTree

    ID: FB6C94D0-0CE2-478E-88FB-C9D0B2D5E687

```sh
brew cask install sourcetree
```

```org
Log into SourceTree.
Let it scan the BitBucket folder to add those projects to SourceTree.
Preferences.
General: Disallow SourceTree from modifying yoru global Git config file
Diff: Set font to DJSM 14.
Manually:
- Go through the licensing process
- Old app just let you type it into the GUI, not seeing it here now
```

## Racket

    ID: A8A0F670-7277-4648-9045-9B7D59C0AC54

Need this for resume stuff. At this point at least Racket is installed.
Here I found that Pandoc was not set up right. After everything is done,
including manually installing MacTeX, I could build my resume here.

```sh
brew cask install racket
```

```org
racket --version
```

## Freemind

    ID: 451994D9-2351-4867-9798-7522388F6207

I use mindmaps.

```sh
brew cask install freemind
```

```org
Run it.
```

## VIM & MacVIM

    ID: 54E89ACB-1573-4D11-B687-97A754A3908E

```sh
brew install vim
```

```sh
brew cask install macvim
```

```org
Copy over my .vimrc, once one exists.
Run it.
```

## Guile

    ID: 57403E53-993D-493B-B756-32F2D71A412B

```lisp
brew install guile
```

## Enscript

    ID: D3DBFD98-040E-4049-A438-944A53EC2EA5

```sh
brew install enscript
```

```org
Run Enscript.
```

## Virtualbox

    ID: 6B0AAEB8-5589-4D36-962A-C2F8C0061B64

```sh
brew cask install virtualbox
```

Sometimes this install succeeds but the application does not appear to be
installed. Not sure if this is a Spotlight/FS thing or what.

```org
Boot up at least one Vagrant box using Virtualbox to make sure it is happy.
The directions are with Vagrant.
```

## VMWare Fusion

    ID: 8B59D8B4-54FD-4418-8945-AA484142BCF1

```sh
brew cask install vmware-fusion
```

Sometimes this fails, just like with VirtualBox. Perhaps it is a network speed
thing?

```org
License it.
Boot up at least one Vagrant box using VMWare Fusion to make sure it is happy.
The directions are with Vagrant.
```

## Libre Office

    ID: 076697D3-8062-466C-B417-F311FA963C7F

```sh
brew cask install libreoffice
```

This failed on the slow network.

```org
Run it.
```

## Kindle

    ID: 907B99E7-1B10-437E-9211-03846B287305

```sh
brew cask install kindle
```

```org
Sign in. Make sure it works. Download everything so it is there.
You can see files downloaded versus avalable to be sure. Or not.
The upside is reading without Internet connectivity.
```

## VLC

    ID: C623E9CE-FD57-4E73-A831-77E34E0A91BB

```sh
brew cask install vlc
```

```org
Run it.
```

## Programs That Don&rsquo;t Need Any Configuration

    ID: 3BA23E12-77B9-4414-8498-3979897F27DD

### Part A

    ID: 882E8D8B-A25F-4074-92D3-DA75B75B4803

```org
Remember to run these. Just do a version check or something.
```

```sh
brew install smlnj
brew install cvs
brew install bzr
brew install hg
brew install graphviz
brew install tree
brew install archey
brew install figlet
brew install pandoc
brew install gforth
brew install ffmpeg --with-fdk-aac --with-ffplay --with-freetype --with-frei0r --with-libass --with-libvo-aacenc --with-libvorbis --with-libvpx --with-opencore-amr --with-openjpeg --with-opus --with-rtmpdump --with-schroedinger --with-speex --with-theora --with-tools --with-faac
brew linkapps
brew install povray --with-openexr
brew linkapps
```

## Stuff That Asks For My Password

    ID: 5DEE57DD-5703-4EC9-86E2-1CC519C1B837

### R

    ID: B8D8B260-441F-4B70-8850-6C209ABDA3D1

This is the first BrewCask install where I saw a check-sum error:

    ==> Caveats
    Cask r installs files under "/usr/local".  The presence of such
    files can cause warnings when running "brew doctor", which is considered
    to be a bug in homebrew-cask.

    ==> Satisfying dependencies
    complete
    ==> Downloading http://cran.rstudio.com/bin/macosx/R-3.1.3-mavericks.pkg
    ######################################################################## 100.0%
    ==> Note: running "brew update" may fix sha256 checksum errors
    Error: sha256 mismatch
    Expected: bd150f488c36e3d793febd3b7f619c076fc3bccfe673592af3134c32118d1c5e
    Actual: 28445419c73b03dd3e0e1199114e23c83e56a5140f8c43f37b63cb550dc0eba7
    File: /Library/Caches/Homebrew/r-3.1.3.pkg
    To retry an incomplete download, remove the file above.

The software was downloaded. Its check-sum was wrong. Now what? This isn&rsquo;t the
end of the world. I am glad it reported it. I am not investigating the mismatch.
I suspect that there is a newer release and the formula wasn&rsquo;t updated. That is
fine. I will delete that download and install it manually. This is a story I
want to capture. Things aren&rsquo;t always perfect. There are so many moving parts
that this is bound to happen. Patches are usually always welcomed, too.

To handle this manual install, I read the OSX page for R. They explain that
we ought to compare the check-sum of the download and show how. The current
hashes are:

    MD5-hash: 2f263bbb394361b5c3dd0d882d1d2e70
    SHA1-hash: 200349fbcfd14b8b4769b52340164dd728c3995c
    (ca. 68MB)

You may see the download size in MiB via:

```sh
cd ~/Downloads
du -h R-3.1.3-mavericks.pkg
```

    68M    R-3.1.3-mavericks.pkg

You may check the check-sum via:

```sh
cd ~/Downloads
md5 R-3.1.3-mavericks.pkg
```

    MD5 (R-3.1.3-mavericks.pkg) = 2f263bbb394361b5c3dd0d882d1d2e70

Install the software.

```sh
brew cask install r
ln -s ~/git/bitbucket/alec/.Renviron ~/.Renviron
ln -s ~/git/bitbucket/alec/.Rprofile ~/.Rprofile
ln -s ~/git/bitbucket/alec/.Rinstall ~/.Rinstall
rm -rf ~/.Rpackages
mkdir ~/.Rpackages
```

Explain what to do with it.

```org
I haven't used R in a long time but I want to get it set up right again.
Link my configs from ~/ into where they live now.
This installer asks for my password, which halts the install. How will I deal
with this?
There is a =.Rinstall= file in my setup to get all of the packages installed. Be s
sure to run that, too. All of my notes live in R.org already.
```

1.  R Studio

        ID: BEA57758-A9E8-415C-9D89-A0C5722A6383

    ```sh
    brew cask install rstudio
    ```

    ```org
    This doesn't need any config I think.
    Run it.
    ```

### Vagrant

    ID: 7B45D9BF-6FD5-4624-9F06-671D33D76A78

```sh
brew cask install vagrant
```

```org
Install the VMWare provider for Vagrant and then license it.

Remember to [[http://docs.vagrantup.com/v2/other/debugging.html][log]] appropriately.

It goes something like this:

#+begin_src sh
vagrant plugin install vagrant-vmware-fusion
mkdir ~/.vagrant
cd ~/.vagrant
# copy that license file in there
vagrant plugin license vagrant-vmware-fusion license.lic
cd
rm -rf ~/.vagrant
#+end_src

Verify the plugin is licensed and happy:

#+NAME: CCCFA8CD-1754-4BD6-A355-7907E885B6C4
#+BEGIN_SRC sh
vagrant plugin list
#+END_SRC

Test out VirtualBox box:

#+begin_src sh
cd ~/tmp
mkdir vgtest
cd vgtest
vagrant init hashicorp/precise64
vagrant up --provider virtualbox
#+end_src

The first time I tried this, it failed. I restarted OSX. Then it worked.

Test out VMWare. The default provider is vmware, so don't have to specify
provider.

#+begin_src sh
cd ~/tmp/vgtest
vagrant up
#+end_src
```

1.  Vagrant Manager

        ID: 2384B1E5-6EBB-4C43-80CE-FDD2476E40D3

    ```sh
    brew cask install vagrant-manager
    ```

    Tonight I had a surprise. Vagrant reported a failure. It was trying to copy a
    machine into a non-existent directory ~/.vagrant. That is where I keep the
    VMWare Vagrant license. That was surprising. Support has see this before when
    Vagrant Manager is running. I closed it and tried again and it worked fine. The
    value of Vagrant Manager is that it makes visible machines that you have
    running. Support explained that Vagrant Manager might be doing it. It was. He
    opened a ticket. I added to [it](https://github.com/lanayotech/vagrant-manager/issues/78).

    ```org
    - Terminal Preference: Terminal
    - Status Bar Icon Theme: Clean
    - Launch at login: Yes
    - Following settings: No
    - Refresh every: 5 seconds
    - Following settings: No
    - Allowed Updates: stable
    - Send anonymous profile data: Yes
    ```

# Productivity, Manual

    ID: 5BF2F31A-8713-4BE0-89E7-66AA327E070C

## By Hand

    ID: AB75D588-C667-4C2B-A54B-15E513EBF920

### SAS University Edition

-   4096 MB RAM

### OSX Enhanced Voice Dictation

    ID: C8E3A6E9-16E6-4ABD-A667-0E952D38D3E4

Somehow I activated the installer for &ldquo;OSX Enhanced Voice Dictation&rdquo;. I said &ldquo;Yes&rdquo;.
Found [this](https://support.apple.com/en-us/HT202584) guide and here are the steps:

-   Apple
-   System Preferences
-   Dictation & Speech
-   Dictation
-   Enable
-   Yes: Use Enhanced Dictation

### Visible Body

    ID: 07ADFC51-E81C-46C1-8D1F-40FB11A93BEC

-   Human Anatomy Atlas
-   Muscle Premium
-   Skeleton Premium

### PyCharm Professional

    ID: 2DC289B4-939F-4A3F-B343-C1E86BA7E360

-   No Brew Cask for this
-   Download and install
-   &ldquo;use your JetBrains Account credentials in PyCharm to use this license&rdquo;
-   Import settings: I do not have any
-   Allow it to accept incoming network connections
-   PyCharm initial configuration
    -   Keymap: Emacs
    -   Theme: Default
    -   Editor colors and fonts: Default
    -   Enable opening files CMD: Yes `/usr/local/bin/charm`
-   Preferences
    -   Appearance & Behavior
        -   System Settings
            -   Usage Statistics
                -   Do send anonymous statistics: weekly
        -   Appearance
            -   Show tool window bars
    -   Editor
        -   General
            -   Use soft wraps
            -   Use soft wraps in console
            -   Appearance
                -   Show line numbers
                -   Use block caret
                -   nil Caret blinking
        -   Colors & Fonts
            -   [Solarized Theme](https://github.com/jkaving/intellij-colors-solarized): Dark
            -   General
                -   Caret: #839496
            -   Font
                -   DJSM 17
        -   Code Style
            -   Right margin column: 80

### WebStorm

    ID: 0C295430-3FF3-4ABC-BA15-1AEC5E26A603

-   Same configuration as PyCharm

### Textual IRC Client

    ID: A1592C54-F939-4C7E-938C-1C13EC8A2AAF

-   AppStore.

Only note changes from the current default

Set up preferences:

-   Preferences.
-   General.
    -   NO: Display MOTD
    -   YES: Save the state of queries
-   Highlights.
-   Notifications.
-   Controls.
-   Interface.
-   Style.
    -   General.
        -   Style: nox.
        -   Font: DJSM 17
    -   Inline Media.
        -   YES: Show images inline
-   Addons.
-   Advanced.
    -   Default Identity.
        -   grettke
        -   grettke💤
        -   grettke
        -   Grant Rettke

Server preferences:

-   Basic Settings.
    -   General
        -   YES: Recomment when server disconnects
        -   Messages.
            -   Part & Quit:
                -   Thompson
            -   Computer Sleep & Quit
                -   Hamming
    -   Connect commands: identify
-   Identity
    -   Wait for ID before joining

### Entropy

    ID: 9EDE18B7-DDA1-4FC1-8866-256596BA54D0

This is a [download](http://www.eigenlogik.com/entropy/) and manual install.

### Guitar Pro

    ID: 36F3F9F6-31D1-4517-94F3-B7A787F2C166

[Here](http://www.guitar-pro.com/en/index.php). Sign into MySongBook.

### GotoMeeting & Fuse

    ID: A3271ECD-A07A-45E2-A0DE-A82EE8FA6833

WebMeeting software.

### Cepestral Callie & David

    ID: FB2138CF-B62C-4BCB-A892-AB855A61535A

[Here](http://www.cepstral.com/).

You might need to log out and in again to make the &ldquo;Cepstral Voices&rdquo; appear in
System Preferences.

License them. Test them.

Set Dictation & Text to Speech to: Callie

### Microsoft Office

    ID: 568C1BC2-1569-4E3A-8246-594E0C889244

This is in BrewCask, but the download is waste of time. I have it locally.

I keep going back and forth on this one. Is it worth saving 15 minutes having to
install it myself?

Start it. It asks for your name. It asks about updates and stuff. Get them all.
Start Outlook. Enter in new license for that.

When activation occurs, the app always locks up then I quit it and it restarts
after sending an error report.

Don&rsquo;t let it access Contacts.

When it checks for updates, tell it to check daily.

### MacTex & GnuPlot

    ID: 4769C0C6-AA8F-4073-B233-253691004873

This is 2.4 GiB. That is not much. If you get the US mirror it is 20 minutes.

That is if you are lucky.

That makes the automated installer very slow. I just don&rsquo;t like it.

I will deal with it by installing it manually [here](https://tug.org/mactex/mirrorpage.html).

At this point, definitely I can build my resume here.

Once that is installed, install gnuplot:

```sh
brew install gnuplot --with-latex --with-pdflib-lite --with-tests --with-x11
```

Set up my TeX stuff for KOMA-script. Backup the default configuration first.

```sh
ls /usr/local/texlive/2014
sudo cp /usr/local/texlive/2014/texmf.cnf /usr/local/texlive/2014/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
ls /usr/local/texlive/2014
sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
```

Check that the path is really updated.

```sh
kpsewhich KomaDefault.lco
```

    /Users/gcr/git/bitbucket/texmf/tex/latex/KomaDefault.lco

The documents say to maybe do the following. I did it.

```sh
sudo mktexlsr
```

## App Store Installs

    ID: 798AD4C6-AFB7-4AB6-B794-16E1E83CDF5C

-   First check purchases, then the store

-   Microsoft Remote Desktop
    -   Don&rsquo;t open the session full-screen.
-   Text2Speech PRO
    -   Set default voice to Callie
-   PixelMator

# User Options, Manual

    ID: 548170EE-5409-4DF6-96BB-B1D384FC734B

-   Not really a user option, but open Keychain Access
    -   Preferences
    -   YES: Show keychain status in menu bar
        -   This gives you a lock-screen GUI command

## Desktop & Screen Saver

    ID: 996317F3-BB3B-43ED-A54B-AF469A8BBF3B

-   Desktop

The automatic setting works intermittently. If it failed, set it manually.
The image is [here](http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2015/02/M101-ORG.jpg). I downloaded it, too.

```sh
cd ~/Pictures/
curl -O http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2015/02/M101-ORG.jpg
cd ~/
```

-   Screen Saver
    -   Screen saver: Flurry. After 10 minutes.
    -   Hot corner
        -   Top left: Start screen saver
        -   Top right: Put display to sleep
        -   Bottom left: Disable screen saver

## Energy Saver

    ID: 51E4DE03-0ED5-4951-A772-2BB41A9CE56E

-   Energy Saver, Power Adapter
    -   Automatic graphics switching: yes
    -   Turn display off after minutes: 15
    -   Prevent computer from sleeping automatically when the display is off: yes
    -   Put hard disks to sleep when possible: yes
    -   Wake for network access: yes
    -   Enable power nap when plugged in: yes
    -   Show battery status in menu bar: yes

## Users & Groups &rarr; Login Options

    ID: 83C37544-BD69-4791-8C47-5AB8CEC01330

-   Automatic login: off
-   Display login window as: Name and password
-   Show the Sleep, Restart, and Shut Down buttons: yes
-   Show input menu in login window: no
-   Show password hints: no.
-   Show fast user switching menu as: icon
-   Use VoiceOver in the login window: no

## Security & Privacy

    ID: 8FC611D4-B8EA-4698-8981-E20B736F5F40

### General

    ID: 92BBCCA2-B373-4085-A69F-2F1A747D4FDC

-   User: Require password \_ after sleep or screen saver begins: yes, after 15 minutes
-   Disable automatic login: yes
-   Advanced &rarr; Require an administrator password access system-wide preferences: yes

### Firewall

    ID: ABEF9B70-2310-4A45-BA8E-F0E81B601222

-   Turn it on.
-   Block all incoming connections: no
-   Automatically allow signed software to receive connections: no
-   Enable stealth mode: yes

### HOSTS

    ID: F0E82C32-275D-4C66-8C19-13C21586D37D

Update it appropriately.

# Full System Backups

    ID: 01B5C019-E0D3-45A1-9C36-A6B493C03DE8

Doing provisioning using Kitchenplan and Brew and BrewCask still takes at least
6 hours. You still need to perform manual steps. For me, it is unavoidable. This
is painful. This is a waste of 6 hours. It is the waste of your evening. It is a
waste of your weekend.

My new plan is to get the box provisioned and image it there. I want to minimize
provisioning ever again. The opportunity here is that you learn new things each
time. That is cool. The problem is that your goal is not to learn new things
every time. It is a decision, and it needs to be thoughtfully made. This
evidence is valuable. It has helped me understand my decision to work in
virtuals here forward.

To image a full system:

-   Note the base configuration, `01`
-   Get system and application updates
-   Trim contents of included-folders
    -   Most of my stuff will never be in them anyway
    -   More like DropBox and Git
        -   Keep Git checkouts. Simpler. Update will get new stuff.
    -   `/Users/gcr/Documents`
    -   Empty the trash
    -   Vagrant box definitions will exist under source control, but the individual
        boxes will only ever live in the storage locations configured for the
        provider
    -   Double-check that all of your Git working-copies are pushed home.
-   Disk utility
    -   Verify disk permissions
        -   Logs a lot of info
        -   Unsure if any of it is useful
    -   Repair disk permissions if necessary
        -   At the very bottom will log &ldquo;Permissions repair complete&rdquo;
    -   Verify disk
    -   Repair disk if necessary
-   For the clone exclude
    -   `/Users/gcr/Downloads`
    -   `/Users/gcr/Dropbox`
    -   `/Users/gcr/tmp`
    -   `/Users/gcr/.vagrant.d/boxes`
        -   [Reference](http://docs-v1.vagrantup.com/v1/docs/boxes.html)
        -   How this works is that when CCC cloned that disk image back to the machine,
            this directory was present, and it was empty. I was curious about whether
            the directory would be present or not and happy to see it was.
        -   After upping a box successfully, I verified that the base box was
            installed here as expected
    -   `/VirtualBox VMs`
        -   VirtualBox stores its VMS here by default
        -   When you start making changes to a Vagrant box, they are saved [here](https://stackoverflow.com/questions/8225820/where-is-vagrant-saving-changes-to-the-vm)
        -   For example I booted up the Vagrant box from &ldquo;Getting started&rdquo;, created a
            hello world file, logged out and halted it, and this directory was
            `tmp_default_1426807980079_94539` was created in there and it contained all
            of the .vbox stuff for that machine.
            -   Verified that `vagrant destroy` deletes that directory
    -   `/Users/gcr/Documents/Virtual Machines`
        -   <http://kb.vmware.com/selfservice/search.do?cmd=displayKC&docType=kc&docTypeID=DT_KB_1_1&externalId=2056798>
        -   This seems to be the directory where VMWare creates machines when you do
            so through the GUI
    -   When Vagrant VMWare Fusion creates machines it creates them inside of a
        `.vagrant` directory where the Vagrantfile lives.
        -   The path is `<directory where the Vagrant file lives>/.vagrant/machines/default/vmware_fusion`
        -   Found this info [here](https://blog.safaribooksonline.com/2014/01/16/building-vagrant-vms-with-the-vmware-fusion-provider/) and verified it on my machine
        -   Verified that `vagrant destroy` deletes that directory
-   Make sure that this configuration, including Kitchenplan, is tagged
-   Note that tag here:
    -   Machine name
    -   Built from image
    -   Provisioning Tag
    -   Timestamp
    -   c02M-01-v1.7-2015-03-17T18:58:40-0500
-   On successful creation of the new image
    -   Erase the machine and clone the new image to it
        -   Address any image restoration issues now
    -   Backup this new image to Stargate
    -   Copy the Dropbox folder
