#!/bin/bash
# Check failed login count

#Determine logged in user
loggedInUser=$(/usr/bin/python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

result=$( dscl . readpl /Users/${loggedInUser} accountPolicyData failedLoginCount | awk '{ print $2 }' )

if [ "${result}" = "0" ];
then
    echo "<result>0</result>"
else
    echo "<result>${result}</result>"
fi

