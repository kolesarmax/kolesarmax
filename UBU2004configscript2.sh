if [ $(dpkg-query -W -f='${Status}' globalprotect 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  sudo apt-get -y install libxml2-utils && sudo apt-get -y install libqt5webkit5
sudo dpkg -i /opt/COMPANYNAMEresources/PanGPLinux/GlobalProtect_UI.deb
fi

