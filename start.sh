#/bin/bash

if [ -f "/config/openid-config.json" ]; then
    cp /config/openid-config.json /app/openid-config.json
fi

node app.js
