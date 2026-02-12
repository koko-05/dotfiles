#!/bin/bash

# stupid manufacturer shut down with the driver
# only working for windows 8. Now win 10 has no
# driver and linux has a barely working one.
#
# Stupid capitalism doesnt care about its products... smh
#
# thanks loimu for hacking this shit together

wget "https://launchpad.net/~blaze/+archive/ubuntu/rtbth-dkms/+files/rtbth-dkms_3.9.8~git20230219-1~kinetic2_amd64.deb" > /tmp/rtbth.deb

sudo dpkg -i /tmp/rtbth.deb
