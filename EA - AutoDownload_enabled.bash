#!/bin/bash
# check for auto update.

result=""
AutoSoftwareDownload="$(/usr/bin/defaults read /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload)"

if [[ ${AutoSoftwareDownload} = "1" ]]; then
    result="Enabled"
elif [[ ${AutoSoftwareDownload} = "0" ]]; then
    result="Disabled"
else
    result="Unknown"
fi

echo "<result>${result}</result>"
