#!/bin/bash

perl -pi -e 's/__THEME__/'$KIWI_THEME'/' /opt/KiwiIRC/config.js
perl -pi -e 's/irc.kiwiirc.com/'$WEBIRC_NETWORK'/' /opt/KiwiIRC/config.js
perl -pi -e 's/"127.0.0.1":\s+"foobar"/"'$WEBIRC_NETWORK'": "'$WEBIRC_PASSWORD'"/' /opt/KiwiIRC/config.js

/opt/KiwiIRC/kiwi -f start -c /opt/KiwiIRC/config.js -v
