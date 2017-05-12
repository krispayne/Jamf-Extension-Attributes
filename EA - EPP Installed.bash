#!/bin/bash
# EndPoint Protector detector (simple)
# this might be redundant, can also look in /Library/CoSoSys/EndpointProtector/
# if /etc/epp exists, true, if not, false

eppdir="/etc/epp"
result=""

if [ -d ${eppdir} ]; then
    result="True"
else
    result="False"
fi

echo "<result>${result}</result>"
