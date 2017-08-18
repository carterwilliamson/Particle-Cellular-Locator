#!/bin/bash
#API_KEY var must be set
[ -z "$API_KEY" ] && { echo "Need to set API_KEY"; exit 1; }
sed -i -e "s/API_KEY/${API_KEY}/g" ./webhook.json

particle webhook create webhook.json
