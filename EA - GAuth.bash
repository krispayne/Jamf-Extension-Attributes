#!/bin/sh
# Find OTP extenstion.
# adapted from:
# script by emily k 2014-07-29
# to detect if the Awesome Screenshot Extension is installed on Google Chrome

currentUser=`ls -l /dev/console | cut -d " " -f 4`

if [ -d "/Users/$currentUser/Library/Application Support/Google/Chrome/Default/Extensions/ilgcnhelpchnceeipipijaljkblbcobl" ] ; then
    STATUS="Installed."
else
    STATUS="Not installed."
fi

echo "<result>$STATUS</result>"
