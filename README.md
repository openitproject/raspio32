Raspberry Pi 32 GPIOs expansion board
=====================================


Want to build the board ?
-------------------------

Schematics and PCB files are located in the 'board' directory, as well as the
gerber files (zipped). 


How to use Raspio32's Python library
------------------------------------

Simple. Want to set A1 to 1 and A2 to 0 ? 

    from raspio import Raspio

    # get the raspio i2c interface
    board = raspio()
    # set A1 and A2 as outputs
    board.config(board.A1, board.OUT)
    board.config(board.A2, board.OUT)
    # set outputs to 1
    board.output(board.A1, 1)
    board.output(board.A2, 1)

Want to read some binary input from A0 ?

    from raspio import Raspio

    # get the raspio i2c interface
    board = raspio()

    # set A0 as input
    board.config(board.A0, board.IN)
    print 'A0=%d' % board.input(board.A0)

You may want to use the internal pullup resistor:

    from raspio import Raspio

    # get the raspio i2c interface
    board = raspio()

    # set A0 as input
    board.config(board.A0, board.IN)
    # enable the internal pullup resistor
    board.pullup(board.A0, 1)
    print 'A0=%d' % board.input(board.A0)

Simple, eh ?


Credits
-------

* AdaFruit for the hard work on the MCP23017 and their cool Python lib
* OSHPark for the PCBs, you rock dudes !

