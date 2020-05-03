#!/bin/sh

vpnName=$(nmcli con show --active | grep -i vpn | awk '{print $1}')
if [ -z $vpnName ]
then
	echo ""
else
	echo $vpnName
fi
