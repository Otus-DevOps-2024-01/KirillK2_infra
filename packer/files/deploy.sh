#!/bin/bash
#export DEPLOY_PATH='/home/ubuntu/reddit'
apt-get install -y git && cd /home/ubuntu && git clone -b monolith https://github.com/express42/reddit.git; sleep 2
# if [ -d /home/ubuntu/reddit ]; then
# echo "Repo monolith was cloned" >> /tmp/log_deploy.log
# else echo "WARN: Repo monolith wasn't cloned" >> /tmp/log_deploy.log exit 1;
# fi
cd /home/ubuntu/reddit && /usr/bin/bundle install; sleep 3
#sudo /usr/local/bin/puma -d > /tmp/puma_out.err
# cat /tmp/puma_out.err | grep "Puma starting in single mode..."
# if [ $? -eq 0 ]; then
# echo "Puma is UP and running" >> /tmp/log_deploy.log
# else echo "WARN: Puma wasn't started" >> /tmp/log_deploy.log exit 1; fi
exit 0;
