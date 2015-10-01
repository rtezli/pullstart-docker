#!/bin/bash

if [ "$1" == "run" ]; then
    mkdir -p /var/www
    git clone $2 /var/www
    cd /var/www
    npm install
    npm start
else
    exec "$@"
fi
