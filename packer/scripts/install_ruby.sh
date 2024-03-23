#!/bin/bash

# apt-get install aptitude -y; sleep 2; /usr/sbin/ldconfig; sleep 2
apt-get update; sleep 5;
apt-get install -y fontconfig-config fonts-dejavu-core libfontconfig1 libgmp-dev libgmpxx4ldbl libtcl8.6 libtcltk-ruby libtk8.6 libxft2 libxrender1 libxss1 ri ruby-dev ruby-full
  ruby2.3-dev ruby2.3-doc ruby2.3-tcltk x11-common; sleep 5;
apt-get install -y ruby-bundler; sleep 5;
apt-get install -y build-essential; sleep 5
# /usr/bin/ruby -v
# if [ $? -eq 0 ]; then
# echo "Ruby was installed" >> /tmp/log_deploy.log
# else echo "WARN: Ruby wasn't installed" >> /tmp/log_deploy.log exit 1; fi
# /usr/bin/bundler -v
# if [ $? -eq 0 ]; then
# echo "Bundler was installed" >> /tmp/log_deploy.log
# else echo "WARN: Bundler wasn't installed" >> /tmp/log_deploy.log exit 1; fi
# exit 0;
