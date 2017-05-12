#!/bin/bash
# Check to see if the IR receiver is enabled.

ircmd="$(/usr/bin/defaults read /Library/Preferences/com.apple.driver.AppleIRController.plist DeviceEnabled)"

if [[ ${ircmd} = "0" ]]; then
    result="Disabled"
elif [[ ${ircmd} = "1" ]]; then
    result="Enabled"
else
    result="Unknown"
fi

echo "<result>${result}</result>"