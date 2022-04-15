#!/bin/bash

rm -rf /Users/*/Library/Preferences/com.paloaltonetworks.GlobalProtect*

killall cfprefsd

vpnConnected=$(netstat -r -f inet | grep "gp\|utun")
if [[ ! $vpnConnected ]]; then
  echo "Relaunching GlobalProtect..."
  killall GlobalProtect
  exit 0
fi

echo "Skipping GlobalProtect relaunch - vpn in session"