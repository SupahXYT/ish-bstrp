#!/bin/sh

# Add basic programs
apk add doas openssh openrc bash vim

# cp config files
echo "copying config files"
cp inittab /etc/inittab
cp .bashrc $HOME/.bashrc
cp repositories /etc/apk/repositories

# openrc
rc-update add sshd default

# Add bloat 
apk add neofetch links tmux

# Create new user
printf "Enter username of new user (make sure there are no invalid characters)\n> "
read username
adduser -h /home/$username

# Set password
passwd

printf "permit no pass keepenv %s as root\n" "$username" >> /etc/doas.conf

echo "Installation complete. Make sure to change default shell in /etc/passwd (press enter to reboot)"
read enter
reboot

