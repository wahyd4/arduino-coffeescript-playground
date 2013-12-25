arduino-coffeescript-playground
===============================

All the demos write with CoffeeScript

## DEMO LIST

 * Multiple LEDs
 * Temperature sensor(LM 35)


## How to run the code

 - Download [Arduino IDE](http://arduino.cc/en/main/software)
     - Plug in your Arduino or Arduino compatible microcontroller via USB
     - Open the Arduino IDE, select: File > Examples > Firmata > StandardFirmata
     - Click the "Upload" button.
     - If the upload was successful, the board is now prepared and you can close the Arduino IDE.

  NOTICE: The above words copied from <https://github.com/rwaldron/johnny-five/wiki/Getting-Started>

 -  run commands:
  ```bash
    npm install -g node-gyp
    npm install -g johnny-five
    npm install -g coffee-script

  ```
 - compile the Coffeescript

  ```bash
    coffee --compile **/*.coffee
  ```
 - run the demos, just as usual node **.js, some of the demo also has a image attached

