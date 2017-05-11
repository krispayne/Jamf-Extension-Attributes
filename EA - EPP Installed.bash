#!/bin/bash
# EndPoint Protector detector (simple)
# this might be redundant, can also look in /Library/CoSoSys/EndpointProtector/
# if /etc/epp exists, true, if not, false
EPPDIR="/etc/epp"
RESULT=""

if [ -d ${EPPDIR} ]; then
    RESULT="True"
else
    RESULT="False"
fi

echo "<result>${RESULT}</result>"
