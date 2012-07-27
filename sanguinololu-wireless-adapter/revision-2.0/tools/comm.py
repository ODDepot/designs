#!/usr/bin/env python


import serial
import time


conn = serial.Serial('/dev/ttyUSB0', '115200', timeout=1)
#conn.flush()
while True:
    command = raw_input('-->')
    if command == "SM":
        time.sleep(2)
        conn.write('+++')
        time.sleep(2)
    else:
        #conn.write(command + '\r\n')
        conn.write(command + '\n')
    print conn.read(1024)
    time.sleep(1)
