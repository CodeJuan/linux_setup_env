#/bin/bash

sudo echo "sshd:192.168." >> /etc/hosts.allow
sudo echo "sshd:All" >> /etc/hosts.deny
