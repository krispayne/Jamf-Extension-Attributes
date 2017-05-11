#!/bin/bash

loginwindow=$(defaults read /Library/Preferences/com.apple.loginwindow.plist | grep SHOWFULLNAME | sed 's/;$//' | awk '{print $3}')

if [[ ${loginwindow} == 0 ]]; then
    RESULT="Show List of Users"
elif [[ $loginwindow} == 1 ]]; then
    RESULT="Show Username and Password fields"
else
    RESULT="Unknown/Not set. Consider explicit setting."
fi

echo "<result>${RESULT}</result>"
