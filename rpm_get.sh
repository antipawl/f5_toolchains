#!/bin/bash
set -e

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="F5 Automation Toolchain RPM Package Install"
TITLE="F5 Automation Toolchain Download Tool"
MENU="Choose one of the following options:"

OPTIONS= (1 "Declarative Onboading"
          2 "Application Services 3"
          3 "Telemetry Services" )

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "Downloading Latest DO Package"
            LINK=$(curl -s https://api.github.com/repos/F5Networks/f5-declarative-onboarding/releases/latest | jq -r ".assets[] | select(.name | endswith(\"noarch.rpm\")) | .browser_download_url")
            DLOAD=$(wget --no-check-certificate --progress=bar:force $LINK) 
            echo "$DLOAD"
            ;;
        2)
    
            echo "Downloading Latest AS3 Package"
            LINK=$(curl -s https://api.github.com/repos/F5Networks/f5-appsvcs-extension/releases/latest | jq -r ".assets[] | select(.name | endswith(\"noarch.rpm\")) | .browser_download_url")
            DLOAD=$(wget --no-check-certificate --progress=bar:force $LINK) 
            echo "$DLOAD"
            ;;
        3)
            echo "Downloading Latest TS Package"
            LINK=$(curl -s https://api.github.com/repos/F5Networks/f5-telemetry-streaming/releases/latest | jq -r ".assets[] | select(.name | endswith(\"noarch.rpm\")) | .browser_download_url")
            DLOAD=$(wget --no-check-certificate --progress=bar:force $LINK) 
            echo "$DLOAD"
            ;;
esac
