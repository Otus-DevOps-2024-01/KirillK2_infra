#!/bin/bash
sudo apt update && sudo apt install -y ruby-full ruby-bundler build-essential;
ruby -v
if [ $? -eq 0 ]; then
echo "Ruby was installed" >> /tmp/log_deploy.log
else "WARN: Ruby wasn't installed" >> /tmp/log_deploy.log exit 1;
fi
bundler -v
if [ $? -eq 0 ]; then
echo "Bundler was installed" >> /tmp/log_deploy.log
else "WARN: Bundler wasn't installed" >> /tmp/log_deploy.log exit 1;
fi
exit 0
