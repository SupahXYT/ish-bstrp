#!/bin/sh

# Add basic programs
apk add doas openssh openrc bash vim

# cp config files
echo "copying config files"
cp inittab /etc/inittab
cp doas.conf /etc/doas.conf
cp .bashrc $HOME
cp repository /etc/apk/repositories

# openrc
rc-update add sshd default

# Add bloat 
apk add neofetch links tmux

# Create new user
echo "Enter username of new user (make sure there are no invalid characters)"
read username
mkdir /home/$username
working_dir=$(pwd)
cd /home/$username
adduser -h $username

# Set password
echo "Set password for root"
passwd
echo "Set password for $username"
passwd $username

printf "permit no pass keepenv %s as root\npermit no pass keepenv root as root\n" "$username" > /etc/doas.conf

echo "Installation complete. Make sure to change default shell in /etc/passwd"
reboot

