#!/bin/bash
# Get the plugged in display's serial number

DSN=$(system_profiler SPDisplaysDataType | grep "Display Serial Number" | awk '{print $4}')
echo "<result>${DSN}</result>"
