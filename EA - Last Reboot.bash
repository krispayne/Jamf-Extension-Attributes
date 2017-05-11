#!/bin/bash
# Find out when the last reboot was

lastReboot=$(who -b | awk '{print $3" "$4}')

echo "<result>"$lastReboot"</result>"
