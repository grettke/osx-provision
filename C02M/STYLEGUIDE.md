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
