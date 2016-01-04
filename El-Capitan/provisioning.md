
# Goal

    ID: 572893EF-E80B-411B-9355-8CAB3DB23C27

## Desire

    ID: 17BA9F22-3B3E-427E-AC9B-0DF8D10BFD32

-   To quickly and easily
    -   Explore cognitive spaces using operating systems and software
    -   Try, fail, learn, improve, and repeat
    -   For expensive operations measured in time and complexity
        -   Minimize their execution time
            -   Central Processing Unit (CPU)
            -   Input/Output (IO)
        -   Rebound from failure
    -   Share

## Satisfaction

    ID: 77F8D1AF-B388-4512-B9C2-79F97533CC88

-   First-class support for OS X, Windows, Linux and all of their software
-   Manage machines as easily and flexibly as you would with version control
-   Use the fastest devices possible for every operation
-   First class operating system image management
-   Virtual machines (VM)

## Decision

    ID: 643E82D4-08E8-40B5-9006-3936A0775A35

-   Current:
    -   Macintosh Computer (Mac)
    -   OS X
    -   VMWare Fusion Professional
-   With *Best*:
    -   Solid State Disk (SSD)
    -   RAM
    -   CPU count and speed

## Lessons Learned

    ID: 0D8B4834-2E1E-4F1A-9299-5948A1FFAC55

-   Verify easily verifiable operations
    -   Installation scripts often reveal new information
-   Either name things with a meaningful name or a 6 digit UUID from
    [Online UUID Generator](https://www.uuidgenerator.net/)
    -   In the beginning this helped me keep track of disks, VMs, and software;
        by working through it I found that names were more meaningful, only after
        developing the sections for the definition (and name)
-   Evidence based; no fantasy or delusion
    -   Decide using experience; in absence make a best decision and move on
    -   It takes at least 3 iterations before things start making sense
-   &ldquo;Thinking ahead&rdquo; is crippling
-   Snapshot
    -   After expensive operations
        -   Can always delete them later
        -   Easy to for get how to do
    -   Snapshot frequently; you never know how things will go
        -   You will forget to do this
        -   You will only care after something got wrecked
-   Don&rsquo;t go to sleep in the middle of configuration sections
-   Get the fastest Internet sold before starting
-   Remember that Control-Command-F pressed inside of a host tells VMWare
    to go to and from full-screen.
-   VMWare&rsquo;s folder sharing
    -   Works perfectly for sharing between two guests a lot of the time. When it
        quits working I log in and out of one of the guests and it works again
        -   Happens often
    -   Is happy with Finder and unhappy with Eshell, so don&rsquo;t use Eshell in shared
        directories. They just stop working.
-   Java
    -   Sometimes the installation directory includes the build number. Sometimes
        it does not.
-   Writing 100% automated idempotent scripts is worth the effort
    -   It is not worth the effort for theoretical reasons because it is usually
        faster to do it by hand. The first 2 or 3 times you perform a task, it is
        slow, and then you figure it how to do it all correctly and then you can
        perform it quickly. You might ask yourself &ldquo;If I can do it this quickly then
        why bother automated it?&rdquo; because of the extra effort. That is a good
        question. When you are doing it, it is faster to do it by hand. Here is the
        problem that I ran into: you make mistakes that you find long after the
        set up. The *right* thing to do is to correct the documentation/scripts and
        then rebuild the image. If you left manual steps then you have to do that
        work all over again. I know this seems obvious, but at the time, it didn&rsquo;t
        seem worth the effort of automating everything. Now much later, I&rsquo;m left
        with a system imaged somewhat differently than the documentation. It is
        worth the effort to automate everything. The item on snap-shotting makes this
        easier.
    -   After using them only 2 times you will feel how flexible and fun it makes
        the whole development process
-   Never allow manual steps
    -   If they are unavoidable then move them all to the same place to get them
        over with and start the automated part
-   Make VMWare Disk Drive capacity in multiples of 8
    -   That way they can be easily shared and transferred on SD cards
-   VMWare Fusion hard disk size
    -   VMWare does not pre-allocate disk space and doesn&rsquo;t give you the option
        to do so. This is different than VMWare Workstation and that might surprise
        you.
-   Spending most of my time on OSX
    -   Started out planning on using 100% OSX. That led me to realize that I
        value OSS/Emacs the most. So I started to set up Linux. Through that effort
        I realized how much I&rsquo;ve invested on the OSX platform. I felt that not only
        would it take too much additional effort to migrated to Linux; but more-so
        that the investment would take away from future work I would be doing on
        OSX. Both thing are surprising.
-   A new to me option is to download everything and don&rsquo;t configure it until you
    need it
    -   Pros
        -   Faster setup
        -   Only use what you need
        -   Nothing stopping you from configuring anything; key is to know what you
            want immediately available when you restore a snapshot or image, assuming
            that it is not automatically configurable or you don&rsquo;t want to
            automatically configure it (which is rare)
-   Deleting the RP
    -   DU does not list the RP. CCC does. You work a lot with DU and a little with
        CCC. When you modify the disk partitions, you have to rebuild the RP with
        CCC. It is easy to forget to do this. I am not sure now how to restore the
        RP without a working RP.
-   Utilize compressed disk images
    -   Save space
    -   On the SSD they are fast
-   How to utilize hosts and guests
    -   I had the idea that I would work 100% in the guest because that is simple
        and familiar. It didn&rsquo;t work out well because audio in Skype was horrible.
        So I installed Skype in the host and use it there. Now I use both host and
        guest.
        -   Is it a waste of space to use the same provisioner for both host and
            guest? No. It is important to have one script that does the right thing
            instead of having to worry about two boxes. It also fails the goal of
            having a single transportable and re-usable guest that can easily and
            completely move between hosts.

# Dictionary

    ID: BF6FF97E-5530-4EBA-97C3-02A2EF259137

-   Carbon Copy Cloner (CCC)
-   Disk Utility (DU)
-   Install OS X El Capitan Application (IOSXECA)
    -   Application used to
        -   Upgrade current installation to 10.11
        -   Create USB boot-disks to install 10.11
        -   Drag into VMWare Fusion to install guests
-   Pristine Host Operating System Image (PHOSI)
    -   A hard disk imaged from Apple
-   Pristine Host Operating System Disk Image (PHOSDI)
    -   A disk-image created from a `PHOSI`
-   Recovery Partition (RP)

# Preparation

    ID: 1BF6D42F-2F80-467E-B75C-DB2C88F0B4BE

## External Drive

    ID: 9EC3FF1F-8416-449D-8860-3B4ABCEBB09B

Get a 7200RPM 1TB external disk drive with USB3 or Lightning.

Create a partition named `Storage` that is at least 100GB. The `EXT:` naming
convention is to indicate that it lives on an external device. This is helpful
to make sense of partitions there versus on the Macintosh HD. That is not part
of the name of the partition itself. I&rsquo;ll use that naming also to indicate
computers that contain a single disk drive.

## Software

    ID: 3BC9B846-919F-4395-8926-8C2AABB0FF6A

-   Before provisioning software installs, I downloaded these manually and stored
    them because they are critical to the setup process

### Carbon Copy Cloner (CCC)

    ID: 93F797EC-1166-4667-A2ED-C8251CB9998A

[Purchase](https://bombich.com/) the latest version that supports El Capitan. Download it along with the
license to `EXT:Storage`. Install it on the `Support Computer`.

### VMWare Fusion

    ID: B846A16A-4E1C-4968-B303-301923989BD8

[Purchase](https://www.vmware.com/products/fusion) a copy and download it to `EXT:Storage`. Download your license key.

## Support Computer

    ID: 74903C97-520F-4FE1-B2AA-09F1DAB976D7

Keep a working Mac nearby. You will use it to work with the contents of
your Git repositories, research configuration steps, and rest easy knowing that
you&rsquo;ve always got a working machine.

Make sure that it has Internet access and download all of your Git repositories
required for configuring these machines.

Don&rsquo;t try use your host computer for this role by booting it to an external
drive; it is too easy to confuse partitions and what you are doing.

Use CCC to clone this Mac&rsquo;s partition, `Support:Macintosh HD`, to a partition on
`EXT`. The easiest thing to do is to connect `EXT`
to `Support Computer`. Create a new partition big enough to hold it and perform
the clone. Name it `EXT:Utility`. Reboot to it to test it.

## Host Computer: 44fad7

    ID: EE23E7E0-4BAC-4B57-96EA-764F84A2F054

-   Collect the Pristine Host Operating System Image (PHOSI)
    -   Pristine means that it has never been logged into or configured
    -   Has the latest OS X on it with at least the second fix pack or later
    -   Verify that it contains the RP for that OS X on the disk
        -   If the imaging takes less than 10 minutes then they didn&rsquo;t include the
            RP
    -   You can easily get this from an appointment at the Genius Bar
-   Create the Pristine Host Operating System Disk Image (PHOSDI)
    -   Take your Mac home
    -   Boot from `EXT:Utility`
    -   Use CCC
        -   From the host computer&rsquo;s `PHOSI`, `Host:Macintosh HD`
        -   To
            -   A new `PHOSDI`; **read-only** and **compressed** disk image
            -   Located on `EXT:Storage`
        -   Execute the imaging task
-   Test `PHOSDI`
    -   Boot into `Host:Macintosh HD`, configure it
    -   Boot into `EXT:Support` and re-image `Host:Macintosh HD` from `PHOSDI`
    -   Boot into `Host:Macintosh HD`
        -   It should appear pristine, you need to enter all of the installation
            information again. This will be re-imaged again soon so don&rsquo;t worry
            about this.
    -   Copy `EXT:Storage PHOSDI` to `Host:Storage`
-   Create the `Host:Utility` partition using `PHOSDI`
    -   Boot into `EXT:Support`
    -   Create 1 new partition on `Host`, named `Utility`: 16GB
        -   Now there are 3: `Macintosh HD`, `Support`, and `Utility`
    -   Verify that you can
        -   Boot into `Host:Support`
        -   Install CCC
        -   Access the `Storage` partition
            -   CCC images
            -   Disk images
            -   Software
            -   Scripts

# Notes on Machine Configurations & Snaphots

    ID: 2A536BBD-5CF0-43B8-A87C-9E2260ADE2F5

## Base (09d89d)

    ID: 33FE2B6C-EE9E-407E-96C3-41675669C9AE

-   Configured with a `sysop` like above
-   Unprovisioned
-   Used for quickly cloning for user for anything

1.  Steps

        ID: CC55FA18-ADF8-4FE2-AA8E-477A3449F86F

    -   Obtain `IOSEXECA` via the App Store
        -   Can do this on a Mac or in a VM of a prior version of OSX
        -   Back it up to both `External:Storage` and `Host:Storage`
    -   Start VMWare Fusion, click File &rarr; New, the &ldquo;Select the Installation Method&rdquo;
        dialog appears
    -   Create a new machine by dragging the OS X Installer onto the dialog
    -   Continue
    -   Default configuration don&rsquo;t change anything
        -   40GB HD, 2 CPU, 2GB RAM seems fine and allows you to have another VM
            running for notes during configuration
        -   Assuming that 40GB will be enough to allow OS updates as they occur over
            the lifetime of the operating system
        -   Full-Clones will configure the machine in unique ways not worth capturing
            here
    -   Click Finish
        -   Name it &ldquo;El Capitan - Base (09d89d)&rdquo; and leave all of the default machine configuration
            alone
    -   Installation takes 20m every time

        -   Installer reports &ldquo;35s remaining&rdquo; accurately, and then 0s remaining
            inaccurately, and sits there for about 5 minutes
        -   Then it reports 20m remaining, and completes in 15m

        any personal information or configuration
    -   Set up box and create `sysop`, don&rsquo;t configure, don&rsquo;t provision:
        -   Use the name `sysop` and password `sysop`
        -   Don&rsquo;t do it like you set up the host
        -   Don&rsquo;t provision or customize anything
        -   Don&rsquo;t set up printers or resolution
        -   Just create the account and do nothing more
    -   Shutdown

2.  Snapshots

        ID: 7DB397B7-D0EC-4AD1-9BC8-3B80452D8890

    1.  First Run (d0a475)

            ID: 9F90A8E9-E4B3-486D-A9BD-243EF10CEAF1

        -   Installed, created user, shutdown
        -   This was the first run

## Personal (3a546a)

    ID: E6395620-7A49-4FEC-9E06-15B27C1FC21C

### Base (3d4a52)

    ID: 0B390891-5510-4703-97D7-29949F3D4436

1.  Plan

        ID: 0967F184-B4A0-4B24-AB0D-5D3E95C3BB13

    -   **Full-Clone of 09d89d**
        -   Right Click d0a475 &rarr; Create Full Clone\ldots
        -   Named &ldquo;El Capitan - gcr (3a546a)&rdquo;
    -   Machine configuration
        -   Processors
            -   3 cores
                -   [Choosing](https://pubs.vmware.com/fusion-7/index.jsp?topic=%252Fcom.vmware.fusion.help.doc%252FGUID-4EABCE73-69AB-4665-A5BB-B34C5B736CC7.html)
            -   6144 RAM
                -   2048 (2 GiB) for host
                -   Two guests running at the same time
                    -   7168 (7 GiB) each
            -   Enable hypervisor
            -   Enable code profiling
        -   Hard Disk
            -   250.00 GB HD
        -   Sharing
            -   `Host:Storage`
    -   Start the VM
    -   Resize the disk
        -   Note that on a real Mac you can&rsquo;t resize a partition that OS X has
            booted from so you might boot from the RP to perform
            the resize instead. This doesn&rsquo;t work on the VMWare drive. If you try it,
            it will fail for a couple of reasons like &ldquo;The partition is not journaled&rdquo;
            or &ldquo;The operation filed&rdquo;. Instead, boot into the OS and resize the partition
            there.
        -   Start DU
        -   Choose VMWare Virtual SATA Hard Drive Media
        -   Click &ldquo;Partition&rdquo;
        -   Look at it to get a sense of the space for the main partition and what is
            actually available
        -   Close DU
        -   Read [this](https://themacwrangler.wordpress.com/2015/10/21/resizing-el-capitan-mac-volumes-under-vmware-fusion/) for a reference
        -   Open Terminal
        -   Execute:

            ```sh
            sudo diskutil resizeVolume / R
            ```
        -   View the results, they should be what you expect
        -   Verify in DU
    -   Change `sysop` password
    -   Install VMWare Tools
        -   In El Capitan, the display driver works correctly so you can set any
            resolution via VMWare Fusion. You can verify in the VM.
    -   Provision this machine
        -   Use the UUID
    -   Perform the &ldquo;Manual Steps&rdquo; setup for the sysop user on this box just like the
        host
        -   The host `sysop` instruction note things unique to the host and guest
    -   Provision `sysop`
    -   Create, login as, perform the &ldquo;Manual Steps&rdquo;, and provision `gcr`,
        log out and in again
    -   Install software updates via App Store
    -   Shutdown

### Xcode (39e716)

    ID: 87802E09-F643-468B-819B-3C8EEB2D3E09

Downloading Xcode takes a long time so snapshot it.

### VC/Shell (283c98)

    ID: C31C9412-2922-4E4A-80BB-20749A95D742

Originally this was part of the `Writing` setup. I moved all of those steps into a
script

### Git

    ID: E2BCA2F2-6647-424D-B496-4623E800FD4A

This script is set up to me. To customize it just search and replace on:

-   **gcr@wisdomandwonder.com:** your email address for your SSH key
-   **orion:** the host name where this key lives
-   **gcr:** your username using this key
-   **`orgion_gcr_rsa`:** the name of your key used for Git
-   **github-grettke:** your SSH alias for Github
-   **bitbucket-grettke:** your SSH alias for Bitbucket

# Provisioning

    ID: 262EEA68-1753-489D-A3BE-672C162CD356

    Effort: energy

## Common

    ID: 372CA3F6-90BB-48B0-A181-7866D1846F92

### Common Manual

    ID: BF5455FF-FABE-4A6D-B3B9-685DDDB83D09

    HEADER-ARGS: :noweb-ref configuration-common-manual

```org
- Re-image your box
  - Host :: ~PHOSDI~
  - Guest :: ~IOSXECA~
- During configuration log into the App Store
- Make a user named ~gcr~ and choose an avatar
- Mouse
  - Host :: Connect Bluetooth mouse
  - Mke the mouse slow
- Host :: Reconfigure control keys
- Host :: Maximize resolution
- Host :: Show Keychain Access in Menubar
- Screensaver: Flurry, 10m
- Host :: Add printer
- Energy saver
  - Host :: do
    - On power, Computer sleep never,never auto sleep when display is off
    - On battery, Screen sleep 5m
      - Don't slightly dim the display on battery power
  - Guest :: Computer sleep never, Screen sleep 15
- Sound
  - Show volume in menubar
- Finder
  - Preferences
    - Favorites
      - <Home>
    - Devices
      - <Computer>
- Development Tools
  - If you want to use XCode :: Go to the App Store and Install it
    - 4.5GB download
  - Install the CLT. Choose *Install*.
    #+NAME: E0FB4DC2-E07D-4462-A997-99E112066E37
    #+BEGIN_SRC sh
    xcode-select --install
    #+END_SRC
```

### Common Profile

    ID: 5790D2CA-8436-4F44-829B-32F2986E8A68

```sh
export VISUAL=vim
export EDITOR='$VISUAL'
export PS1='\u@\h:\w> '
export HOMEBREW_NO_EMOJI=1
```

```sh
/usr/local/bin
```

```sh
$PATH
```

You must us `:comments no` otherwise the profile gets mangled.

```sh
<<common-profile-body>>
export PATH=<<common-profile-path-pre>>:<<common-profile-path-post>>
```

This profile approach will evolve.

### Automated

    ID: FC8DB1F5-25FA-4DD2-A6C8-3F434F6FCCF9

1.  Steps

        ID: 0A71A737-A201-43A5-A5DD-E62E78EE9C2E

    1.  Software

            ID: 44A4C35C-E27A-462F-BBB2-A178F70194D8

            HEADER-ARGS: :noweb-ref configuration-common-automated-steps-software

        1.  Profile

                ID: 56989957-A8F5-4C47-9B27-31A3AC4ED8DD

            Set up the new profile.

            ```sh
            rm ~/.profile
            cp ./profile-common ~/.profile
            source ~/.profile
            cat ~/.profile
            ```

        2.  Debug

                ID: 6BA13619-7F02-4489-B734-E5D12DCFDAAD

            ```sh
            set -x
            sudo -v
            ```

        3.  Brew & Brew Cask

                ID: 3CD7F53A-C7B3-4C54-9E43-7B43E1D2E54F

            Brew is [here](http://brew.sh/).

            ```sh
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
            ```

            BrewCask is [here](http://caskroom.io).

            ```sh
            brew tap caskroom/cask
            ```

        4.  karabiner

                ID: EE4E6BA8-4BB5-4ACD-9657-36C776448CE4

            ```sh
            brew cask install karabiner
            ```

            ```org
            * Karabiner

            - Allow it
            - Change Return Key
              - Return to Option_L + When you type Return only
            ```

        5.  git

                ID: 1F0C8A4B-097E-4090-93A7-8A2958331E4F

            Important because Brew and everything uses this everywhere.

            ```sh
            brew install git
            ```

            ```org
            * Git

            - Not using any git completions
            ```

        6.  Python

                ID: 1BA55F5A-9902-4539-9494-0231C4DBD9B6

            Important because it is such a versatile distribution.

            ```sh
            brew install python
            brew linkapps python
            ```

        7.  Ruby

                ID: B7D03962-A386-4E62-AA68-3A7F95AF2CA4

            Important because Brew uses this.

            ```sh
            brew install ruby
            ```

        8.  Bash

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

            ```org
            * Bash

            - Run ~echo $BASH_VERSION~
            - Mak sure that it is >=4
            - Not using any bash completions
            ```

        9.  Spectacle

                ID: 1553426A-6A83-4104-AAA8-6DEF05FBBBC4

            ```sh
            brew cask install spectacle
            ```

            ```org
            * Spectacle

            - Start it
            - Enable integration
            - Start at boot
            ```

        10. Little Snitch

                ID: 5D68F827-7AEA-4C40-A2FF-41ABDAAA53A9

            ```sh
            brew cask install little-snitch
            ```

            ```org
            * Little Snitch

            - Start it
            - Enable integration
            - Start at boot
            - License it
            ```

        11. VLC

                ID: C47DA927-A6B2-4751-98AC-D3200E6F4095

            ```sh
            if [ ! -d "/Library/Application Support/VMware Tools" ]; then
                brew cask install vlc
            else
                echo "vlc: Only install on hosts"
            fi
            ```

            ```org
            * VLC

            - Run it
            ```

        12. VMWare Fusion

                ID: 96ADB3AF-1BDB-4F31-BB31-D5E32221AC8D

            Only install it on hosts.

            ```sh
            if [ ! -d "/Library/Application Support/VMware Tools" ]; then
                brew cask install vmware-fusion
            else
                echo "vmware-fusion: Only install on hosts"
            fi
            ```

            ```org
            * VMWare

            - On a host: License it
            ```

        13. Skype

                ID: 6003585A-A3B2-453A-B3CF-33240C69BB0E

            Only install it on hosts.

            ```sh
            if [ ! -d "/Library/Application Support/VMware Tools" ]; then
                brew cask install skype
            else
                echo "skype: Only install on hosts"
            fi
            ```

            ```org
            * Skype

            - Log in and disable notifications for log in and out
            ```

        14. Dropbox

                ID: 97065F78-F2C3-4189-A24E-BAB474EC2D59

            ```sh
            if [ ! -d "/Library/Application Support/VMware Tools" ]; then
                brew cask install dropbox
            else
                echo "dropbox: Only install on hosts"
            fi
            ```

            ```org
            * Dropbox

            - Log in
            - Sync nothing right away
            - Choose what is critical here
              - Screenshots
              - Everything
            - Pause it and copy everything over on a wired network
            ```

        15. Bartender

                ID: 119F1391-9A8A-49F6-810E-E2620F5AF15F

            ```sh
            brew cask install bartender
            ```

            ```org
            * Bartender

            - License it
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

        16. Chrome

                ID: 27B3E977-821E-4966-B6CA-438212B4CA2A

            ```sh
            brew cask install google-chrome
            ```

            ```org
            * Chrome

            - Sign into Chrome
            - Let the settings sync
            - All the JS disabling stuff needs you to approve it. It is irritating.
              You always forget to approve it and make worse.
              - Disable ScriptSafe right away. Turn it on as needed.
            ```

        17. Firefox

                ID: 2348C82F-F560-4C30-8B80-9D7EE4D4291F

            ```sh
            brew cask install firefox
            ```

            Sometimes this install fails. I checked the file download. The file exists. The
            name hasn&rsquo;t changed. Did a manual install instead.

            ```org
            * Firefox

            - Install the standard plugins
              - NoScript
              - Blur
            ```

        18. Filezilla

                ID: 3F67D0FE-1FE7-4578-9C71-DE4DBD6F75C2

            ```sh
            brew cask install filezilla
            ```

            ```org
            * FileZilla

            - Set up Filezilla for WnW
            ```

        19. Carbon Copy Cloner

                ID: F0BE2195-81FE-42F7-92F2-7AEB6A834041

            Only install it on hosts.

            ```sh
            if [ ! -d "/Library/Application Support/VMware Tools" ]; then
                brew cask install carbon-copy-cloner
            else
                echo "carbon-copy-cloner: Only install on hosts"
            fi
            ```

            ```org
            * Carbon Copy Cloner

            - On a host: License it
            ```

        20. flux

                ID: F0BE2195-81FE-42F7-92F2-7AEB6A834041

            Only install it on hosts.

            ```sh
            if [ ! -d "/Library/Application Support/VMware Tools" ]; then
                brew cask install flux
            else
                echo "flux: Only install on hosts"
            fi
            ```

            ```org
            * flux

            - Enable at startup
            ```

        21. Fonts

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
            ```

            ```org
            * Fonts

            - Test in Emacs using ~view-hello-file~
            ```

        22. Terminal

                ID: 4A37A9A3-A9D6-4ECD-AB89-EB0FE9815091

            ```sh
            mkdir -p ~/git/github-anonymous
            cd ~/git/github-anonymous
            git clone https://github.com/tomislav/osx-terminal.app-colors-solarized.git
            ```

            ```org
            * Terminal

            - Load the solarized theme
            - Select the Solarized dark theme
            - Set the font to DJSM 17
            - Set it to the default theme
            ```

        23. ccrypt

                ID: F9E3F2A3-F16A-4EB8-8F4F-4FF47C7BBE06

            ```sh
            brew install ccrypt
            ```

            ```org
             * ccrype

            - Verify that you can create and re-open files
            ```

        24. tree

                ID: 8A7F33C7-CF3D-4E64-A63E-2AECD13FFD5F

            ```sh
            brew install tree
            ```

        25. archey

                ID: AAF25357-3F8F-4A19-902D-D494D4D7FE38

            ```sh
            brew install archey
            ```

        26. figlet

                ID: ADF24324-CF88-44E0-BE77-DC65DF37502E

            ```sh
            brew install figlet
            ```

    2.  Settings

            ID: 7507CE02-9156-4748-A621-2CF51241B95E

        1.  Machine

                ID: 44A4C35C-E27A-462F-BBB2-A178F70194D8

                HEADER-ARGS: :noweb-ref configuration-common-automated-steps-settings-machine

            This script should be idempotent.
            Set the computer&rsquo;s &ldquo;names&rdquo;. There are 3 resources ([1](http://ilostmynotes.blogspot.com/2012/03/computername-vs-localhostname-vs.html), [2](http://osxdaily.com/2012/10/24/set-the-hostname-computer-name-and-bonjour-name-separately-in-os-x/), [3](http://hack.org/mc/writings/mac-survival.html)) that I used to make
            sense of the different names. It is simple, and new to me.

            Originally I set every name to the same value. Doing so didn&rsquo;t result in
            warnings but it did result in an incorrect &ldquo;Computer Name&rdquo; and
            &ldquo;Local Host Name&rdquo;. Based on that experience, I&rsquo;m going to give names using this
            strategy to name machines now:

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

            Defining this naming approach helped me learn more about the intent of the
            name and what I wanted from them.

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

            Disable Gatekeeper.

            ```sh
            sudo spctl --master-disable
            ```

        2.  User

                HEADER-ARGS: :noweb-ref configuration-common-automated-steps-settings-user

                ID: B0472249-DD96-45C4-A558-088A56501C3D

            This script should be idempotent.

            ```sh
            <<sudo-and-set>>
            ```

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

                Display ASCII control characters using caret notation in standard text views.
                Try e.g. \`cd /tmp; unidecode &ldquo;\x{0000}&rdquo; > cc.txt; open -e cc.txt\`.

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

                Nlsv: List View
                clmv: Column View
                Flwv: Cover Flow View][Via]]

                -   **icnv:** Icon View
                -   **Nlsv:** List View
                -   **clmv:** Column View
                -   **Flwv:** Cover Flow View

                ```sh
                defaults write 'com.apple.Finder' FXPreferredViewStyle Nlsv && killall Finder
                ```

                [Via:](https://gist.github.com/nickbudi/11277384)
                Set item arrangement to none (enables folder dropdowns, &rsquo;Name&rsquo; if you want to
                remove them)

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

                Show icons for hard drives, servers, and removable media on the desktop.

                ```sh
                defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
                defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
                defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
                defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
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

                Top left screen corner → Mission Control.

                ```sh
                defaults write com.apple.dock wvous-tl-corner -int 2
                defaults write com.apple.dock wvous-tl-modifier -int 0
                ```

                Top right screen corner → Desktop.

                ```sh
                defaults write com.apple.dock wvous-tr-corner -int 4
                defaults write com.apple.dock wvous-tr-modifier -int 0
                ```

                Bottom left screen corner → Start screen saver.

                ```sh
                defaults write com.apple.dock wvous-bl-corner -int 5
                defaults write com.apple.dock wvous-bl-modifier -int 0
                ```

                Bottom right screen corner → Application window.

                ```sh
                defaults write com.apple.dock wvous-bl-corner -int 3
                defaults write com.apple.dock wvous-bl-modifier -int 0
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

## Host

    ID: 4176F379-79B3-466F-A689-11701A0432EF

### Manual: Turn the lights on

    header-args: :tangle host/configuration-host-01-manual.org

    ID: AD976F50-9B8A-4B07-ABA6-B00FE0081E90

Perform the common steps.

```org
<<configuration-common-manual>>
```

### Automated: Install and automatically configure as much as possible

    header-args: :tangle host/configuration-host-02-automated.sh :tangle-mode (identity #o755)

    ID: AD976F50-9B8A-4B07-ABA6-B00FE0081E90

Perform the common steps.

```org
<<configuration-common-automated>>
```

1.  Steps

        HEADER-ARGS: :noweb-ref configuration-common-automated

        ID: 995CBCB2-07FC-4933-8084-9DB97B11CF92

    1.  Software

            ID: 68C5F6B5-9D98-4562-92A2-BE3D5C52F76E

        Perform the common steps.

        ```org
        <<configuration-common-automated-steps-software>>
        ```

    2.  Settings

            ID: D19C1E4F-7195-44AE-A3D1-1D48AAC91BD1

        1.  Machine

                ID: A959032E-88AA-4643-8AE0-80DE02EDE3AD

            Perform the common steps.

            ```org
            <<configuration-common-automated-steps-settings-machine>>
            ```

        2.  User

                ID: F1F504EE-6438-4C65-A2CF-0E1F04E3E538

            Perform the common steps.

            ```org
            <<configuration-common-automated-steps-settings-user>>
            ```

### Manual: Configure the automatically installed stuff

    header-args: :tangle host/configuration-host-03-manual.org

    ID: 32266D7A-F601-4E9E-81BB-F9569FEA0791

Perform the common steps.

```org
<<configuration-common-manual-followup>>
```

## Writing

    ID: 4176F379-79B3-466F-A689-11701A0432EF

### Profile

    ID: D0B61BD6-13D8-4569-8696-30256456A05C

```sh
<<common-profile-body>>
export INFOPATH='/usr/local/share/info:/usr/share/info'
export CCRYPT="/usr/local/Cellar/ccrypt/1.10/share/emacs/site-lisp"
export EELIB="/Users/$(whoami)/EELIB"
export MACTEX_BIN="/usr/local/texlive/2015/bin/x86_64-darwin"
export PATH=<<common-profile-path-pre>>:$MACTEX_BIN:<<common-profile-path-post>>
alias e='open /Applications/Emacs.app --args --debug-init'
alias ec='/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw --debug-init'
```

### Manual: Turn the lights on

    header-args: :tangle writing/configuration-writing-01-manual.org

    ID: AD976F50-9B8A-4B07-ABA6-B00FE0081E90

Reminder:

```org
*DO INSTALL Xcode BEFORE THE CLT*
```

Perform the common steps.

```org
<<configuration-common-manual>>
```

### Automated: Install and automatically configure as much as possible

    header-args: :tangle writing/configuration-writing-02-automated.sh :tangle-mode (identity #o755)

    ID: AD976F50-9B8A-4B07-ABA6-B00FE0081E90

Perform the common steps.

```org
<<configuration-writing-automated>>
```

1.  Steps

        HEADER-ARGS: :noweb-ref configuration-writing-automated

        ID: 995CBCB2-07FC-4933-8084-9DB97B11CF92

    1.  Software

            ID: 68C5F6B5-9D98-4562-92A2-BE3D5C52F76E

        Perform the common steps.

        ```org
        <<configuration-common-automated-steps-software>>
        ```

        1.  Set up the new profile

                ID: B0B40263-EBC0-410C-B069-89766CBC47B9

            ```sh
            rm ~/.profile
            cp ./profile-writing ~/.profile
            source ~/.profile
            cat ~/.profile
            ```

            1.  EELIB

                    ID: 23DCDAAE-9D70-4168-9300-AC15E3F32474

                ```org
                * EELIB

                - Make a directory =~/EELIB=
                  #+BEGIN_SRC sh
                  mkdir ~/EELIB
                  #+END_SRC
                - Download the following JAR files to that folder
                - [[http://plantuml.com/][PlantUML]] to it, either downloading the unversioned JAR or
                   renaming it to "plantuml.jar"
                - [[http://ditaa.sourceforge.net/][ditaa]] to it, extract the versioned JAR, and rename it to "ditaa.jar"
                - [[https://www.languagetool.org/][LanguageTool]]
                  - Use the "daily build" if the download is too slow
                  - Extract it here
                  - Rename the directory to "LanguageTool"
                  - Took 8 tries to download it; kept stalling at 80%
                ```

        2.  Growl

                ID: 48048FB4-E77B-4226-82EF-BA8AA30E2D37

            ```org
            * Growl

            - Install via the app store
            - Start it
            - enable run on login
            - top left corner
            - crystal
            ```

        3.  Bunch of Stuff

                ID: 50500125-8B10-4E18-9DB3-45B2CAC29B27

            ```sh
            brew cask install xquartz
            brew cask install growlnotify
            brew install aspell -all
            brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
            brew install graphviz
            brew install pandoc
            brew install emacs --with-cocoa --with-gnutls --with-imagemagick
            brew linkapps
            ```

        4.  Java

                ID: 7E76DE2C-7836-44B0-8636-90BB876A5E33

            ```sh
            brew cask install java
            ```

        5.  Deltawalker

                ID: D8E6483D-FF38-4A25-BA43-3CA7516B8789

            ```sh
            brew cask install deltawalker
            ```

            ```org
            * DeltaWalker

            Got to it's Cellar location and drag it into Applications.

            License it.

            Set up the "Compare with DeltaWalker.workflow" by following the directions
            - Copying it to the user library
            - Opening it in Automator by double clicking it in Finder

            - Set preferences for new comparisons (be sure of this, easy not to)
              - General
                - Date formatting: English (United States)
                - Max available memory: 1024
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

            There are files to test with [[/opt/homebrew-cask/Caskroom/deltawalker/2.1.2/Extras/samples%0A][here]]. Test them using the Finder integration.

            After Git it set up, test it there ,too.
            ```

        6.  MacTeX

                ID: 17B20C34-B6E5-478E-BDF5-F7E56588AE7E

            ```sh
            brew cask install mactex
            ```

        7.  GnuPlot

                ID: CD0644AD-7F3D-4FE7-A3B4-32000755E7B1

            ```sh
            brew install gnuplot --with-latex --with-pdflib-lite --with-test --with-x11
            ```

        8.  Org-Mode

                ID: F23E86FA-0EE3-4028-89F2-09B5B9DFEC75

            1.  Download Org Mode

                    ID: 63AFF6C1-2214-44F2-9069-BA156C1D322E

                This script should be idempotent.

                ```sh
                set -x
                rm -rf ~/src
                cd ~/src
                git clone git://orgmode.org/org-mode.git
                cd org-mode
                emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
                cd ~/src
                git clone git@github.com:punchagan/org2blog.git
                git clone https://github.com/jwiegley/use-package.git
                git clone https://github.com/grettke/help.git
                ```

            2.  Link Files and Folders

                    ID: 0ECC4895-8B6B-4079-A581-90B0B2AC7355

                ```sh
                rm ~/.emacs.el
                ln -s ~/src/help/.emacs.el ~/.emacs.el
                rm -rf ~/.emacs.d
                mkdir ~/.emacs.d
                ln -s ~/src/help/eshell/ ~/.emacs.d/eshell
                ```

    2.  Settings

            ID: D19C1E4F-7195-44AE-A3D1-1D48AAC91BD1

        1.  Machine

                ID: A959032E-88AA-4643-8AE0-80DE02EDE3AD

            Perform the common steps.

            ```org
            <<configuration-common-automated-steps-settings-machine>>
            ```

        2.  User

                ID: F1F504EE-6438-4C65-A2CF-0E1F04E3E538

            Perform the common steps.

            ```org
            <<configuration-common-automated-steps-settings-user>>
            ```

### Manual: Configure the automatically installed stuff

    header-args: :tangle writing/configuration-writing-03-manual.org

    ID: 32266D7A-F601-4E9E-81BB-F9569FEA0791

Perform the common steps.

```org
<<configuration-common-manual-followup>>
<<configuration-writing-manual-followup>>
```

### Automated: Personal Git and TeX Configuration

    header-args: :tangle writing/configuration-writing-04-automated-personal.sh :tangle-mode (identity #o755)

    ID: F008829D-FCC5-426E-8CB6-3E3DED5EE2AF

1.  Git Setup

        ID: 637C8E64-3756-4B50-9E89-B3444AEF29B0

    Aggressively debug.

    ```sh
    set -x
    ```

    Generate the key. There is no passphrase.

    ```sh
    rm -rf ~/.ssh
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
    echo .DS_Store > ~/.gitignore_global
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
    git config --global color.ui true
    git config --global core.autocrlf
    git config --global alias.st status
    git config --global alias.ci commit
    git config --global alias.dt difftool
    git config --global alias.mt mergetool
    git config --global diff.tool deltawalker
    git config --global difftool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/MacOS/git-diff $LOCAL $REMOTE'
    git config --global difftool.prompt false
    git config --global merge.tool deltawalker
    git config --global mergetool.deltawalker.cmd '/Applications/DeltaWalker.app/Contents/MacOS/git-merge $LOCAL $REMOTE $BASE $MERGED'
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
    git clone bitbucket-grettke:grettke/list.git
    git clone bitbucket-grettke:grettke/resume.git
    git clone bitbucket-grettke:grettke/notes.git
    git clone bitbucket-grettke:grettke/signature.git
    git clone bitbucket-grettke:grettke/grant-personal.git
    git clone bitbucket-grettke:grettke/correspondence.git
    git clone bitbucket-grettke:grettke/texmf.git
    cd ~/git/github
    git clone github-grettke:grettke/osx-provision.git
    cd ~/git/github-anonq
    git clone https://github.com/bkuhlmann/osx
    git clone https://github.com/monfresh/laptop
    cd ~/src
    git clone github-grettke:grettke/help.git
    ```

2.  TeX

        ID: 5E11928D-2734-4413-AE52-17BBEA095A73

    Set up my TeX stuff for KOMA-script. Backup the default configuration first.

    ```sh
    set -x
    ls /usr/local/texlive/2015
    sudo cp /usr/local/texlive/2015/texmf.cnf /usr/local/texlive/2015/texmf.cnf-`date '+%Y_%m_%d__%H_%M_%S'`
    ls /usr/local/texlive/2015
    sudo tlmgr conf texmf TEXMFHOME ~/git/bitbucket/texmf/
    ```

    Check that the path is really updated.

    ```sh
    kpsewhich KomaDefault.lco
    ```

    The documents say to maybe do the following. I did it.

    ```sh
    sudo mktexlsr
    ```

### Manual: Personal Git and TeX Configuration Testing

    header-args: :tangle writing/configuration-writing-05-automated-personal.org

    ID: 44798E7B-AC1F-4FD8-AB5E-3A3563B79C4B

-   [ ] Get Emacs running
    -   Usually problems with package loads
        -   EG dimnish, `list-package` and install it and restart
        -   `lexbind-mode` refuses to install
            -   &ldquo;Symbol&rsquo;s function definition is void: lexbind-mode&rdquo;
            -   Start with `--no-init` and comment out `lexbind-mode` just to get Emacs
                set up, then install `lexbind` via the package manager, then add it
                back in
        -   Broken Org-Mode
            -   This checks out Org-Mode from the trunk. Sometimes stuff get&rsquo;s
                broken. My config debugs on error. The goal is to always have
                a working system. Sometimes, I copy over a working copy of Org
                or any of the libraries onto the host if there are issues.
-   [ ] tangle
    -   Tangle the document successfully
-   [ ] execution
    -   Delete every result block: just do it manually search for `#+RESULT`
    -   Delete all image output
    -   Execute entire document successfully
    -   Images re-appear
-   [ ] eshell
    -   Run it
    -   Emacs uses correct HELP directory
-   [ ] ccrypt
-   [ ] ispell
-   [ ] weasel words
-   [ ] langtool
    -   Verify installation, can have the wrong dir and the tool just says that
        there are no issues
    -   Run `langtool-check-buffer`
    -   qkc does the scan, qkC suggests corrects, verified on a corresponsence
-   [ ] Correspondence
    -   Pick a letter
    -   Address and signature and everything looks right
-   [ ] Messages
    -   Make sure that there are no startup warnings or issues
-   [ ] Export to everything
    -   Longest test
    -   This is used for publishing
    -   First delete everything
    -   [ ] html
        -   Images are links, not images
    -   [ ] md
        -   Images are links, not images
    -   [ ] pdf
    -   [ ] txt
