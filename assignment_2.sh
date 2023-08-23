#!/bin/bash

if [ -f /etc/os-release ]; then
	. /etc/os-release
	if [ -n "$NAME" ]; then

		DISTRIBUTION=$(echo "$NAME" | tr -d '"')
		echo "$DISTRIBUTION"
	fi
fi

case $DISTRIBUTION in 
	"Parrot OS" | "Kali Linux" | "Ubuntu")
		echo "INSTALLING PARROT PACKAGES ........"
		sudo apt-get install nmap
		sudo apt-get -y install dirb
		sudo apt install curl
		sudo apt-get install wafw00f;;
	"Fedora Linux")
		dnf install nmap 
		dnf install dirb
		dnf install curl
		dnf install wafw00f;;
	"Arch")
		pacman -Sy --noconfirm nmap
		pacman -Sy --noconfirm dirb
		pacman -Sy --noconfirm curl
		pacman -Sy --noconfirm wafw00f;;
esac
