# To install the `W0CHP` Pi-Star Dashboard

1. Run: 

        rpi-rw
2. Run: 

        curl http://repo.cucc.io:3000/Chipster/W0CHP-PiStar-Install/raw/master/W0CHP-pistar -o W0CHP-pistar
3. Run: 

        sudo bash ./W0CHP-pistar -h
...to familiarize yourself with the available options/arguments:

        -h,  --help                     Display this help text.
        -ia, --install-all              Install W0CHP dashboard, binaries and system binaries
        -ra, --restore-all              Restore original dashboard, binaries and system binaries
        -id, --install-dashboard        Install W0CHP dashboard.
        -rd, --restore-dashboard        Restore original dashboard.
        -ib, --install-binaries         Install W0CHP binaries.
        -rb, --restore-binaries         Restore original binaries.
        -is, --install-sbinaries        Install W0CHP system binaries.
        -rs, --restore-sbinaries        Restore original system binaries.
        -s,  --status                   Display current install, original or personal installations.
4. When ready to install, run the above command again with the option/argument you wish...e.g:

        sudo bash ./W0CHP-pistar -id
(...to install the dashboard only).
5. Enjoy! :-)

