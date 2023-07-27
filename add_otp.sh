#!/bin/bash

import /tmp/qrcode.png
URL=$(zbarimg /tmp/qrcode.png | sed "s/QR-Code://")

SERVICE=$(echo -n | dmenu -p "SERICE?")
PASSNAME=$(echo -n | dmenu -p "PASSNAME?")

echo -n $URL | pass otp append $SERVICE/$PASSNAME

