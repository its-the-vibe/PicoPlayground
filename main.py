import utime
import sys
import machine
from machine import Pin

print("Hello, Wokwi!")
board = sys.implementation._machine.split(' with')[0]
print(f"Running on {board} ({sys.platform}) at {machine.freq() / 1000000} MHz")

led = Pin("LED", Pin.OUT)

counter = 0
for i in range(10):
    led.toggle()
    counter += 1
    print(f"Uptime: {counter} seconds")
    utime.sleep_ms(1000)
