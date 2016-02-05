
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
-   Always use the present tense for directions and the past tense for notes
-   Software downloads during provisioning often fail
-   `brew` is explicit
    -   You need to pay attention to the command at least once. Some applications
        will auto-install them self when you try to run them, and that is great.
        Others don&rsquo;t and run from the Caskroom. Sometimes the latter is fine, other
        times it is not.
-   Working on identically provisioned boxes where one will replace the other
    -   Easy to confuse them and muck things up on the &ldquo;good one&rdquo;
    -   Easy to test valuable changes in the &ldquo;new one&rdquo; and blow them away before
        pushing them to a remote git repo or migrating them back into the &ldquo;good one&rdquo;
        to do so
    -   Forget about what you did where, and blow it away while reverting snapshots
-   Ignore the urge to provision on-the-metal until you&rsquo;ve provisioned a box 5-10
    times and have used it for a month or two without major changes
    -   Every other time will be to soon
-   Backups
    -   Keep everything you value
        -   On another computer
            -   Local or remote
    -   Minimize stress during non-trivial provisioning efforts
-   Download speed is the weakest link
    -   Separate work into separate steps to get downloads finished and configure
        later

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

### gcr

    ID: 302F5DF8-89F3-409F-8F2F-07B9DD424D85

This box configuration will follow and utilize the manual and automated
provisioning scripts for the &ldquo;writing&rdquo; scenario.

1.  Snapshots

        ID: 147ACE5F-775B-4D36-9EC6-740D05AA4157

    1.  000 (65289699-3B29-48A0-9135-A0BD467CC47E)

            ID: 3209C6EA-4408-478F-B854-287CBB126591

        -   Create a new machine using
            -   IOSXECA
            -   Settings
                -   Sharing
                    -   Shelf
                    -   Mirror
                -   Processors & Memory
                    -   Processors: 2
                    -   Memory: 5120MB
                        -   7GB for each of the two boxes and 2GB for the host makes the guests
                            too slow
                        -   6GB and 2 boxes made the host run out of memory in a &ldquo;freak event&rdquo;
                            that happened on two host systems
                    -   Advanced options
                        -   Starting to wonder how expensive it is to check these
                        -   [X] Enable hypervisor
                        -   [X] Enable code profiling
                -   Display
                    -   [X] Use full resolution for Retina display
                    -   **Scaled resolution:** All View Modes
                    -   Virtual Machine Resolution
                        -   **Single Window:** Resize the virtual machine and the window
                        -   **Full Screen:** Resize the virtual machine to fit the screen
                -   Hard Disk (SATA)
                    -   256GB
                    -   Click &ldquo;Apply&rdquo;
        -   Close the Settings
        -   Boot the box <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:45&gt;</span></span>
        -   Progress indicator appears <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:45&gt;</span></span>
        -   Progress indicator remained on left end for a while
            -   It jumps around between far left and middle
        -   Progress indicator closes <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:47&gt;</span></span>
        -   Menu appears, chose English <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:48&gt;</span></span>
        -   Chose &ldquo;Install OS X&rdquo;
        -   Continue
        -   Continue
        -   Agree
        -   Agree
        -   Macintosh HD (42GB)
        -   Install
        -   Install sequence begins <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:49&gt;</span></span>
            -   Sometimes it says &ldquo;About a second remaining&rdquo; for the entire duration then
                completes. Other times it shows a countdown to 0 and then says &ldquo;About a
                second remaining&rdquo; for a long time and then says &ldquo;About 0 seconds remainng&rdquo;
                for a while and then completes.
        -   Reboots into another install sequence <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:54&gt;</span></span>
        -   Progress bar again sits on the left side
        -   No message for a while
        -   Says &ldquo;Installing: About 20 minutes remaining&rdquo; <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:55&gt;</span></span>
        -   Keyboard and palm-rest warm <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 19:59&gt;</span></span>
        -   Fan turned on <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 20:00&gt;</span></span>
        -   Another progress indicator appears <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 20:07&gt;</span></span>
        -   Installer completed and &ldquo;first-boot&rdquo; screen appeared <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-08 Fri 20:07&gt;</span></span>
        -   Took a snapshot of this running box

    2.  001 (47FEE341-D051-4CC0-8C59-324CA57E4CBB)

            ID: B43DDE6F-65B3-45AF-AAA7-0348FD7974B4

        -   Perform only account creation steps for creation of `gcr` following the
            &ldquo;Common Manual&rdquo; flow
            -   Because this is getting snapshotted it only needs to go this far. The goal
                is to set up the base machine correctly now.
        -   Read [this](https://themacwrangler.wordpress.com/2015/10/21/resizing-el-capitan-mac-volumes-under-vmware-fusion/) for a reference
        -   Open Terminal
        -   Execute:

            ```sh
            sudo diskutil resizeVolume / R
            ```
        -   View the results, they should be what you expect
        -   Verify in DU
        -   Install VMWare Tools
        -   Test it
            -   Shared Folders
            -   Windows versus Full-Screen
                -   Check resolution in full, and windowed-half-screen
                -   Check it by choosing &ldquo;Scaled&rdquo; and after checking it choose
                    &ldquo;Default for display&rdquo;
        -   Get updates from AppStore
            -   When prompted: Turn on Auto Updates
        -   Check for updates again
        -   Shutdown
        -   Take a snapshot (while box is off)

    3.  002 (309AC7C5-FE7F-42F8-8680-BA78B6D7C239)

            ID: A1D507D9-2A74-4660-931D-604442308CF9

        -   Steps are: configuration-writing-01-manual.org
        -   Perform the remaining account configuration and Xcode/CLT setup in the
            &ldquo;Common Manual&rdquo;, choosing to install Xcode
            -   Don&rsquo;t set up the profile or provision or do anything beyond there
            -   Goal is to snapshot more frequently than just at the divisions between
                runnning the provisioner scripts (both manual and automated)
        -   Check for updates again
        -   Shutdown
        -   Take a snapshot (while box is off)
        -   From here snapshots should occur at script divisions

    4.  003 (D9D1B231-DAC8-4EC3-A140-7EC60D4914AF)

            ID: 162811B7-0370-405A-AF12-353E1BC7E4C2

        Steps are: configuration-writing-02-automated.sh

        -   Follow the directions to run the automated provisioning `02`
            -   Remember: nothing is configured now
            -   Downloads failed 2 times; re-ran the script
            -   Bug when copying over the new profile; re-wrote that part 5 times
            -   `xquartz` installer is slow
            -   `org-mode` checkout is slow
            -   Noticed bugs with how the final Emacs linking goes
            -   Forgot that all of this was untested
            -   Script is happy now
            -   Downloads are slow
            -   Restarting brew sometimes restarts downloads at their original progress
            -   How to drop MacTeX.pkg into the brew cache in case the download never
                completes?
                -   Read [this](http://mygeekdaddy.net/2014/12/05/how-to-install-a-local-file-in-homebrew/)
                -   Tried renaming the pkg to &ldquo;mactex-latest.pkg, didn&rsquo;t work
                -   Tried renaming it to &ldquo;mactex-latest.pkg.incomplete&rdquo;, didn&rsquo;t work
                -   Quit trying and kept re-running the download until it completed and
                    installed
                -   Downloading mactex via direct-download is too slow
            -   Out of the 10 tries to finish mactex and fix bugs, I wanted to manually fix
                things and move on. I didn&rsquo;t, and that is probably good. In the end, the
                automatic provisioner did it&rsquo;s job and I didn&rsquo;t do anything manually. That
                is a hard habit to break.
            -   There is a different issue on every run. Sometimes the org-mode git checkout
                never completes. It sits at 98% forever. Control-Z and re-ran
        -   Named box &ldquo;osiris&rdquo;
        -   That is it; didn&rsquo;t even click around or inspect anything.
        -   Kept forgetting to copy the new version of the script onto the box; should
            automate that
        -   Shutdown
        -   Take a snapshot (while box is off)

    5.  004 (59F8EDFF-5C26-48B2-9CEF-28BDD316B629)

            ID: B05C0718-0C5D-43A2-9F17-7753666F38D0

        -   Steps are: configuration-writing-03-manual.org
        -   Manually set the background to the galaxy
        -   Bug fix in provisioner
            -   Don&rsquo;t install karabiner on a guest, so, fixed scriptand manually removed
                from the boxes
            -   VLC doesn&rsquo;t work, replaced it with MPlayer OSX Extended
            -   Added Opera
            -   Added cask project checkout to easily browse Casks
        -   Every time I restore the image now I have to make all of the corrections just
            because I don&rsquo;t want to have to install MacTeX again
            -   Note: All expensive operations should isolated via snapshots in addition to
                just using them.
        -   Stuff that can&rsquo;t get tested until Emacs is set up
            -   Git key stuff
            -   Fonts for Emacs, can see in profile though
            -   Deltawalker
        -   Rebooted and reviewed the steps again
            -   Tried DW again just to be sure
        -   Shutdown
        -   Take a snapshot (while box is off)

    6.  005 (579C50D8-9665-4F7F-9F14-91CE7A735667)

            ID: A9FAC4AE-DF24-4C60-9821-B498B5CA15F1

        -   Blew away ~/writing
        -   Downloaded osx-provision.zip from github to ~/Downloads and expanded it
        -   Ran configuration-writing-04-automated-generic.sh
        -   Ran personal git setup
        -   Run configuration-writing-05-automated-personal.sh
        -   Worked through configuration-writing-06-manual-personal.org, working with
            help.org
            -   Emacs runs fine
            -   Tangling works fine
            -   Image generation works
            -   eshell works
            -   ccrypt works
            -   ispell works
            -   weasel words works
            -   langtool
                -   Initially didn&rsquo;t work: &ldquo;langtool&#x2013;check-command: java command is not found&rdquo;
                -   java is in the path
                -   java<sub>home</sub> was not set
                -   works
            -   Koma letter works
            -   No startup messages
            -   Weaving everything works
        -   org2blog is missing

            ```sh
              cd ~/src
              git clone https://github.com/punchagan/org2blog.git
              #+END_SRC sh
              - Manually fixed it
            - Rebooted
            - Test DeltaWalker
              - In Finder, Compare two files with DW works
              - The value of difftool.deltawalker.cmd
                - Looks fine in the script, looks weird when I list it and that is OK
                - In the terminal, calling that path makes DW run as expected
              - This works fine
                #+NAME: 2EF21564-820C-40B6-A995-BC74941CB71D
                #+BEGIN_SRC sh
            /Applications/DeltaWalker.app/Contents/MacOS/git-diff /opt/homebrew-cask/Caskroom/deltawalker/2.1.2/Extras/samples/q0.txt /opt/homebrew-cask/Caskroom/deltawalker/2.1.2/Extras/samples/q1.txt
            ```

            -   Just tested a 3 way merge and that worked totally fine. Need to get plain
                diffs working
            -   Right now, not sure what changed, and Git diff with DW is working. Suspect
                that up above, I re-wran the command to set the external diff tool for Git,
                not touching merge at all, well maybe that had something to do with it?
        -   Noting that I want a command for checking for Git working copy bad states
        -   Checked for updates
        -   Shutdown
        -   Take a snapshot (while box is off)

    7.  006 (61B52468-9004-4B8C-9C9B-32D05F3F16AC)

            ID: A660C72A-6756-4524-AF2F-57D1E9BD5EF0

        -   Forgot to empty the trash
        -   Forgot racket for resume
            -   Installed it manually
            -   Built and tested it
            -   Updated provisoner to install
            -   Updated doc for testing out the installation to include testing this
        -   Flash Player
            -   Cask installed software does not work
            -   Manually installed software does not work

# Provisioning

    ID: 262EEA68-1753-489D-A3BE-672C162CD356

    Effort: energy

## Steps

    ID: 6ACCC2CE-5EB4-42D6-AD12-0DC836C2A3FD

First thing is to get these scripts from GitHub either:

-   As a ZIP
-   A git working copy

### OS X

    ID: EAD703CC-3234-4438-930D-C1BB2F50DF6B

1.  Installation

        header-args: :tangle ./os-x-installation.org

        ID: 46781470-E45C-4E6E-98E9-CD41507FF6FE

    ```org
    - Re-image your box
      - Host :: ~PHOSDI~
      - Guest :: ~IOSXECA~
    - During configuration log into the App Store
    - Make a user named ~gcr~ and choose an avatar
    - Install software updates
    - Development Tools
      - If you want to use XCode :: Go to the App Store and Install it
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
        - For =host1= that means =host1= and =Storage=
        - Spotlight suggests applications and files on those volumes and you usually
          don't want that
        - Applications get locks on files on non host volumes
        - Write a shell script and run it at logon
          #+BEGIN_SRC sh
    #!/usr/bin/env bash
    # -*- mode: sh; -*-

    diskutil unmount /dev/disk0s3
    diskutil unmount /dev/disk0s4
    diskutil unmount /dev/disk0s6
    diskutil unmount /dev/disk0s7
    diskutil unmount /dev/disk0s8
          #+END_SRC
    - Mouse
      - Host :: Connect Bluetooth mouse
      - Make the mouse slow
    - Host :: Reconfigure control keys
    - Host :: Maximize resolution
    - Host :: Show Keychain Access in Menubar
    - Users & Groups: Enable Guest User
    - Screensaver: Flurry, 10m
    - Host :: Add printer
    - Energy saver
      - Host :: do
        - On power
          - Display off at 15m
          - Prevent computer from sleeping automatically when display is offp when display is off
        - On battery, Screen sleep 5m
          - Don't slightly dim the display on battery power
      - Guest :: Computer sleep never, Screen sleep 15
    - Sound
      - Show volume in menubar
    - Bluetooth
      - Show in menu bar
    - Finder
      - Preferences
        - Sidebar
          - Favorites
            - <Home>
          - Devices
            - <Computer>
    ```

2.  Configuration

        header-args: :tangle ./os-x-configuration.sh :tangle-mode (identity #o755)

        ID: 46781470-E45C-4E6E-98E9-CD41507FF6FE

    1.  Machine

            ID: 44A4C35C-E27A-462F-BBB2-A178F70194D8

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

        Cycle through system information by clicking on the clock at the login
        screen<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>.

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

### Administration

    ID: 539CAD89-6A07-404F-8AE6-D69B99C055FF

1.  Install

        header-args: :tangle ./administration.sh :tangle-mode (identity #o755)

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

        ```sh
        cd ~/git/github-anonymous
        git clone https://github.com/Homebrew/homebrew.git
        git clone https://github.com/caskroom/homebrew-cask.git
        ```

2.  Configure

        header-args: :tangle ./administration.org

        ID: B7B4F0A4-C676-4B79-828F-837B3DAE851E

    1.  Terminal

            ID: 4A37A9A3-A9D6-4ECD-AB89-EB0FE9815091

        ```org
        * Terminal

        - Profiles
          - Import the Solarized dark theme
          - Set it to the default theme
          - Set the font to DJSM 17
        - Profiles \rarr Advanced
          - [ ] Set locale environment variables on startup
            - Set them in your =bashrc=, not here
        ```

### Usability

    ID: 83A1561E-B613-4ED3-96AD-93B47F001C26

1.  Install

        header-args: :tangle ./usability.sh :tangle-mode (identity #o755)

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
        ```

2.  Configure

        header-args: :tangle ./usability.org

        ID: 37C51946-B8BE-41B4-BEA6-7DBA95E1955F

    ```org
    * Karabiner

    - Run it. Approve it. Configure it with the following. Look for the
      heading with the name below following "Modify".
    - Check:
      - Return to Option_L
        (+ When you type Return only, send Return)

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
    - Hide everything else
    * flux

    *Only install on hosts*

    - Enable at startup
    ```

### Utility

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B

1.  Install

        header-args: :tangle ./utility.sh :tangle-mode (identity #o755)

        ID: F2B0FCF0-1F56-4D3B-AC9F-10F4E430BBE2

    1.  Java

            ID: 7E76DE2C-7836-44B0-8636-90BB876A5E33

        ```sh
        brew cask install java
        ```

    2.  ditaa

            ID: 9854EF35-CB8E-4DBA-99E9-E41B9E5947C9

        ```sh
        brew install ditaa
        ```

    3.  plantuml

            ID: 0EB0DB85-1BCF-46AB-AF56-0653A41ABF82

        ```sh
        brew install plantuml
        ```

    4.  languagetool

            ID: 860B895C-E8C7-436E-BE3A-23F6B4605211

        ```sh
        brew install languagetool
        ```

    5.  aspell

            ID: EA68D5E2-13DC-4B3D-B01C-DB023A989199

        ```sh
        brew install aspell -all
        ```

    6.  graphviz

            ID: 1CB4FAE9-39E8-4818-90D5-3AE372CD3BB8

        ```sh
        brew install graphviz
        ```

    7.  pandoc

            ID: 48D995F7-2EAC-49AC-ABC1-18A18A237901

        ```sh
        brew install pandoc
        ```

    8.  ImageMagic

            ID: CBBBABD0-B049-4669-B113-4417A04DD613

        ```sh
        brew install imagemagick --with-fftw --with-fontconfig --with-webp --with-x11
        ```

    9.  povray

            ID: 196A365A-802C-48F4-B35D-02958CF95E78

        ```sh
        brew install povray --with-openexr
        ```

    10. growlnotify

            ID: 9367E78C-5F6F-44A2-A370-CD0AF9D41F40

        ```sh
        brew cask install growlnotify
        ```

    11. xmllint

            ID: 55AFF634-C899-4667-BC25-47F9099DFF9A

        ```sh
        brew install libxml2
        ```

    12. dos2unix

            ID: 59D47685-D541-4D78-88BF-F3313FE7DF10

        ```sh
        brew install dos2unix
        ```

    13. ccrypt

            ID: F9E3F2A3-F16A-4EB8-8F4F-4FF47C7BBE06

        ```sh
        brew install ccrypt
        ```

    14. tree

            ID: 8A7F33C7-CF3D-4E64-A63E-2AECD13FFD5F

        ```sh
        brew install tree
        ```

    15. archey

            ID: AAF25357-3F8F-4A19-902D-D494D4D7FE38

        ```sh
        brew install archey
        ```

    16. figlet

            ID: ADF24324-CF88-44E0-BE77-DC65DF37502E

        ```sh
        brew install figlet
        ```

    17. Freemind

            ID: A867B6FD-CD3A-4D5F-9EAF-26E96D31D760

        ```sh
        brew cask install freemind
        ```

### Internet

    ID: 1EBB115D-FF82-4A21-8EFC-8D8634C0CDEB

1.  Install

        header-args: :tangle ./internet.sh :tangle-mode (identity #o755)

        ID: 138B24D9-2E1B-4D95-B068-BFBE2275755D

    1.  MPlayer OSX Extended

            ID: C47DA927-A6B2-4751-98AC-D3200E6F4095

        ```sh
        brew cask install mplayer-osx-extended
        ```

    2.  Adobe Flash Player

            ID: 395720BE-487A-42F1-AD8A-2B68852C2001

        **Don't use `brew` to install this**.

        It always silently fails.

    3.  Skype

            ID: 6003585A-A3B2-453A-B3CF-33240C69BB0E

        Only install it on hosts.

        ```sh
        if [ ! -d "/Library/Application Support/VMware Tools" ]; then
            brew cask install skype
        else
            echo "skype: Only install on hosts"
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

        Sometimes this install fails. I checked the file download. The file exists. The
        name hasn&rsquo;t changed. Did a manual install instead.

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

2.  Configure

        header-args: :tangle ./internet.org

        ID: A8BA5927-38E4-4B49-8DDC-92FDD05F468B

    ```org
    * MPlayer OSX Extended

    - Run it
    - [[http://www.sample-videos.com/][Test it]]
    - Volume works?

    * Adobe Flash Player

    - Install manually
    - Verify

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
    ```

### DevOps

    ID: 203E96B0-926B-4A81-8793-A7B73792E303

1.  Install

        header-args: :tangle ./dev-ops.sh :tangle-mode (identity #o755)

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

2.  Configure

        header-args: :tangle ./dev-ops.org

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

### Development

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B

1.  Install

        header-args: :tangle ./development.sh :tangle-mode (identity #o755)

        ID: F2B0FCF0-1F56-4D3B-AC9F-10F4E430BBE2

    1.  Deltawalker

            ID: D8E6483D-FF38-4A25-BA43-3CA7516B8789

        ```sh
        brew cask install deltawalker
        ```

    2.  Python

            ID: 1BA55F5A-9902-4539-9494-0231C4DBD9B6

        For everything beyond the built in.

        ```sh
        brew install python
        brew linkapps python
        ```

    3.  Ruby

            ID: B7D03962-A386-4E62-AA68-3A7F95AF2CA4

        For everything beyond the built in.

        ```sh
        brew install ruby
        ```

    4.  Racket

            ID: 6D423497-C4D9-41BF-831C-1A6E665908A5

        ```sh
        brew cask install racket
        ```

    5.  forth

            ID: 29FAB329-3F6B-4618-9B9C-1A297F3B994F

        ```sh
        brew install gforth
        ```

    6.  git

            ID: 1F0C8A4B-097E-4090-93A7-8A2958331E4F

        For everything beyond the built in.

        ```sh
        brew install git
        ```

    7.  EMACS

            ID: 11284C48-AF3A-437F-B779-15C46B08B322

        ```sh
        brew install emacs --with-cocoa --with-gnutls --with-imagemagick
        brew linkapps
        ```

    8.  Sourcetree

            ID: 11602B65-2D6C-4A6D-805C-8ED0B5509B09

        ```sh
        brew cask install sourcetree
        ```

    9.  sml

            ID: 223E3DE6-7CA4-4831-9071-A7884C941A48

        ```sh
        brew install smlnj
        ```

    10. cvs

            ID: 868C1487-47DD-40E9-832D-CBFCA6A74661

        ```sh
        brew install cvs
        ```

    11. bzr

            ID: 000C4D3B-68E0-4356-8F1B-B9AA57F8468A

        ```sh
        brew install bzr
        ```

    12. mercurial

            ID: 4D35743F-DBC4-4A42-9104-8B4E6DB2CD5E

        ```sh
        brew install hg
        ```

    13. IntelliJ Idea

            ID: 313F1B11-75E2-438A-9D48-16C233F1C2DB

        ```sh
        brew cask install intellij-idea
        ```

    14. PyCharm

            ID: 18D4526F-B616-497D-A2A6-D39A6C541147

        ```sh
        brew cask install pycharm
        ```

    15. WebStorm

            ID: 14FBE5CB-8068-4795-A549-FFD16649E46D

        ```sh
        brew cask install webstorm
        ```

    16. r

            ID: 4E086037-0105-41AE-83F6-C8D909FBAACB

        ```sh
        brew cask install r
        ```

    17. R Studio

            ID: 19930D0D-7A42-468E-B60E-134F1BEAA30E

        ```sh
        brew cask install rstudio
        ```

2.  Configure

        header-args: :tangle ./development.org

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
          - Use soft wraps in console
          - Appearance
            - Show line numbers
            - Use block caret
            - nil Caret blinking
        - Colors & Fonts
          - [[https://github.com/jkaving/intellij-colors-solarized][Solarized Theme]]: Dark
          - General
            - Caret: #839496
          - Font
            - DJSM 17
        - Code Style
          - Right margin column: 80
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
    ```

### Manual

    header-args: :tangle ./manual.org

    ID: CFDA666A-254C-4DE4-825E-872A878A47F6

1.  Microsoft Office

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

2.  SAS University Edition

        ID: 3BE67982-9DDC-4FAC-BC9D-FB4F87DE58E3

    ```org
    * SAS University Edition

    - Download with FireFox
      - Fails with Chrome
    - 4096 MB RAM
    ```

3.  OSX Enhanced Voice Dictation

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
    ```

4.  Visible Body

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

5.  Entropy

        ID: 9EDE18B7-DDA1-4FC1-8866-256596BA54D0

    ```org
    * Entropy

    - This is a [[http://www.eigenlogik.com/entropy/][download]] and manual install.
    ```

6.  Guitar Pro

        ID: 36F3F9F6-31D1-4517-94F3-B7A787F2C166

    ```org
    * Guitar Pro

    - [[http://www.guitar-pro.com/en/index.php][Here]]. Sign into MySongBook.
    ```

7.  Cepestral Callie & David

        ID: FB2138CF-B62C-4BCB-A892-AB855A61535A

    ```org
    * Cepestral Callie & David

    [[http://www.cepstral.com/][Here]].

    You might need to log out and in again to make the "Cepstral Voices" appear in
    System Preferences.

    License them. Test them.

    Set Dictation & Text to Speech to: Callie
    ```

8.  App Store Installs

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

        - Set default voice to Callie
        ```

    6.  PixelMator

            ID: 76178B97-5BEE-4341-86C7-757138319E18

        ```org
        * PixelMator

        - Nothing special
        ```

### Git

    ID: A700593A-3D0C-49F0-AE05-2FAA5DFC95EF

1.  Generic

        header-args: :tangle ./git-generic.sh :tangle-mode (identity #o755)

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

2.  Personal

        header-args: :tangle ./git-personal.sh :tangle-mode (identity #o755)

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
    cd ~/git/github
    git clone github-`whoami`:grettke/osx-provision.git
    git clone github-`whoami`:grettke/bash.git
    ```

    At this point, the Bash initialization files point at the directory with my
    SSH key. Log out and in again and delete the anonymous pull. Not sure how to
    automate this part yet.

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

### Org-Mode

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B

1.  Install

        header-args: :tangle ./org-mode.sh :tangle-mode (identity #o755)

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

### TeX

    ID: C1DA9537-9D9B-493B-9318-4ABEEAFEA86B

1.  Install

        header-args: :tangle ./tex.sh :tangle-mode (identity #o755)

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

2.  Configure

        header-args: :tangle ./tex.org

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

## Testing

    header-args: :tangle testing.org

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

# Full System Backups

    ID: 01B5C019-E0D3-45A1-9C36-A6B493C03DE8

## On the Host

    ID: 5DA1CA11-12E2-418E-9CAC-8667594DECF5

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

## On the Guest

    ID: 4D6CFC4A-A907-466F-80A4-E9C4C66C59D7

-   Make a copy of the entire folder
