sudo apt-mark hold linux-image-generic linux-headers-generic
if [ $(dpkg-query -W -f='${Status}' sentinelagent 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get update -y && sudo apt-get install libxml2-utils make gcc bzip2 linux-headers-generic && sudo apt-get install libqt5webkit5
sudo chmod +x /opt/COMPANYNAMEresources/SentinelAgent/SentinelAgent.deb
sudo dpkg -i /opt/COMPANYNAMEresources/SentinelAgent/SentinelAgent.deb
sudo /opt/sentinelone/bin/sentinelctl management token set TOKENHERE
sudo /opt/sentinelone/bin/sentinelctl control start
sudo chmod +x /opt/COMPANYNAMEresources/DCLinuxAgent/DesktopCentral_LinuxAgent.bin
cd /opt/wweresources/DCLinuxAgent
sudo ./DesktopCentral_LinuxAgent.bin
fi

