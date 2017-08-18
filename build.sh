#!/bin/bash

particle compile electron ./src ./lib/google-maps-device-locator/src project.properties --saveTo firmware.bin
if [[ $? -ne 0 ]]; then
  echo "Failed to compile, exiting."
  exit 1;
fi
particle flash --usb firmware.bin
exit 0;
