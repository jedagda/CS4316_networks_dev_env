#!/usr/bin/env bash

function aptInstall() {
	binary=("$@")
	for i in "${binary[@]}" ; do
		dpkg -s "$i" &> /dev/null
		if [ "$?" -ne 0 ] 
		then
			echo ""$i" not installed"
			apt-get install -y "$i"
		else
			echo ""$i" is already installed"
		fi
	done
}

declare -a primary_binary=( "ubuntu-desktop" "bash-completion" "apt-transport-https" "ca-certificates" "curl" "gnupg-agent" "software-properties-common" "linux-headers-generic" "linux-headers-5.3.0-29-generic")


declare -a secondary_binary=( "python3-pip" "git")

apt-get update
aptInstall "${primary_binary[@]}"

aptInstall "${secondary_binary[@]}"




echo "Downloading and installing Visual Studio"
snap install --classic code


echo "Downloading and installing Pycharm Community Edition"
snap install pycharm-community --classic

echo "Downloading and installing Sublime Text"
sudo snap install sublime-text --classic


