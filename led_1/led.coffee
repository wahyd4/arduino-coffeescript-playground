five = require 'johnny-five'
board = new five.Board()

board.on 'ready', ()->
  led = new five.Led 13
  led2 = new five.Led 11
  led3 = new five.Led 10
  flag = 0
  empty = () ->
    switch flag % 3
      when 1
        led.on()
        led2.off()
        led3.off()
        console.log "1st group"
      when 2
        led.off()
        led2.on()
        led3.off()
        console.log "2nd group"
      else
        led.off()
        led2.off()
        led3.on()
        console.log "3rd group"
    flag++
  setInterval empty, 70