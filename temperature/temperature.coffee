five = require 'johnny-five'

five.Board().on 'ready', ()->
  sensor = new five.Sensor {
    pin: 'A1',
    freq: 2000
  }

  sensor.on 'data', ()->
#    celsius = this.value / 9.31
#    celsius = (voltage-0.3) * 100
#    celsius = 5.0 * this.value * 100.0/1024.0
    celsius = (val + 1) * 0.0048828125 * 1000
    console.log this.value
    fahrenheit = celsius * (9 / 5) + 32
    console.log "#{celsius}°C", "#{fahrenheit}°F"