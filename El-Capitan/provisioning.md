-   **Start** with a local copy of this repository either by downloading it in a ZIP file or pulling it with Git
-   `Steps` implements provisioning
    -   ORG files are manual steps
    -   SH files are shell scripts which may require human input
    -   Perform them in order of their file names numerically eg `01..02..03..n`
    -   The steps are tedious, time consuming and boring so they are broken up into to logical units to make it easy for you to take a break and finish later without forgetting where you are and what you were doing
-   `Testing` tells you if it worked
-   Only read this document for
    -   An explanation of the provisioning steps
    -   Reference


# Steps

    ID: 6ACCC2CE-5EB4-42D6-AD12-0DC836C2A3FD


## OS X

    ID: EAD703CC-3234-4438-930D-C1BB2F50DF6B


### Installation

    header-args: :tangle "01_os-x-installation.org"

    ID: 46781470-E45C-4E6E-98E9-CD41507FF6FE

```org
- Re-image your box
- Step Prefix
  - There is a different manual set up for either a "on the metal" Host or a
    "virtualized" guest
  - These are the indicators
    - Host :: ~PHOSDI~
    - Guest :: ~IOSXECA~
- During configuration log into the App Store
- Make a user named ~gcr~ and choose an avatar
- Install software updates
- Development Tools
  - If you want to use XCode :: Go to the App Store and Install it
    - This step is not necessary to use the Brew stuff
    - 4.5GB download
    - During the download you can perform the other configuration steps
    - *Run it once*
  - Install the CLT. Choose *Install*.
    #+BEGIN_SRC sh
    xcode-select --install
    #+END_SRC
    - Command is idempotent
- Utility Scripts
  - Mount only required volumes
    - Clarify
      - Spotlight suggests applications and files on those volumes and
        you usually don't want that
      - Applications get locks on files on non host volumes
    - For =host1= that means =host1= and =Storage=
    - Write a shell script and run it at logon
      - Customize this for the install partition
        #+BEGIN_SRC sh
  #!/usr/bin/env bash
# -*- mode: sh; -*-
diskutil unmount /dev/disk0s3
diskutil unmount /dev/disk0s4
diskutil unmount /dev/disk0s6
diskutil unmount /dev/disk0s7
diskutil unmount /dev/disk0s8
        #+END_SRC
- System Preferences
  - Desktop & Screensaver: Flurry, 10m
  - *(Host)* Display \rarr Maximize resolution
  - Energy saver
    - *(Host)*
      - On power
        - Display off at 15m
        - Prevent computer from sleeping automatically when display is offp
          when display is off
      - On battery, Screen sleep 5m
        - Don't slightly dim the display on battery power
    - (Guest) :: Computer sleep never, Screen sleep 15
  - *(Host)* Keyboard \rarr Modifiers
    - Caps Lock \rarr Control
    - Control \rarr Caps Lock
  - Mouse
    - *(Host)* Connect Bluetooth mouse
    - Tracking Speed: 20%
  - Trackpad
    - Point & Click
      - Secondary click: TRUE
      - Tap to click: TRUE
  - *(Host)* Printers & Scanners
    - Add printer(s)
  - Sound
    - Show volume in menubar
  - Bluetooth
    - Show in menu bar
  - Users & Groups: Enable Guest User
- *(Host)* Show Keychain Access in Menubar
  - Start KeyChain Access
  - Preferences
  - Show keychain status in menubar
- Finder
  - Preferences
    - Sidebar
      - Favorites
        - <Home>
      - Devices
        - <Computer>
```


### Configuration

    header-args: :tangle "02_os-x-configuration.sh" :tangle-mode (identity #o755)

    ID: 46781470-E45C-4E6E-98E9-CD41507FF6FE

1.  Machine

        ID: 44A4C35C-E27A-462F-BBB2-A178F70194D8

    This script should be idempotent. Set the computer&rsquo;s &ldquo;names&rdquo;. There are 3 resources ([1](http://ilostmynotes.blogspot.com/2012/03/computername-vs-localhostname-vs.html), [2](http://osxdaily.com/2012/10/24/set-the-hostname-computer-name-and-bonjour-name-separately-in-os-x/), [3](http://hack.org/mc/writings/mac-survival.html)) that I used to make sense of the different names. It is simple, and new to me.

    Originally I set every name to the same value. Doing so didn&rsquo;t result in warnings but it did result in an incorrect &ldquo;Computer Name&rdquo; and &ldquo;Local Host Name&rdquo;. Based on that experience, I&rsquo;m going to give names using this strategy to name machines now:

    -   HostName
        -   All lower case
        -   <Logical name>-<UUID>.<org|vm>
    -   LocalHostName
        -   All lower case
        -   <Logical name>-<UUID>
    -   NetBIOS
        -   All lower case
        -   <Logical name>-<UUID>
    -   ComputerName
        -   &ldquo;<Logical name> (<UUID>)&rdquo;

    Defining this naming approach helped me learn more about the intent of the name and what I wanted from them.

    ```sh
    sudo scutil --set HostName ""
    echo "Enter HostName (plain old hostname): "
    read vhn
    sudo scutil --set HostName $vhn
    sudo scutil --set LocalHostName ""
    echo "Enter LocalHostName (name for Bonjour services): "
    read vlhn
    sudo scutil --set LocalHostName $vlhn
    sudo defaults delete 'com.apple.smb.server' NetBIOSName
    echo "Enter NetBIOSName (name that Windows boxes will see): "
    read vnbn
    sudo defaults write 'com.apple.smb.server' NetBIOSName -string $vnbn
    sudo scutil --set ComputerName ""
    echo "Enter ComputerName (human friendly GUI name): "
    read vcn
    sudo scutil --set ComputerName $cn
    ```

    Display login window as name and password.

    ```sh
    sudo defaults write /Library/Preferences/com.apple.loginwindow.plist SHOWFULLNAME -bool true
    ```

    Login message.

    ```sh
    sudo defaults write /Library/Preferences/com.apple.loginwindow.plist LoginwindowText -string "
    All creativity is an extended form of a joke.
              — Alan Kay"
    ```

    Cycle through system information by clicking on the clock at the login screen<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>.

    ```sh
    sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
    ```

    Disable Gatekeeper.

    ```sh
    sudo spctl --master-disable
    ```

2.  User

        ID: B0472249-DD96-45C4-A558-088A56501C3D

    This script should be idempotent.

    -   These commands are all [copied](https://github.com/kitchenplan/chef-osxdefaults/tree/master/recipes)
        -   Including the documentation
        -   Some of them have corrections and changes

    1.  Globals, Logical or Literal

            ID: EC01CF33-40EE-4F63-8A27-A88DE32FC557

        Set background.

        ```sh
        cd ~/Pictures/
        curl -O http://www.wisdomandwonder.com/wordpress/wp-content/uploads/2015/02/M101-ORG.jpg
        sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '~/Pictures/M101-ORG.jpg'";
        ```

        Set default volume.

        ```sh
        osascript -e 'set volume output volume 50'
        ```

        Disable auto-correct.

        ```sh
        defaults write 'NSGlobalDomain' NSAutomaticSpellingCorrectionEnabled -bool false
        ```

        Expand print panel by default.

        ```sh
        defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint -bool true
        defaults write 'NSGlobalDomain' PMPrintingExpandedStateForPrint2 -bool true
        ```

        Expand save panel by default.

        ```sh
        defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode -bool true
        defaults write 'NSGlobalDomain' NSNavPanelExpandedStateForSaveMode2 -bool true
        ```

        Automatically quit printer app once the print jobs complete.

        ```sh
        defaults write 'com.apple.print.PrintingPrefs' 'Quit When Finished' -bool true
        ```

        Hide the menubar.

        ```sh
        defaults write NSGlobalDomain _HIHideMenuBar -bool true
        ```

        Add battery percentage in menubar.

        ```sh
        defaults write 'com.apple.menuextra.battery' ShowPercent -bool true
        ```

        Add date in menubar clock.

        ```sh
        defaults write 'com.apple.menuextra.clock' DateFormat -string "EEE MMM d  HH:mm"
        ```

        Prevent Time Machine from prompting to use new hard drives as backup volume.

        ```sh
        defaults write 'com.apple.TimeMachine' DoNotOfferNewDisksForBackup -bool true
        ```

        Avoid creating .DS<sub>Store</sub> files on network volumes.

        ```sh
        defaults write 'com.apple.desktopservices' DSDontWriteNetworkStores -bool true
        ```

        Save to disk (not to iCloud) by default.

        ```sh
        defaults write 'NSGlobalDomain' NSDocumentSaveNewDocumentsToCloud -bool false
        ```

        Increase window resize speed for Cocoa applications.

        ```sh
        defaults write 'NSGlobalDomain' NSWindowResizeTime -float 0.001
        ```

        Use the Graphite theme.

        ```sh
        defaults write 'NSGlobalDomain' AppleAquaColorVariant -int 6
        ```

        Use dark menu bar and Dock

        ```sh
        defaults write 'NSGlobalDomain' AppleInterfaceStyle -string Dark
        ```

        Disable the “Are you sure you want to open this application?” dialog.

        ```sh
        defaults write com.apple.LaunchServices LSQuarantine -bool false
        ```

        Display ASCII control characters using caret notation in standard text views. Try e.g. \`cd /tmp; unidecode &ldquo;\x{0000}&rdquo; > cc.txt; open -e cc.txt\`.

        ```sh
        defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
        ```

        Disable automatic termination of inactive apps.

        ```sh
        defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
        ```

        Disable the crash reporter.

        ```sh
        defaults write com.apple.CrashReporter DialogType -string "none"
        ```

        Set Help Viewer windows to non-floating mode.

        ```sh
        defaults write com.apple.helpviewer DevMode -bool true
        ```

        Restart automatically if the computer freezes.

        ```sh
        sudo systemsetup -setrestartfreeze on
        ```

        Check for software updates daily, not just once per week.

        ```sh
        defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
        ```

        Disable Notification Center and remove the menu bar icon.

        ```sh
        launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null
        ```

        Disable smart quotes as they’re annoying when typing code.

        ```sh
        defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
        ```

        Disable smart dashes as they’re annoying when typing code.

        ```sh
        defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
        ```

    2.  Hardware

            ID: F6533ADA-A21F-49E7-8DD7-4447CF69A528

        Disable press-and-hold for keys in favor of key repeat.

        ```sh
        defaults write 'NSGlobalDomain' ApplePressAndHoldEnabled -bool false
        ```

        Use all F1, F2, etc. keys as standard function keys.

        ```sh
        defaults write 'NSGlobalDomain' com.apple.keyboard.fnState -bool true
        ```

        Increase sound quality for Bluetooth headphones/headsets.

        ```sh
        defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
        ```

    3.  Dock

            ID: B3122846-4906-4F7C-AD02-63A84B47A92D

        Automatically hide and show the dock.

        ```sh
        defaults write com.apple.dock autohide -bool true && killall Dock
        ```

        Do not animate opening applications from the Dock.

        ```sh
        defaults write com.apple.dock launchanim -bool false && killall Dock
        ```

        Enable highlight hover effect for the grid view of a stack.

        ```sh
        defaults write com.apple.dock mouse-over-hilte-stack -bool true && killall Dock
        ```

        Make Dock icons of hidden applications translucent.

        ```sh
        defaults write com.apple.dock showhidden -bool true && killall Dock
        ```

        Minimize to application.

        ```sh
        defaults write com.apple.dock minimize-to-application -bool true && killall Dock
        ```

        Move the Dock to the left side of the screen.

        ```sh
        defaults write com.apple.dock orientation -string left && killall Dock
        ```

        Remove the animation when hiding/showing the dock.

        ```sh
        defaults write com.apple.Dock autohide-time-modifier -float 0 && killall Dock
        ```

        Remove the auto-hiding Dock delay&ldquo;.

        ```sh
        defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
        ```

        Set the icon size of Dock items to 50 pixels.

        ```sh
        defaults write com.apple.Dock tilesize -int 50 && killall Dock
        ```

        Show indicator lights for open applications in the Dock.

        ```sh
        defaults write com.apple.Dock show-process-indicators -bool true && killall Dock
        ```

        Wipe all (default) app icons from Dock.

        ```sh
        defaults write 'com.apple.dock' persistent-apps -array '' && killall Dock
        ```

        Speed up Mission Control animations.

        ```sh
        defaults write 'com.apple.dock' expose-animation-duration -float 0.1 && killall Dock
        ```

    4.  Finder

            ID: E7984F15-4360-4F00-B754-CC00FC4D4124

        Allow text selection in Quick Look.

        ```sh
        defaults write 'com.apple.finder' QLEnableTextSelection -bool true && killall Finder
        ```

        Automatically open a new Finder window when a volume is mounted.

        ```sh
        defaults write 'com.apple.frameworks.diskimages' auto-open-ro-root -bool true && killall Finder
        defaults write 'com.apple.frameworks.diskimages' auto-open-rw-root -bool true && killall Finder
        defaults write 'com.apple.finder' OpenWindowForNewRemovableDisk -bool true && killall Finder
        ```

        Disable the warning before emptying the Trash.

        ```sh
        defaults write 'com.apple.finder' WarnOnEmptyTrash -bool false && killall Finder
        ```

        Disable the warning when changing a file extension.

        ```sh
        defaults write 'com.apple.finder' FXEnableExtensionChangeWarning -bool false && killall Finder
        ```

        Set finder to display full path in title bar.

        ```sh
        defaults write 'com.apple.finder' _FXShowPosixPathInTitle -bool true && killall Finder
        ```

        New Finder window shows the homefolder.

        ```sh
        defaults write 'com.apple.finder' NewWindowTarget -string PfHm && killall Finder
        ```

        When performing a search, search the current folder by default.

        ```sh
        defaults write 'com.apple.finder' FXDefaultSearchScope -string SCcf && killall Finder
        ```

        Show all files in Finder.

        ```sh
        defaults write 'com.apple.finder' AppleShowAllFiles -bool true && killall Finder
        ```

        Show file extensions in Finder.

        ```sh
        defaults write 'com.apple.finder' AppleShowAllExtensions -bool true && killall Finder
        ```

        Show path bar in Finder.

        ```sh
        defaults write 'com.apple.finder' ShowPathbar -bool true && killall Finder
        ```

        Show status bar in Finder.

        ```sh
        defaults write 'com.apple.finder' ShowStatusBar -bool true && killall Finder
        ```

        Sidebar icon size Small.

        ```sh
        defaults write 'NSGlobalDomain' NSTableViewDefaultSizeMode -bool true && killall Finder
        ```

        -   Finder view style settings [[icnv: Icon View

        Nlsv: List View clmv: Column View Flwv: Cover Flow View][Via]]

        -   **icnv:** Icon View
        -   **Nlsv:** List View
        -   **clmv:** Column View
        -   **Flwv:** Cover Flow View

        ```sh
        defaults write 'com.apple.Finder' FXPreferredViewStyle Nlsv && killall Finder
        ```

        [Via:](https://gist.github.com/nickbudi/11277384) Set item arrangement to none (enables folder dropdowns, &rsquo;Name&rsquo; if you want to remove them)

        ```sh
        defaults write com.apple.finder FXPreferredGroupBy -string "None"
        ```

        Sort list view by kind in ascending order (Windows style).

        ```sh
        /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
        /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ExtendedListViewSettings:columns:4:ascending true" ~/Library/Preferences/com.apple.finder.plist
        /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:sortColumn kind" ~/Library/Preferences/com.apple.finder.plist
        /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:ListViewSettings:columns:kind:ascending true" ~/Library/Preferences/com.apple.finder.plist
        ```

        Finder: disable window animations and Get Info animations.

        ```sh
        defaults write com.apple.finder DisableAllAnimations -bool true
        ```

        Show nothing on the desktop.

        ```sh
        defaults write com.apple.finder CreateDesktop -bool false
        defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
        defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
        defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
        defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
        ```

    5.  Screen

            ID: 76D10582-3909-4CBB-9770-DF3D4F7C9DB0

        Require password immediately after sleep or screen saver begins.

        ```sh
        defaults write com.apple.screensaver askForPassword -int 1
        defaults write com.apple.screensaver askForPasswordDelay -int 0
        ```

        Disable shadow in screenshots.

        ```sh
        defaults write com.apple.screencapture disable-shadow -bool true
        ```

        Save screenshots in PNG format.

        ```sh
        defaults write 'com.apple.screencapture' type -string png && killall SystemUIServer
        ```

        Enable subpixel font rendering on non-Apple LCDs.

        ```sh
        defaults write 'NSGlobalDomain' AppleFontSmoothing -int 2
        ```

        [Via](https://github.com/robb/.dotfiles/blob/master/osx/defaults.install)

        ```sh
        mkdir -p ~/Screen\ Shots
        defaults write com.apple.screencapture location ~/Screen\ Shots
        ```

    6.  Hotcorners

            ID: 14E7437D-7BE9-4149-818B-ADC7B145A822

        -   Possible values:
            -   **0:** no-op
            -   **2:** Mission Control
            -   **3:** Show application windows
            -   **4:** Desktop
            -   **5:** Start screen saver
            -   **6:** Disable screen saver
            -   **7:** Dashboard
            -   **10:** Put display to sleep
            -   **11:** Launchpad
            -   **12:** Notification Center

        Top left screen corner &rarr; Desktop.

        ```sh
        defaults write com.apple.dock wvous-tl-corner -int 4
        defaults write com.apple.dock wvous-tl-modifier -int 0
        ```

        Top right screen corner &rarr; Mission Control.

        ```sh
        write defaults com.apple.dock wvous-tr-corner -int 2
        defaults write com.apple.dock wvous-tr-modifier -int 0
        ```

        Bottom left screen corner &rarr; Application window.

        ```sh
        defaults write com.apple.dock wvous-bl-corner -int 3
        defaults write com.apple.dock wvous-bl-modifier -int 0
        ```

        Bottom right screen corner &rarr; Nothing.

        ```sh
        defaults write com.apple.dock wvous-br-corner -int 0
        defauts write com.apple.dock wvous-br-modifier -int 0
        ```

    7.  Spaces

            ID: A76717BD-1BF0-48D3-8E69-3A03BFE2B4A2

        ```sh
        # Don’t automatically rearrange Spaces based on most recent use
        defaults write com.apple.dock mru-spaces -bool false
        # Set edge-dragging delay to 0.7
        defaults write com.apple.dock workspaces-edge-delay -float 1.0
        ```

    8.  Mouse

            ID: 319EDC92-B863-4D2E-A951-8479F9171FFF

        Reasonably fast.

        ```sh
        defaults write 'NSGlobalDomain' com.apple.mouse.scaling -float 2
        ```

    9.  Terminal

            ID: 20C7C795-5C0A-442A-9D0F-669D1637A1D2

        Only use UTF-8 in Terminal.app.

        ```sh
        defaults write com.apple.terminal StringEncodings -array 4
        ```

    10. Activity Monitor

            ID: D36D6B69-54DC-4666-AB48-731A2FA7130F

        Show the main window when launching Activity Monitor.

        ```sh
        defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
        ```

        Visualize CPU usage in the Activity Monitor Dock icon.

        ```sh
        defaults write com.apple.ActivityMonitor IconType -int 5
        ```

        Show all processes in Activity Monitor.

        ```sh
        defaults write com.apple.ActivityMonitor ShowCategory -int 0
        ```

        Sort Activity Monitor results by CPU usageefaults write com.apple.ActivityMonitor Sort.Column -string &ldquo;CPUUsage&rdquo;.

        ```sh
        defaults write com.apple.ActivityMonitor SortDirection -int 0
        ```


## Administration

    ID: 539CAD89-6A07-404F-8AE6-D69B99C055FF


### Install

    header-args: :tangle "03_administration.sh" :tangle-mode (identity #o755)

    ID: E0655C3B-2CEB-446E-BB5E-9A85CA4F8FF2

1.  Brew & Brew Cask

        ID: 3CD7F53A-C7B3-4C54-9E43-7B43E1D2E54F

    Brew is [here](http://brew.sh/).

    ```sh
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

    BrewCask is [here](http://caskroom.io).

    ```sh
    brew tap caskroom/cask
    ```

2.  Git Checkout Directory

        ID: 1BCF52F0-EA8B-4A56-9246-8DFF5131A5ED

    Prepare the anonymous GitHub directory.

    ```sh
    rm -rf ~/git/github-anonymous
    mkdir -p ~/git/github-anonymous
    cd ~/git/github-anonymous
    ```

3.  Bash Configuration

        ID: 56989957-A8F5-4C47-9B27-31A3AC4ED8DD

    Set up Bash. Make everything expected available.

    ```sh
    git clone https://github.com/grettke/bash.git
    cd bash
    ./deploy
    cd
    ```

4.  Bash Software

        ID: 223C4BB3-2F4D-418C-93B4-8AFF0801BD43

    [Via](http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/).

    ```sh
    echo $BASH_VERSION
    brew install bash
    if grep "/usr/local/bin/bash" /etc/shells > /dev/null; then
        echo "brew bash already configured in shells; doing nothing"
    else
        sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
        chsh -s /usr/local/bin/bash
    fi
    echo $BASH_VERSION
    ```

5.  Fonts

        ID: 03993E03-45DF-498A-B197-283C61313E39

    ```sh
    brew tap caskroom/fonts
    ```

    Install them automatically.

    ```sh
    brew cask install font-dejavu-sans
    brew cask install font-quivira
    brew cask install font-noto-sans
    brew cask install font-noto-sans-symbols
    brew cask install font-symbola
    brew cask install font-fontawesome
    brew cask install font-montserrat
    ```

    1.  PopChar

            ID: 7EEB45C3-B585-421A-A710-43B85143BC75

        ```sh
        brew cask install popchar
        ```

6.  Terminal

        ID: 4A37A9A3-A9D6-4ECD-AB89-EB0FE9815091

    ```sh
    rm -rf ~/git/github-anonymous/osx-terminal.app-colors-solarized
    cd ~/git/github-anonymous
    git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
    ```

7.  Fortune

        ID: CFE4D4B5-0B4E-434A-83DA-7AF5CBBDD5BD

    ```sh
    brew install fortune
    ```

8.  Recipes

        ID: 54BA64D3-899B-4AA4-A68F-237F68B0CF2F

    You will want to know details about the software you are installing. Details include version number, dependencies, and post-installation requirements. Sometimes the recipes install old versions of the software and need to be updated. Sometimes recipes don&rsquo;t link the software and you need to do it manually. When you want details, you will have easy access to them that neither the Github GUI or the Brew Cask GUI easily provide.

    ```sh
    cd ~/git/github-anonymous
    git clone https://github.com/Homebrew/homebrew.git
    git clone https://github.com/caskroom/homebrew-cask.git
    ```


### Configure

    header-args: :tangle "04_administration.org"

    ID: B7B4F0A4-C676-4B79-828F-837B3DAE851E

```org
* Terminal

- Profiles
  - Import the Solarized dark theme
  - Set it to the default theme
  - Set the font to DJSM 17
- Profiles \rarr Advanced
  - [ ] Set locale environment variables on startup
    - Set them in your =bashrc=, not here

* PopChar

- Register it
- Preferences
  - Activation
    - Location: Status item
    - Close window then
      - After selecting a char: No
      - When mouse leaves window: No
      - When clicking outside window: No
```


## Usability

    ID: 83A1561E-B613-4ED3-96AD-93B47F001C26


### Install

    header-args: :tangle "05_usability.sh" :tangle-mode (identity #o755)

    ID: 66C750A9-6702-43CA-86A2-A033B47B0138

1.  karabiner

        ID: EE4E6BA8-4BB5-4ACD-9657-36C776448CE4

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install karabiner
    else
        echo "karabiner: Only install on hosts"
    fi
    ```

2.  Spectacle

        ID: 1553426A-6A83-4104-AAA8-6DEF05FBBBC4

    ```sh
    brew cask install spectacle
    ```

3.  Little Snitch

        ID: 5D68F827-7AEA-4C40-A2FF-41ABDAAA53A9

    ```sh
    brew cask install little-snitch
    ```

4.  Bartender

        ID: 119F1391-9A8A-49F6-810E-E2620F5AF15F

    ```sh
    brew cask install bartender
    ```

5.  flux

        ID: F0BE2195-81FE-42F7-92F2-7AEB6A834041

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install flux
    else
        echo "flux: Only install on hosts"
    fi
    ```

6.  xquartz

        ID: 51C9B39A-45E3-4BD6-ADD1-C0A2B5B3A8C1

    ```sh
    brew cask install xquartz
    defaults write org.macosforge.xquartz.X11 dpi -int 170
    ```

7.  Tuxera NTFS

        ID: 18B65FB4-8884-4920-9A54-4A4CECBFED3F

    ```sh
    brew cask install tuxera-ntfs
    ```

8.  SwitchResX

        ID: 12A91877-4049-4C92-8430-71DEA1B5B66F

    ```sh
    brew cask install switchresx
    ```


### Configure

    header-args: :tangle "06_usability.org"

    ID: 37C51946-B8BE-41B4-BEA6-7DBA95E1955F

```org
* Karabiner

- Run it. Approve it. Configure it with the following. Look for the
  heading with the name below following "Modify".
- Check:
  - Return to Option_L
    (+ When you type Return only, send Return)
- Under MenuBar
  - [X] Show icon in menubar
    - [X] Show settings name in menu bar
  - SettingsList
    - Create a new one named "Nothing"
      - This is for "turning Karabiner off"

* Spectacle

- Start it
- Enable integration
- Start at boot

* Little Snitch

- Run the installer
- Start it
- Register it
- Configure per below
- Enable integration
- Start at boot

Granting:

- *Always grant minimum required*
- For known good TLD's, grant it forever
  - Lots of connections to *.apple.com
  - For apps that want to call homen do forever

- Gen
  - Show inactive warning
  - Silent mode: no
  - Show status in menu bar.
- Alert:
  - Detail level: Show full details
  - Yes: Confirm automatically
  - NO: Confirm with return and escape.
    - Can use control-return and command-return intead
- Monitor:
  - Keyboard shortcut: Off
  - Show network activity in menu bar.
    - Show data rates numerically. Monochrome.
  - Show auto when mouse enters. Hide in 2s.
- APS
  - Yes: Enable automatic profile switching
    - When joining: Ask
  - Yes: Save geolocation of networks.
- Security
  - Allow rules and profile edit.
  - Allow profile switch.
  - Allow preference editing
  - Respect privacy.
- Advanced
  - Approve rules automatically.
- Update
  - Automatically check for updates daily

* Bartender

- License it
- GENERAL
  - Launch Bartender at login: yes.
  - At bartender launch: show bartender bar: NO.
  - Bartender bar: autohides, YES.
- Appearance
  - Menu bar icon: "..."
  - Show when bartender bar is open: YES.

- Never hide
  - Volume
  - Clock
  - Little Snitch
  - Bluetooth
  - Wifi
  - SwitchResX
  - Webcam Settings
  - Screenflow
- Hide everything else

* flux

*Only install on hosts*

- Enable at startup

* Tuxera NTFS

- Install it
  - brew only downloads the installer
- License it

* SwitchResX

- License it
- General Settings
  - Key shortcut
    - Open: Command-F10
  - Startup Settings
    - [X] Launch SwitchResX Daemon automatically after login

* XQuartz

- Log out and back in again

* Inkscape

- [[https://inkscape.org/en/download/mac-os/][Follow directions]]
```


## Utility

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B


### Install

    header-args: :tangle "07_utility.sh" :tangle-mode (identity #o755)

    ID: F2B0FCF0-1F56-4D3B-AC9F-10F4E430BBE2

1.  OpenSCAD

        ID: 865B8B77-061A-4C5C-AB0D-B15F2261B5F5

    ```sh
    brew cask install openscad
    ```

2.  FreeCAD

        ID: 3B4888B4-87C5-4108-A4C8-E2E5D835FFC3

    ```sh
    brew cask install freecad
    ```

3.  Java

        ID: 7E76DE2C-7836-44B0-8636-90BB876A5E33

    ```sh
    brew cask install java
    ```

4.  ditaa

        ID: 9854EF35-CB8E-4DBA-99E9-E41B9E5947C9

    ```sh
    brew install ditaa
    ```

5.  plantuml

        ID: 0EB0DB85-1BCF-46AB-AF56-0653A41ABF82

    ```sh
    brew install plantuml
    ```

6.  languagetool

        ID: 860B895C-E8C7-436E-BE3A-23F6B4605211

    ```sh
    brew install languagetool
    ```

7.  aspell

        ID: EA68D5E2-13DC-4B3D-B01C-DB023A989199

    ```sh
    brew install aspell -all
    ```

8.  graphviz

        ID: 1CB4FAE9-39E8-4818-90D5-3AE372CD3BB8

    ```sh
    brew install graphviz
    ```

9.  pandoc

        ID: 48D995F7-2EAC-49AC-ABC1-18A18A237901

    ```sh
    brew install pandoc
    ```

10. Marked 2

        ID: 844E1D37-0246-4C05-A52F-DE69DBB9B8BD

    ```sh
    brew cask install marked
    ```

11. ImageMagic

        ID: CBBBABD0-B049-4669-B113-4417A04DD613

    ```sh
    brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
    ```

12. povray

        ID: 196A365A-802C-48F4-B35D-02958CF95E78

    ```sh
    brew install povray --with-openexr
    ```

13. growlnotify

        ID: 9367E78C-5F6F-44A2-A370-CD0AF9D41F40

    ```sh
    brew cask install growlnotify
    ```

14. xmllint

        ID: 55AFF634-C899-4667-BC25-47F9099DFF9A

    ```sh
    brew install libxml2
    ```

15. dos2unix

        ID: 59D47685-D541-4D78-88BF-F3313FE7DF10

    ```sh
    brew install dos2unix
    ```

    Sometimes installation [fails](https://github.com/Homebrew/homebrew/issues/33622) with the error.

        gcr@vela:.../man/de/man1⮞ brew link dos2unix
        Linking /usr/local/Cellar/dos2unix/7.3.2...
        Error: Could not symlink share/man/de/man1/dos2unix.1
        /usr/local/share/man/de/man1 is not writable.

    The solution is.

        chown -R `whoami` /usr/local/share/man/de/man1

16. ccrypt

        ID: F9E3F2A3-F16A-4EB8-8F4F-4FF47C7BBE06

    ```sh
    brew install ccrypt
    ```

17. tree

        ID: 8A7F33C7-CF3D-4E64-A63E-2AECD13FFD5F

    ```sh
    brew install tree
    ```

18. archey

        ID: AAF25357-3F8F-4A19-902D-D494D4D7FE38

    ```sh
    brew install archey
    ```

19. figlet

        ID: ADF24324-CF88-44E0-BE77-DC65DF37502E

    ```sh
    brew install figlet
    ```

20. Freemind

        ID: A867B6FD-CD3A-4D5F-9EAF-26E96D31D760

    ```sh
    brew cask install freemind
    ```


### Configure

    header-args: :tangle "08_utility.org"

    ID: D49412F1-54B0-4551-A449-6D353D1F973D

```org
* OpenSCAD

- View
  - Hide editor

* Marked 2

- License it
- Chose "Code" profile which chooses
  - Default style: Github
  - Processor: Discount (GFM)
  - Syntax Highlight Style: Github
  - Enabled
    - Syntax Highlighting
    - GitHub Checkboxes
    - MathJaxq
- Preferences
  - General
    - [ ] Show Style Picker
    - [ ] Show word count
  - Preview
    - [X] Enable Mini Map navigation
    - [X] Show scroll progress indicator
    - [X] Automatically validate URLs on update
  - Style
    - Default style: GitHub
  - Proofing
    - [X] Highlight Markdown syntax errors
```


## Internet

    ID: 1EBB115D-FF82-4A21-8EFC-8D8634C0CDEB


### Install

    header-args: :tangle "09_internet.sh" :tangle-mode (identity #o755)

    ID: 138B24D9-2E1B-4D95-B068-BFBE2275755D

1.  MPlayer OSX Extended

        ID: C47DA927-A6B2-4751-98AC-D3200E6F4095

    ```sh
    brew cask install mplayer-osx-extended
    ```

2.  Skype

        ID: 6003585A-A3B2-453A-B3CF-33240C69BB0E

    Only install it on hosts.

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install skype
    else
        echo "skype: Only install on hosts"
    fi
    ```

3.  WhatsApp

        ID: orgmode:gcr:vela:CEA0BEE8-E951-4304-BDDE-05DBFA39FBAD

    ```emacs-lisp
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install whatsapp
    else
        echo "whatsapp: Only install on hosts"
    fi
    ```

4.  Dropbox

        ID: 97065F78-F2C3-4189-A24E-BAB474EC2D59

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install dropbox
    else
        echo "dropbox: Only install on hosts"
    fi
    ```

5.  Chrome

        ID: 27B3E977-821E-4966-B6CA-438212B4CA2A

    ```sh
    brew cask install google-chrome
    ```

6.  Firefox

        ID: 2348C82F-F560-4C30-8B80-9D7EE4D4291F

    ```sh
    brew cask install firefox
    ```

    Sometimes this install fails. I checked the file download. The file exists. The name hasn&rsquo;t changed. Did a manual install instead.

7.  Opera

        ID: 2348C82F-F560-4C30-8B80-9D7EE4D4291F

    ```sh
    brew cask install opera
    ```

8.  Filezilla

        ID: 3F67D0FE-1FE7-4578-9C71-DE4DBD6F75C2

    ```sh
    brew cask install filezilla
    ```

9.  Slack

        ID: 6B546C16-0EBC-4304-82F0-D0ED2D7F0AF9

    ```sh
    brew cask install slack
    ```

10. Kindle

        ID: 75FEF4AC-89B2-4934-8D71-ECE0420A2189

    ```sh
    brew cask install kindle
    ```

11. wget

        ID: C55C637C-818F-40C4-B55A-39641BB1FAD2

    ```sh
    brew install wget
    ```

12. Screenflow

        ID: 3D67DF5D-CB4A-4C75-B587-1A5724259216

    ```sh
    brew cask install screenflow
    ```

13. inkscape

        ID: 6919160F-2681-4547-AB71-0D8CB19AD43C

    -   When I installed it via Brew-Cask the app would not run
        -   No errors were reported
    -   Switched to brew
    -   Installation notes
        -   Lot of C++ stuff
        -   Freetype
        -   Fontconfig
        -   cairo
        -   gsl
        -   gobject-introspection
        -   gtk
        -   pango
        -   harfbuzz
        -   Avoid the builtin
            -   get-text
            -   icu4c
    -   Tried to run it
        -   Fontconfig error: Cannot load default config file
        -   Segmentation fault: 11
        -   Set FONTCONFIG<sub>PATH</sub>=/opt/X11/lib/X11/fontconfig
        -   Tried running inkscape: it ran
    -   <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-07-19 Tue 19:01&gt;</span></span>
        -   X version still doesn&rsquo;t work right
        -   Switched to Brew Cask
        -   Updated xquartz
        -   That didn&rsquo;t work, went back to plain brew

    ```sh
    brew install homebrew/gui/inkscape
    ```

14. gimp

        ID: 6C070BEE-9228-45F8-8440-F0198D6D6742

    ```sh
    brew cask install gimp
    ```

15. airy

        ID: orgmode:gcr:vela:B0F987C4-55C3-4D8E-8C47-631F26A1F1D2

    ```sh
    brew cask install airy
    ```


### Configure

    header-args: :tangle "10_internet.org"

    ID: A8BA5927-38E4-4B49-8DDC-92FDD05F468B

```org
* MPlayer OSX Extended

- Run it
- [[http://www.sample-videos.com/][Test it]]
- Volume works?

* Skype

*Only install on hosts*

- Log in and disable notifications for log in and out

* Dropbox

*Only install on hosts*

- Log in
- Sync nothing right away
- Choose what is critical here
  - Screenshots
  - Everything
- Pause it and copy everything over on a wired network

* Chrome

- Sign into Chrome
- Let the settings sync
- All the JS disabling stuff needs you to approve it. It is irritating.
  You always forget to approve it and make worse.
  - Disable ScriptSafe right away. Turn it on as needed.
- Log into gmail

* Firefox

- Install the standard plugins
  - NoScript
- Log into gmail

* Opera

- Run it
- Log into gmail

* FileZilla

- Set up Filezilla for WnW

* Slack

- Open-at-Login
- Join
  - livecodepublic
  - milwaukee

* Kindle

- Login

* Screenflow

- Register

* Airy

- Register
- Configure default download path
```


## DevOps

    ID: 203E96B0-926B-4A81-8793-A7B73792E303


### Install

    header-args: :tangle "11_dev-ops.sh" :tangle-mode (identity #o755)

    ID: 0B9DFAC8-45F5-4358-9A7D-C4DAAA3A7A69

1.  Carbon Copy Cloner

        ID: F0BE2195-81FE-42F7-92F2-7AEB6A834041

    Only install it on hosts. The brew version is 3 so install this manually.

2.  VMWare Fusion

        ID: 96ADB3AF-1BDB-4F31-BB31-D5E32221AC8D

    Only install it on hosts.

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install vmware-fusion
    else
        echo "vmware-fusion: Only install on hosts"
    fi
    ```

3.  VirtualBox

        ID: 04B646A2-EFDE-4179-BDA1-A9857F421B0F

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install virtualbox
        brew cask install virtualbox-extension-pack

    else
        echo "virtualbox: Only install on hosts"
    fi
    ```

4.  Vagrant

        ID: 7B45D9BF-6FD5-4624-9F06-671D33D76A78

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install vagrant
        vagrant plugin install vagrant-digitalocean
    else
        echo "vagrant: Only install on hosts"
    fi
    ```

5.  Packer

        ID: 7C812779-2F0F-4F0A-959E-BF8EEE44C1B3

    ```sh
    if [ ! -d "/Library/Application Support/VMware Tools" ]; then
        brew cask install packer
    else
        echo "packer: Only install on hosts"
    fi
    ```

6.  iPartition

        ID: C311D47F-1D57-47EC-A8AE-36973EB8F33E

    ```sh
    brew cask install ipartition
    ```


### Configure

    header-args: :tangle "12_dev-ops.org"

    ID: 3A6DCCFC-D601-4FA1-9013-82BDC97DF8D8

```org
* Carbon Copy Cloner

*Only install on hosts*

- Install version 4
- License it

* VMWare

*Only install on hosts*

- On a host: License it

* Vagrant

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

* Packer

- Nothing at this time

* iPartition

- License it
```


## Development

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B


### Install

    header-args: :tangle "13_development.sh" :tangle-mode (identity #o755)

    ID: F2B0FCF0-1F56-4D3B-AC9F-10F4E430BBE2

1.  Deltawalker

        ID: D8E6483D-FF38-4A25-BA43-3CA7516B8789

    ```sh
    brew cask install deltawalker
    ```

2.  Python

        ID: 1BA55F5A-9902-4539-9494-0231C4DBD9B6

    Install Python 2 and virtualenv.

    ```sh
    brew install python
    brew linkapps python
    pip install virtualenv
    pip install --upgrade pip setuptools virtualenv
    ```

    1.  Proselint

            ID: orgmode:gcr:vela:8F8E8E86-F202-434A-BF25-A3160CB4A4CF

        Install proselint.

        ```sh
        rm -rf ~/util/proselint
        mkdir -p ~/util/proselint
        cd ~/util/proselint
        virtualenv env
        venv
        pip install proselint
        ```

3.  Perl

        ID: A45C44A3-CDD2-4F37-81DF-93659D368EB7

    -   Get the [latest Perl](https://www.perl.org/get.html) via [PerlBrew](https://perlbrew.pl/)
    -   Verify you are using the latest
    -   Install CPANM because it works better with PerlBrewl
    -   Install [Unidecode](http://search.cpan.org/~sburke/Text-Unidecode-1.27/lib/Text/Unidecode.pm) for ASCII&rsquo;fication

    ```sh
    \curl -L https://install.perlbrew.pl | bash
    ~/perl5/perlbrew/bin/perlbrew install perl-5.24.0
    perl -v
    ~/perl5/perlbrew/bin/perlbrew switch perl-5.24.0
    perl -v
    perlbrew install-cpanm
    cpanm install Text::Unidecode
    ```

4.  Ruby

        ID: B7D03962-A386-4E62-AA68-3A7F95AF2CA4

    For everything beyond the built in.

    ```sh
    brew install ruby
    ```

5.  Racket

        ID: 6D423497-C4D9-41BF-831C-1A6E665908A5

    ```sh
    brew cask install racket
    ```

6.  forth

        ID: 29FAB329-3F6B-4618-9B9C-1A297F3B994F

    ```sh
    brew install gforth
    ```

7.  node & npm

        ID: orgmode:gcr:vela:EF414304-60AF-437D-AE4A-89532D3AEC3A

    `Brew installs =NPM` by defailt with `Node`.

    ```sh
    brew install node
    ```

    1.  jshint

            ID: orgmode:gcr:vela:7C84C823-61B3-413B-9F23-91E87AD755A3

        ```sh
        npm install -g jshint
        rm ~/.jshintrc
        ln -s ~/src/help/.jshintrc ~/.jshintrc
        ```

8.  GNU APL

        ID: 733B5BB9-A577-43D3-B837-624DAB3032AB

    ```sh
    brew install gnu-apl
    ```

9.  git

        ID: 1F0C8A4B-097E-4090-93A7-8A2958331E4F

    For everything beyond the built in.

    ```sh
    brew install git
    ```

10. EMACS

        ID: 11284C48-AF3A-437F-B779-15C46B08B322

    ```sh
    brew install emacs --with-cocoa --with-gnutls --with-imagemagick
    brew linkapps
    ```

11. Sourcetree

        ID: 11602B65-2D6C-4A6D-805C-8ED0B5509B09

    ```sh
    brew cask install sourcetree
    ```

12. sml

        ID: 223E3DE6-7CA4-4831-9071-A7884C941A48

    ```sh
    brew install smlnj
    ```

13. cvs

        ID: 868C1487-47DD-40E9-832D-CBFCA6A74661

    ```sh
    brew install cvs
    ```

14. bzr

        ID: 000C4D3B-68E0-4356-8F1B-B9AA57F8468A

    ```sh
    brew install bzr
    ```

15. mercurial

        ID: 4D35743F-DBC4-4A42-9104-8B4E6DB2CD5E

    ```sh
    brew install hg
    ```

16. IntelliJ Idea

        ID: 313F1B11-75E2-438A-9D48-16C233F1C2DB

    ```sh
    brew cask install intellij-idea
    ```

17. PyCharm

        ID: 18D4526F-B616-497D-A2A6-D39A6C541147

    ```sh
    brew cask install pycharm
    ```

18. WebStorm

        ID: 14FBE5CB-8068-4795-A549-FFD16649E46D

    ```sh
    brew cask install webstorm
    ```

19. R Studio

        ID: 19930D0D-7A42-468E-B60E-134F1BEAA30E

    ```sh
    brew cask install rstudio
    ```

20. Dash

        ID: DE662BC7-83EC-4E6F-B6ED-9965C3687E60

    ```sh
    brew cask install dash
    ```

21. glpk

        ID: EF0A6FF1-9E4E-4A30-B8A0-2EC9B6D3A295

    ```sh
    brew tap homebrew/science
    brew install glpk
    ```

22. The Silver Searcher

        ID: AD5FD9EA-E427-458A-9B25-244177D08640

    ```sh
    brew install the_silver_searcher
    ```

23. shellcheck

        ID: A32529E8-97E7-4347-848F-73C834447FEC

    ```sh
    brew install shellcheck
    ```


### Configure

    header-args: :tangle "14_development.org"

    ID: FA5E0D88-1455-4DD5-9362-D8268BBFF3BF

```org
* DeltaWalker

- Drag the bundle into Applications
- License it.
- Set preferences for new comparisons (be sure of this, easy not to)
  - General
    - Date formatting: English (United States)
    - Max available memory: 4096
    - [X] Automatically find new updates and notify me
    - Colors and Fonts
      - Basic: DJSM 14
        - Text Font
        - Text Editor Block Selection Font
      - Differences
        - Font: DJSM 14
        - Colors:
          - Addition: Green
          - Change: Yellow
          - Conflict: Red
          - Deletion: Purple
  - All Comparisons
    - [ ] Use text differencing optimized for speed
    - [X] Use text differencing optimized for accuracy
    - [X] Follow symbolic links
    - [ ] Ignore differences in whitespace
      - Want to know about tabs versus spaces
    - [ ] Ignore differences in character case
      - Interesting but default do care
    - [ ] Ignore differences in line endings (CF and LF)
      - Most systems don't care, but I do and should fix it
- Set up the "Compare with DeltaWalker.workflow"
  - Go to its Cask location
  - Copy it to ~/Library/Services
  - Opening it in Automator by double clicking it in Finder
  - Immediately saving it and closing it
- Save the new configuration and guit DW, and then start it again and verify
  that the settings are saved. Once they were not.
- Test the sample files for a two-file diff.
- After Git is set up, test everything.
* Sourcetree

- Log into SourceTree
- Let it scan the BitBucket folder to add those projects to SourceTree
- Preferences
  - General: Disallow SourceTree from modifying yoru global Git config file
  - Diff: Set font to DJSM 14
- Manually
  - Go through the licensing process
  - Old app just let you type it into the GUI, not seeing it here now
* IntelliJ Idea

- Pretty sure that I've got a config somewhere for this

* PyCharm
- "use your JetBrains Account credentials in PyCharm to use this license"
- Import settings: I do not have any
- Allow it to accept incoming network connections
- PyCharm initial configuration
  - Keymap: Emacs
  - Theme: Default
  - Editor colors and fonts: Default
  - Enable opening files CMD: Yes =/usr/local/bin/charm=
- Preferences
  - Appearance & Behavior
    - System Settings
      - Usage Statistics
        - Do send anonymous statistics: weekly
    - Appearance
      - Show tool window bars
  - Editor
    - General
      - Use soft wraps
      - Appearance
        - Show line numbers
        - Use block caret
        - nil Caret blinking
    - Code Style
      - Right margin column: 80
      - Wrap on typing: YES
    - Colors & Fonts
      - [[https://github.com/jkaving/intellij-colors-solarized][Solarized Theme]]: Dark
        - Do this first
      - Font
        - DJSM 17
      - General
        - Editor -> Caret: #839496
* WebStorm
- Same configuration as PyCharm

* R

I haven't used R in a long time but I want to get it set up right again.
Link my configs from ~/ into where they live now.
This installer asks for my password, which halts the install. How will I deal
with this?
There is a =.Rinstall= file in my setup to get all of the packages installed. Be s
sure to run that, too. All of my notes live in R.org already.

Install the software manually.

Migrate and link the configuration files

#+NAME: 0D50EA49-2A0B-40C9-865D-964FC75B7AC3
#+begin_src sh
ln -s ~/git/bitbucket/alec/.Renviron ~/.Renviron
ln -s ~/git/bitbucket/alec/.Rprofile ~/.Rprofile
ln -s ~/git/bitbucket/alec/.Rinstall ~/.Rinstall
rm -rf ~/.Rpackages
mkdir ~/.Rpackages
#+end_src

* Dash

- Install the license file
- Settings
  - General
    - Yes: Launch Dash at login
    - Yes: Restore all tabs from last session
    - Global search shortcut: s-F12
    - Search using selected text: nil
    - Window style: Standard
    - Behavior
      - No: Show dock icon
      - Yes: Show menu bar icon - clicking toggles menu
      - Yes: Dismiss main window when I activate a different app
      - Syncing: Let alone
  - Downloads
    - .NET Framework
    - Android
    - AngularJS
    - Apache HTTP Server
    - Bash
    - Bootstrap 3
    - C
    - C++
    - Clojure
    - Common Lisp
    - CSS
    - Django
    - Emacs Lisp
    - Flask
    - Go
    - Grunt
    - Gulp
    - HTML
    - iOS TODO
    - Java EE6
    - Java EE7
    - Java SE6
    - Java SE7
    - Java SE8
    - JavaScript
    - Docsets
    - LaTeX
    - LESS
    - Linux Man Pages TODO
    - Mac OS X TODO
    - Man Pages
    - Markdown
    - MySQL
    - NGINX
    - NodeJS
    - OCaml 4.02.3
    - Perl
    - PHP
    - PHP Unit 5.2
    - PostgreSQL
    - Python 3
    - R
    - Racket
    - Require JS 2.2.0
    - Ruby
    - Rust
    - Sass 3.4.22
    - Spring Framework
    - SQL Alchemy
    - SQLite
    - SVG
    - Swift
    - TCL
    - UnderscoreJS
    - Vagrant
    - VIM
    - VMWare vSphere
    - WordPress
  - Remote
  - Integration
  - Snippets
  - Updates: Automatically, Saily

* XCode

- Preferences
  - Downloads
    - Components (Document things that I installed)
    - Documentation (Document things that I installed)
      - iOS 9.2 Documentation
      - OS X 10.11.2 Documentation
      - XCode 7.2 Documentation
    - Stand alone checkbox
      - No: Check for and install updates automatically

* The Silver Searcher

- NA

* RStudio

- RSudio
  - Preferences
    - General
      - Default working directory (when not in a project): ~
      - Restore most recent project: Yes
      - Restore previously open source documents: No
      - Restore .RData: No
      - Save worksapce to .RData: No
    - Appearance
      - Editor font: DejaVuSansMono
      - Font size: 12
      - Editor theme: Solarized Dark
```


## Manual

    header-args: :tangle "15_manual.org"

    ID: CFDA666A-254C-4DE4-825E-872A878A47F6


### PDFPenPro

    ID: orgmode:gcr:vela:C9840373-A2E1-4F87-8410-5C21F7F8B563


### SimPL Font

    ID: FADD0245-BBCD-43BB-A103-DC994EBC449E

-   <http://wiki.nars2000.org/index.php/APL_Font>


### NewGardiner TrueType Font

    ID: E015C9C9-67ED-4FD8-8F81-256CDD705E40

-   [See](https://mjn.host.cs.st-andrews.ac.uk/egyptian/fonts/newgardiner.html)
-   Install `NewGardinerSMP.ttf`


### The R Project

    ID: 0850CC94-1829-427F-BF9A-9F5353902B54

-   Context
    -   `brew install r` has runtime issues on *my* machine
    -   `brew cask install r` has a bad download link
    -   Therefore install the package manually from a CRAN mirror
-   Downloaded the pkg
-   Ran the package
-   It finishes
-   Run the linking script for the R config files in R.org


### Microsoft Office

    ID: 568C1BC2-1569-4E3A-8246-594E0C889244

```org
This is in BrewCask, but the download is waste of time. I have it locally. Use
the version I bought; not the latest which is in brew.

I keep going back and forth on this one. Is it worth saving 15 minutes having to
install it myself?

Start it. It asks for your name. It asks about updates and stuff. Get them all.
Start Outlook. Enter in new license for that.

When activation occurs, the app always locks up then I quit it and it restarts
after sending an error report.

Don't let it access Contacts.

When it checks for updates, tell it to check daily.
```


### SAS University Edition

    ID: 3BE67982-9DDC-4FAC-BC9D-FB4F87DE58E3

```org
* SAS University Edition

- Download with FireFox
  - Fails with Chrome
- 4096 MB RAM
```


### OSX Enhanced Voice Dictation

    ID: C8E3A6E9-16E6-4ABD-A667-0E952D38D3E4

```org
* OSX Enhanced Voice Dictation

Somehow I activated the installer for "OSX Enhanced Voice Dictation". I said "Yes".
Found [[https://support.apple.com/en-us/HT202584][this]] guide and here are the steps:

- Apple
- System Preferences
- Dictation & Speech
- Dictation
- Enable
- Yes: Use Enhanced Dictation
- [X] Speak selected text when the key is pressed:
  - Option+Esc
```


### Visible Body

    ID: 07ADFC51-E81C-46C1-8D1F-40FB11A93BEC

```org
* Visible Body

- Human Anatomy Atlas
- Muscle Premium
- Skeleton Premium
- License key
  - Copy directory from the email
  - Tried printing to pdf or saving to a file and copying from that and neither
    work
  - Need to copy from their into an Org document and try that
```


### Entropy

    ID: 9EDE18B7-DDA1-4FC1-8866-256596BA54D0

```org
* Entropy

- This is a [[http://www.eigenlogik.com/entropy/][download]] and manual install.
```


### Guitar Pro

    ID: 36F3F9F6-31D1-4517-94F3-B7A787F2C166

```org
* Guitar Pro

- [[http://www.guitar-pro.com/en/index.php][Here]]. Sign into MySongBook.
```


### Cepestral Callie & David

    ID: FB2138CF-B62C-4BCB-A892-AB855A61535A

```org
* Cepestral Callie & David

[[http://www.cepstral.com/][Here]].

You might need to log out and in again to make the "Cepstral Voices" appear in
System Preferences.

License them. Test them.

Set Dictation & Text to Speech to: Callie
```


### Pushbullet

    ID: 3CF13F86-EFBB-4CCD-A169-FC803EE5E2E7

```org
* Pushbullet

- Sign in, it is web app
- Allow contact access
- Install into Chrome, choose it
- [X] Text from phone
- [X] See notifications
- Configure nothing else
```


### Ink2Go

    ID: 03A7A747-85CA-4414-A41D-7B9A2CC2B1A5

```org
* Ink2Go

- [[http://ink2go.org/][Here]]
- License it
- Preferences
  - Keyboard Shortcuts
    - Command-F12: Activate
    - Command-F11: Activate+Pen
  - Toolbar
    - Everything enabled but
      - Crop / Pause
      - Record / Stop
      - Webcam
```


### Dyalog APL

    ID: F17C4B5B-1834-4266-9E51-A9A6F6D07260

```org
* Dyalog APL

- Nothing exactly right now
```

**\*\***


### App Store Installs

    ID: 798AD4C6-AFB7-4AB6-B794-16E1E83CDF5C

1.  Debtinator

        ID: 1E321453-054F-4040-A2C4-77D4895AB34B

    ```org
    * Debtinator

    - Nothing exactly right now
    ```

2.  Textual IRC Client

        ID: B817D3AE-D105-4957-B229-8DF479E9E5F4

    ```org
    * Textual

    - AppStore.
    - Open-at-Login

    Only note changes from the current default

    Set up preferences:

    - Preferences.
    - General.
      - YES: Save the state of queries
    - Highlights.
    - Notifications.
    - Controls.
    - Interface.
    - Style.
      - General.
        - Style: Equinox
        - Font: DJSM 17
      - Inline Media.
        - YES: Show images inline
    - Addons.
    - Advanced.
      - Default Identity.
        - grettke
        - grettke💤
        - grettke
        - Grant Rettke

    Server properties:

    - Basic Settings.
      - General
        - YES
          - Connect when Textual opens
          - Perform reconnect on disconnect
          - Perform reconnent on waking from sleep
    - Identity
      - Wait for ID before joining
      - Enter personal password; everything else got set from main screen
      - Do wait for identification before joining channels

    - Join on Freenode
      - #org-mode
      - #emacs
      - #scheme
      - #bash
      - #apl
    ```

3.  Growl

        ID: 48048FB4-E77B-4226-82EF-BA8AA30E2D37

    ```org
    * Growl

    - Install via the app store
    - Start it
    - enable run on login
    - Theme: Music Video
      - Easy to notice
    ```

4.  Microsoft Remote Desktop

        ID: BF68C6A0-9F79-4372-8503-CD8B0BE3331A

    ```org
    * Microsoft Remote Desktop

    - Don't open the session full-screen.
    ```

5.  Text2Speech PRO

        ID: 40206D84-014A-43FC-8299-D4C8594FE691

    ```org
    * Text2Speech PRO

    - General
      - Preferences
        - Voice :: Cepstral Callie
        - Speaking Rate :: 175 w/m
        - App check text encoding failover :: UTF-8
        - [ ] Send file to iTunes
    ```

6.  PixelMator

        ID: 76178B97-5BEE-4341-86C7-757138319E18

    ```org
    * PixelMator

    - Nothing special
    ```

7.  Mousepose

        ID: BBCE99EB-E786-4D38-B7B0-C46BEE2B1B43

    ```org
    * Mousepose

    - Grant "accessibility" permission
    - Settings
      - Mousepose
        - Toggle Hotkey: Control-Escape
        - Advanced
          - Increase hotkey: C-2
          - Decrease hotkey: C-1
          - Window focus toggle: C-3
      - Mouse Clicks
      - Keystrokes
        - Default is standalone
        - Hotkey: C-4
      - Miscellaneous
        - When logging in: Start Mousepose
        - Show icon in: Menu bar
    - Bartend it
    ```

8.  Webcam Settings By Mactaris

        ID: AB612B97-BDFA-4322-AF4A-C4F9CDFE392B

    ```org
    * Webcam Settings By Mactaris

    - Be sure to set the white balance
    ```

9.  Key Codes

        ID: DE26900A-EB07-4BC9-9301-C642A7B8BE81

    ```org
    * Key Codes

    - Nothing special
    ```


## Git

    ID: A700593A-3D0C-49F0-AE05-2FAA5DFC95EF


### Generic

    header-args: :tangle "16_git-generic.sh" :tangle-mode (identity #o755)

    ID: F008829D-FCC5-426E-8CB6-3E3DED5EE2AF

Generate the key. There is no passphrase.

```sh
rm -rf ~/.ssh
mkdir ~/.ssh
cd ~/.ssh
echo "What email address would you like to use for this SSH key?"
read SSHEMAIL
SSHID=`whoami`-`hostname`
SSHUID=$SSHID-`date '+%Y_%m_%d_%H_%M_%S'`
SSHFILE=$SSHUID-rsa
ssh-keygen -N '' -t rsa -C $SSHEMAIL -f $SSHFILE
```

Set permissions so that `ssh` will run.

```sh
chmod 600 ~/.ssh/$SSHFILE
chmod 600 ~/.ssh/$SSHFILE.pub
ssh-add -K ~/.ssh/$SSHFILE
```

OSX creates this directory everywhere and it must be ignored.

```sh
echo .DS_Store > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

Add they key to Bitbucket and Github.

```sh
echo "Name your Git site key: $SSHFILE"
cat ~/.ssh/$SSHFILE.pub | pbcopy
read -p "The new key is in your clipboard. Go and add this key to BitBucket and GitHub. When you are finished, hit [enter] to continue."
```

Set up ~/.ssh/config.

```sh
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
```

Test each one out.

```sh
ssh -T github-`whoami`
read -p "Did it work? If not, fix it."
```

Separate them to allow for easier copy-pasting.

```sh
ssh -T bitbucket-`whoami`
read -p "Did it work? If not, fix it."
```


### Personal

    header-args: :tangle "17_git-personal.sh" :tangle-mode (identity #o755)

    ID: 83EF8B0F-8415-4870-98A7-B9B9F8A8481C

Set up my preferences.

```sh
git config --global user.name "Grant Rettke"
git config --global user.email gcr@wisdomandwonder.com
git config --global color.ui true
git config --global core.autocrlf
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.dt difftool
git config --global alias.mt mergetool
git config --global diff.tool deltawalker
git config --global difftool.deltawalker.cmd '/opt/homebrew-cask/Caskroom/deltawalker/2.1.2/DeltaWalker.app/Contents/MacOS/git-diff $LOCAL $REMOTE'
git config --global difftool.prompt false
git config --global merge.tool deltawalker
git config --global mergetool.deltawalker.cmd '/opt/homebrew-cask/Caskroom/deltawalker/2.1.2/DeltaWalker.app/Contents/MacOS/git-merge $LOCAL $REMOTE $BASE $MERGED'
git config --global mergetool.keepBackup false
```

Check out projects to get basic stuff working.

```sh
rm -rf ~/git/bitbucket
rm -rf ~/git/github
rm -rf ~/src/help
mkdir -p ~/git/bitbucket
mkdir -p ~/git/github
cd ~/git/bitbucket
git clone bitbucket-`whoami`:grettke/list.git
git clone bitbucket-`whoami`:grettke/resume.git
git clone bitbucket-`whoami`:grettke/notes.git
git clone bitbucket-`whoami`:grettke/signature.git
git clone bitbucket-`whoami`:grettke/grant-personal.git
git clone bitbucket-`whoami`:grettke/correspondence.git
git clone bitbucket-`whoami`:grettke/wnw.git
git clone bitbucket-`whoami`:grettke/texmf.git
git clone bitbucket-`whoami`:grettke/hardware
git clone bitbucket-`whoami`:grettke/tracking01
cd ~/git/github
git clone github-`whoami`:grettke/osx-provision.git
git clone github-`whoami`:grettke/bash.git
git clone github-`whoami`:grettke/wisdomandwonder.git
git clone github-`whoami`:grettke/Linux-Nginx-MariaDB-PHP-WordPress.git
git clone github-`whoami`:grettke/home.git
```

At this point, the Bash initialization files point at the directory with my SSH key. Log out and in again and delete the anonymous pull. Not sure how to automate this part yet.

```sh
cd ~/git/github-anonymous
git clone https://github.com/bkuhlmann/osx
git clone https://github.com/monfresh/laptop
rm -rf ~/src
mkdir ~/src
cd ~/src
git clone github-`whoami`:grettke/help.git
rm ~/.emacs.el
ln -s ~/src/help/.emacs.el ~/.emacs.el
rm -rf ~/.emacs.d
mkdir ~/.emacs.d
ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
```


## Org-Mode

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B


### Install

    header-args: :tangle "18_org-mode.sh" :tangle-mode (identity #o755)

    ID: F2B0FCF0-1F56-4D3B-AC9F-10F4E430BBE2

```sh
rm -rf ~/src/org-mode
rm -rf ~/src/org2blog
rm -rf ~/src/use-package
cd ~/src
echo `date +%Y-%m-%dT%H:%M:%S%z`
git clone git://orgmode.org/org-mode.git
echo `date +%Y-%m-%dT%H:%M:%S%z`
cd org-mode
emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
cd ~/src
git clone git@github.com:punchagan/org2blog.git
git clone https://github.com/jwiegley/use-package.git
```


## TeX

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B


### Install

    header-args: :tangle "19_tex.sh" :tangle-mode (identity #o755)

    ID: F2B0FCF0-1F56-4D3B-AC9F-10F4E430BBE2

1.  MacTeX

        ID: 17B20C34-B6E5-478E-BDF5-F7E56588AE7E

    Configuration comes at the end after my Git stuff is set up.

    Download speed varies wildly.

    ```sh
    brew cask install mactex
    ```

2.  GnuPlot

        ID: CD0644AD-7F3D-4FE7-A3B4-32000755E7B1

    Must install TeX before GNUPlot.

    ```sh
    brew install gnuplot --with-latex --with-pdflib-lite --with-test --with-x11
    ```


### Configure

    header-args: :tangle "20_tex.org"

    ID: FA5E0D88-1455-4DD5-9362-D8268BBFF3BF

```org
- I value seeing these commands succeed so pasting them is OK
- MacTeX installation is typically so painful that I want this part to be easy

Set up my TeX stuff for KOMA-script. Backup the default configuration first.

#+NAME: 4053A83F-EA3D-4431-AA4A-62336DF2F95E
#+begin_src sh
ls /usr/local/texlive/2015
sudo cp /usr/local/texlive/2015/texmf.cnf /usr/local/texlive/2015/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
ls /usr/local/texlive/2015
sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
#+end_src

Check that the path is really updated.

#+NAME: 34890901-8E9D-46E5-9738-2718CD26908E
#+begin_src sh
kpsewhich KomaDefault.lco
#+end_src

The documents say to maybe do the following. I did it.

#+NAME: 008DCE01-EE0D-4A96-93A5-7B6E91D7C951
#+begin_src sh
sudo mktexlsr
#+end_src
```


# Testing

    header-args: :tangle "21_testing.org"

    ID: 44798E7B-AC1F-4FD8-AB5E-3A3563B79C4B

```org
- [ ] Get Emacs running
  - Usually problems with package loads
  - Start emacs with --no-init-file and install
    - nlinum
    - restart it
  - Start emacs normally and the repos are loaded, and when the load files, install
    - diminish
    - lexbind-mode
    - Loads correctly
  - Broken Org-Mode
    - This checks out Org-Mode from the trunk. Sometimes stuff get's
      broken. My config debugs on error. The goal is to always have
      a working system. Sometimes, I copy over a working copy of Org
      or any of the libraries onto the host if there are issues.
- [ ] tangle
  - Tangle the document successfully
- [ ] execution
  - Delete every result block: just do it manually search for =#+RESULT=
  - Delete all image output
  - Execute entire document successfully
  - Images re-appear
- [ ] eshell
  - Run it
  - Emacs uses correct HELP directory
- [ ] ccrypt
- [ ] ispell
- [ ] weasel words
- [ ] langtool
  - Verify installation, can have the wrong dir and the tool just says that
    there are no issues
  - Run =langtool-check-buffer=
  - qkc does the scan, qkC suggests corrects, verified on a corresponsence
- [ ] Correspondence
  - Pick a letter
  - Address and signature and everything looks right
- [ ] Messages
  - Make sure that there are no startup warnings or issues
- [ ] Build resume
  - Blow away out-files and make
  - [ ] MD
  - [ ] TXT
  - [ ] PDF FULL
  - [ ] PDF ONE PAGE
  - [ ] DOCX
- [ ] Export to everything
  - Longest test, takes 35m on a VM
  - This is used for publishing
  - First delete everything
  - [ ] html
    - Images are links, not images
  - [ ] md
    - Images are links, not images
  - [ ] pdf
  - [ ] txt
```

## Footnotes

<sup><a id="fn.1" class="footnum" href="#fnr.1">1</a></sup> <https://apple.stackexchange.com/questions/155429/view-machine-name-on-login-screen>
