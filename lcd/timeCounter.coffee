five = require 'johnny-five'
board = new five.Board()

board.on 'ready', ()->
  lcd = new five.LCD {
    pins: [10, 11, 4, 5, 6, 7]
  }
  initTime = new Date()
  lcd.on 'ready', ()->
    setInterval ()->
      lcd.clear()
      lcd.print 'Current time is:'
      lcd.cursor(1, 0)
      time = new Date() - initTime
      lcd.print "#{time}"
      return
    , 500
  return