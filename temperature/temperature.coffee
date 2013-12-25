five = require 'johnny-five'

five.Board().on 'ready', ()->
  sensor = new five.Sensor {
    pin: 'A0',
    freq: 200
  }

  sensor.on 'data', ()->
    voltage = this.value * 0.004882814
    celsius = (voltage - 0.5) * 100
    fahrenheit = celsius * (9 / 5) + 32
    console.log "#{celsius}°C", "#{fahrenheit}°F"