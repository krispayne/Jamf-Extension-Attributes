#!/bin/bash
# Find OTP extenstion.
# adapted from:
# script by emily k 2014-07-29
# to detect if the Awesome Screenshot Extension is installed on Google Chrome

result=""
currentUser=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

if [[ -d "/Users/$currentUser/Library/Application Support/Google/Chrome/Default/Extensions/gaedmjdfmmahhbjefcbgaolhhanlaolb" ]] ; then
    result="Installed."
else
    result="Not installed."
fi

echo "<result>${result}</result>"
