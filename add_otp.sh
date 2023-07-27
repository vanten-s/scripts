#!/bin/bash

import /tmp/qrcode.png
URL=$(zbarimg /tmp/qrcode.png | sed "s/QR-Code://")

SERVICE=$(ls ~/.password-store/ | sed -e 's/\.gpg$//' | dmenu -i)

if [ -z $SERVICE ];
then
    exit
fi

PASSNAME="$(ls ~/.password-store/$SERVICE | sed -e 's/\.gpg$//' | dmenu -i)"

if [ -z $PASSNAME ];
then
    exit
fi

echo -n $URL | pass otp append $SERVICE/$PASSNAME

