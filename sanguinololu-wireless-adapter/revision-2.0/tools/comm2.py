#!/usr/bin/env python


import serial
import time


conn = serial.Serial('/dev/ttyUSB0', timeout=0)
conn.flush()
while True:
    data = conn.read(1024)
    if data:
        print data
    time.sleep(1)
