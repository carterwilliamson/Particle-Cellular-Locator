#!/bin/bash

particle compile electron --saveTo firmware.bin

particle flash --usb firmware.bin
