five = require 'johnny-five'
board = new five.Board()

board.on 'ready', ()->
  lcd = new five.LCD {
  #I don't know why it doesn't work when I use 1, 2, 3, 4 as DB4, DB5, DB6 ,DB7
  #LCD pin name  RS  EN  DB4 DB5 DB6 DB7
    pins: [10, 11, 4, 5, 6, 7]
  }
  lcd.on 'ready', ()->
    lcd.useChar("heart")

    lcd.clear().print("Junv:")
    lcd.cursor(1, 0)

    lcd.print("I :heart: Johnny-five")


  return