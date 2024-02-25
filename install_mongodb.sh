#!/bin/bash
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update; sudo apt-get install -y mongodb-org && sudo systemctl start mongod
if [ $? -eq 0 ]; then
echo "MongoDB was installed" >> /tmp/log_deploy.log; sudo systemctl start mongod
else "WARN: MongoDB wasn't installed" >> /tmp/log_deploy.log exit 1;
fi
exit 0
