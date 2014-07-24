#!/bin/bash

# installs.sh
#
# Gary Sone 11-July-2014,  Debian/noVNC initial configuration script.
#
# v1.0
# Changelog, initial app array and two git-config lines.
#
# remember to chmod +x installs.sh (sudo su)
# to execute use ./installs.sh
#
# wget http://codeclub.my.sone.net/installs.sh
#
# created in notepad on WintelPC so will need to (sed -i 's/\r//' filename)


# create array of applications to be installed
# HT to ...

# init
function pause(){
   read -p "$*"
}



apps=(

screen
shellinabox
python3
idle3
libjpeg8-dev
imagemagick
libv41-dev

)

# apt-get update
#sudo apt-get update

# Loop over apps and install each one with default 'yes' flag
for app in "${apps[@]}"
do
	sudo apt-get install $app -y
done

# configure GIT
clear
echo "Configuring GIT \n"
#git config --global user.name "Gary Sone"
#git config --global user.email Gary.Sone@BH.sone.net
#pause "any GIT errors?"

clear
echo "Creating Symbolic link \n"
# sudo ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h
#pause "any errors?"

clear
echo "wget command \n"
#sudo wget http://sourceforge.net/code-snapshots/svn/m/mj/mjpg-streamer/code/mjpg-streamer-code-182.zip
#pause "any errors?"
