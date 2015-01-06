#!/bin/sh
echo "[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1" | sudo tee /etc/yum.repos.d/mongodb.repo > /dev/null
sudo yum install -y mongodb-org
sudo service mongod start
sudo chkconfig mongod on
