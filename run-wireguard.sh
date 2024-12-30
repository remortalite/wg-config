#!/bin/bash

if [ -z "$1" ]; then
  echo "
[ERROR]: WG_HOST not set

Please provide the host for the wireguard server
Usage: 

    sh run-wireguard.sh <WG_HOST>
"
  exit 1
fi


echo "WG_HOST=$1" > .env
WG_PASS=$(openssl rand -base64 24)

echo "PASSWORD=$WG_PASS" >> .env

docker compose up --build -d

echo "====== SAVE YOUR PASSWORD ======

$WG_PASS

================================

Wireguard is now running on $1

UI: http://$1:51821

Enjoy!
"
