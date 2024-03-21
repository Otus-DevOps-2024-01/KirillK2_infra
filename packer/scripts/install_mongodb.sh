#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt update && apt-get install -y mongodb-org && systemctl start mongod
if [ $? -eq 0 ]; then
echo "MongoDB was installed" >> /tmp/log_deploy.log; systemctl start mongod; systemctl enable mongod.service
else echo "WARN: MongoDB wasn't installed" >> /tmp/log_deploy.log exit 1; fi
exit 0;
