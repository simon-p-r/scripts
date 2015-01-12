#!/bin/sh
# add cbsadmin
echo 'add cbsadmin user'
yum install -y sudo
adduser cbsadmin
echo "cbsadmin        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/cbsadmin
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
mkdir -pm 700 /home/cbsadmin/.ssh
wget --no-check-certificate https://raw.githubusercontent.com/simon-p-r/scripts/master/bash/key.pub -O /home/cbsadmin/.ssh/authorized_keys
chmod 0600 /home/cbsadmin/.ssh/authorized_keys
chown -R cbsadmin:cbsadmin /home/cbsadmin/.ssh
