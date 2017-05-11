#!/bin/bash
DSN=$(system_profiler SPDisplaysDataType | grep "Display Serial Number" | awk '{print $4}')
echo "<result>${DSN}</result>"
