#!/bin/bash
# Determine the printer driver version using lpinfo

# I got the printer information by running:
#   [kris@Kris-MacBook-Pro ~]$ lpinfo --make-and-model "7225" -m
#   Library/Printers/PPDs/Contents/Resources/Xerox WorkCentre 7225.gz Xerox WorkCentre 7225, 3.123.0
#   [kris@Kris-MacBook-Pro ~]$ 
#
# for an HP I have I used: 
#   [kris@Kris-MacBook-Pro ~]$ lpinfo --make-and-model "hp laserjet p4010" -m
#   Library/Printers/PPDs/Contents/Resources/HP LaserJet P4010_P4510 Series.gz HP LaserJet P4010 Series
#   [kris@Kris-MacBook-Pro ~]$
# which did not return a version. YMMV. Printer driver makers DGAF.

printer="Xerox WorkCentre 7225"
driverversion=$(lpinfo --make-and-model "${printer}" -m | sed -n -e 's/^.*, //p')

if [[ ${driverversion} ]]; then
    result=${driverversion}
else
    result="Not Installed"
fi

echo "<result>$result</result>"
