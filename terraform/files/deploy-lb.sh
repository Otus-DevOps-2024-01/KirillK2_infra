#!/bin/bash

APP_HOST=`cat /tmp/app_host.txt`
LB_HOST=`cat /tmp/lb_host.txt`

sudo apt update && sudo apt install nginx && sleep 3
sudo rm /etc/nginx/sites-available/default; sudo touch /etc/nginx/sites-available/load-balancer;
sudo cat > /etc/nginx/sites-available/load-balancer << EOF
upstream backend {
    server ${APP_HOST}.sslip.io:9292;
}

server {
    listen 80;
    server_name ${LB_HOST}.sslip.io;

    location / {
        proxy_pass http://backend;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
    }
}
EOF
sudo ln -s /etc/nginx/sites-available/load-balancer /etc/nginx/sites-enabled/load-balancer
sudo systemctl restart nginx
