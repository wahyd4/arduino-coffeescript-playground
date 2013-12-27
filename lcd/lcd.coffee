five = require 'johnny-five'
board = new five.Board()

board.on 'ready', ()->
  lcd = new five.LCD {
  #LCD pin name  RS  EN  DB4 DB5 DB6 DB7
    pins: [10, 11, 1, 2, 3, 4]
  }
  lcd.on 'ready', ()->
    lcd.useChar("check");
    lcd.useChar("heart");
    lcd.useChar("duck");

    lcd.clear().print("Junv");
    lcd.cursor(1, 0);

    lcd.print("I :heart: johnny-five");
    return

  this.repl.inject {
    lcd: lcd
  }
  return