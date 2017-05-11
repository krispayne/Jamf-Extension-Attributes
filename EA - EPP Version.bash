#!/bin/bash
# Check version of EPP
# Also a handy way to see if it's installed.

RESULT=""

if [ -f /Library/CoSoSys/EndpointProtector/EppClient ]; then
    RESULT=$(/Library/CoSoSys/EndpointProtector/EppClient --version | awk '{print $7}')
else
    RESULT="Not Installed"
fi

echo "<result>$RESULT</result>"
