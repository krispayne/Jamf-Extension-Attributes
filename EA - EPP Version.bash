#!/bin/bash
# Check version of EPP
# Also a handy way to see if it's installed.

result=""

if [ -f /Library/CoSoSys/EndpointProtector/EppClient ]; then
    result=$(/Library/CoSoSys/EndpointProtector/EppClient --version | awk '{print $7}')
else
    result="Not Installed"
fi

echo "<result>${result}</result>"
