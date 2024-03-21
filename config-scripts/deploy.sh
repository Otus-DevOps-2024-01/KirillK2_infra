#!/bin/bash
export DEPLOY_PATH='/home/appuser/reddit'
sudo apt-get install -y git && rm -rf $DEPLOY_PATH
cd /home/appuser && git clone -b monolith https://github.com/express42/reddit.git
if [ -d $DEPLOY_PATH ]; then
echo "Repo monolith was cloned" >> /tmp/log_deploy.log
else echo "WARN: Repo monolith wasn't cloned" >> /tmp/log_deploy.log exit 1;
fi
cd $DEPLOY_PATH && bundle install && sudo puma -d > /tmp/puma_out.err
cat /tmp/puma_out.err | grep "Puma starting in single mode..."
if [ $? -eq 0 ]; then
echo "Puma is UP and running" >> /tmp/log_deploy.log
else echo "WARN: Puma wasn't started" >> /tmp/log_deploy.log exit 1; fi
exit 0;
