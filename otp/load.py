import serial
from time import sleep

with serial.Serial('/dev/ttyACM0') as ser:
    ser.readline().decode("utf-8").strip()

    ser.write(b'2')
    ser.readline().decode("utf-8").strip()

    sleep(.2)
    ser.write(input().encode("utf-8"))
    ser.readline().decode("utf-8").strip()

    sleep(.2)
    ser.write(input().encode("utf-8"))
    ser.readline().decode("utf-8").strip()

    print(ser.readline().decode("utf-8").strip())
