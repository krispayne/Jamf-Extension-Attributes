#!/bin/bash
# check for auto update.

AutoSoftwareDownload="$(/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload)"

if [[ ${AutoSoftwareDownload} = "1" ]]; then
    RESULT="Enabled"
elif [[ ${AutoSoftwareDownload} = "0" ]]; then
    RESULT="Disabled"
else 
    RESULT="Unknown"
fi

echo "<result>${RESULT}</result>"
