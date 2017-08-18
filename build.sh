#!/bin/bash
#API_KEY var must be set
[ -z "$API_KEY" ] && { echo "Need to set API_KEY"; exit 1; }
sed -i -e "s/API_KEY/${API_KEY}/g" ./webhook.json

particle compile electron --saveTo firmware.bin

particle flash --usb firmware.bin
