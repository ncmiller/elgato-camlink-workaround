#!/bin/bash

set -x # echo on

sudo modprobe -r v4l2loopback
sudo modprobe v4l2loopback exclusive_caps=1 max_buffers=2
v4l2-ctl -d 0 --set-ctrl=zoom_absolute=7
python elgato_camlink_fix.py
