#!/bin/bash -x

cd ../
APP_HOST_IP=`/usr/bin/terraform output -raw external_ip_address_app`
LB_HOST_IP=`/usr/bin/terraform output -raw external_ip_address_lb`

echo ${APP_HOST_IP} > /tmp/app_host.local
echo ${LB_HOST_IP} > /tmp/lb_host.local
