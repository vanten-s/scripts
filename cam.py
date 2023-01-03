#!/bin/python3

import cv2

cap = cv2.VideoCapture(0)

while True:
    success, img = cap.read()

    cv2.imshow("Cam", img)

    if cv2.waitKey(1) and 0xFF == ord('q'):
        break


