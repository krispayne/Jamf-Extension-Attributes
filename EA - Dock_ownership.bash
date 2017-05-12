#!/bin/bash
# Checks the user's dock for root ownership.
# This is needed when creating users via Casper Imaging for some strange reason...
# ls -al /Users/username/Library/Preferences/ | grep dock.plist | awk '{ print $3 }'

#Determine logged in user
loggedInUser=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

result=$( ls -al /Users/${loggedInUser}/Library/Preferences/ | grep dock.plist | awk '{ print $3 }' )

if [ "$result" = "root" ];then
    echo "<result>root</result>"
else
    echo "<result>${result}</result>"
fi
