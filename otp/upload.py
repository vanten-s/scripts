import serial
from time import sleep

with serial.Serial('/dev/ttyACM0') as ser:
    print(ser.readline().decode("utf-8").strip())
    ser.write(b'1')
    print(ser.readline().decode("utf-8").strip())
    sleep(.2)
    ser.write(input("location? ").encode("utf-8"))
    print(ser.readline().decode("utf-8").strip())
    sleep(.2)
    ser.write(input("secret? ").encode("utf-8"))
    print(ser.readline().decode("utf-8").strip())
    print(ser.readline().decode("utf-8").strip())

