#!/bin/sh
UTC_PREF="/Library/Preferences/com.extensis.UniversalTypeClient.conf"
echo "server.address = x.x.x.x" > "$UTC_PREF"
echo "server.port = 8080" >> "$UTC_PREF"

"/Applications/Universal Type Client.app/Contents/MacOS/Universal Type Client" --HeadlessInstallTriggeredFromInstaller YES > /dev/null 2>&1

exit 0