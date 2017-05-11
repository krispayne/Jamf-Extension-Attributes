#!/bin/bash

IRCMD="$(/usr/bin/defaults read /Library/Preferences/com.apple.driver.AppleIRController.plist DeviceEnabled)"

if [[ ${IRCMD} = "0" ]]; then
    echo "<result>Disabled</result>"
elif [[ ${IRCMD} = "1" ]]; then
    echo "<result>Enabled</result>"
else
    echo "<result>Unknown</result>"
fi

