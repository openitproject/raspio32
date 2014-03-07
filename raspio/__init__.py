'''
Raspio32 Python library

Inspired from AdaFruit I2C && MCP23017 Python library
(https://github.com/adafruit/Adafruit-Raspberry-Pi-Python-Code/)

'''

from i2c import RaspioI2C


class Raspio:
    '''
    Raspio32 management class
    '''

    # PINS
    A0 = 0
    A1 = 1
    A2 = 2
    A3 = 3
    A4 = 4
    A5 = 5
    A6 = 6
    A7 = 7
    B0 = 8
    B1 = 9
    B2 = 10
    B3 = 11
    B4 = 12
    B5 = 13
    B6 = 14
    B7 = 15
    C0 = 16
    C1 = 17
    C2 = 18
    C3 = 19
    C4 = 20
    C5 = 21
    C6 = 22
    C7 = 23
    D0 = 24
    D1 = 25
    D2 = 26
    D3 = 27
    D4 = 28
    D5 = 29
    D6 = 30
    D7 = 31

    # MODES
    OUT = 0
    IN = 1

    # REGISTERS
    IODIRA = 0x00
    IODIRB = 0x01
    GPIOA = 0x12
    GPIOB = 0x13
    GPPUA = 0x0C
    GPPUB = 0x0D
    OLATA = 0x14
    OLATB = 0x15

    def __init__(self, address=0x20):
        '''
        Setup the board:
        - chips addresses
        - default values
        '''
        self.base_address = address
        self.chips = [
            RaspioI2C(self.base_address),
            RaspioI2C(self.base_address + 1)
        ]

        # setup the chips
        for chip in self.chips:
            chip.write_byte(self.IODIRA, 0xFF)
            chip.write_byte(self.IODIRB, 0xFF)
            chip.write_byte(self.GPPUA, 0x00)
            chip.write_byte(self.GPPUB, 0x00)

    def _changebit(self, bitmap, bit, value):
        '''
        Change a bit in a bitmap
        '''
        assert value == 1 or value == 0, "valuse is %s must be 1 or 0" % value
        if value == 0:
            return bitmap & ~(1 << bit)
        else:
            return bitmap | (1 << bit)

    def get_gpio_from_pin(self, pin):
        '''
        return the chip id and port register from pin as a tuple
        '''
        if pin < 16:
            if pin < 8:
                return (self.chips[0], self.GPIOA)
            else:
                return (self.chips[0], self.GPIOB)
        else:
            if pin < 24:
                return (self.chips[1], self.GPIOA)
            else:
                return (self.chips[1], self.GPIOB)

    def get_pullup_from_pin(self, pin):
        '''
        return the chip id and port register from pin as a tuple
        '''
        if pin < 16:
            if pin < 8:
                return (self.chips[0], self.GPPUA)
            else:
                return (self.chips[0], self.GPPUB)
        else:
            if pin < 24:
                return (self.chips[1], self.GPPUA)
            else:
                return (self.chips[1], self.GPPUB)

    def get_iodir_from_pin(self, pin):
        '''
        return the chip id and port register from pin as a tuple
        '''
        if pin < 16:
            if pin < 8:
                return (self.chips[0], self.IODIRA)
            else:
                return (self.chips[0], self.IODIRB)
        else:
            if pin < 24:
                return (self.chips[1], self.IODIRA)
            else:
                return (self.chips[1], self.IODIRB)

    def read_iodir(self, pin):
        '''
        Read the IODIR from the port the given pin belongs to
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        chip, iodir = self.get_iodir_from_pin(pin)
        return chip.read_byte(iodir)

    def write_iodir(self, pin, value):
        '''
        Write the IODIR for the given pin
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        chip, iodir = self.get_iodir_from_pin(pin)
        chip.write_byte(iodir, value)

    def read_gpio(self, pin):
        '''
        Read the GPIO byte for the given pin
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        chip, gpio = self.get_gpio_from_pin(pin)
        return chip.read_byte(gpio)

    def set_gpio(self, pin, value):
        '''
        Set the GPIO byte for the given pin
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        chip, gpio = self.get_gpio_from_pin(pin)
        chip.write_byte(gpio, value)

    def config(self, pin, mode):
        '''
        Set pin mode
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        assert mode == 1 or mode == 0, "Invalid mode"
        value = self.read_iodir(pin)
        value = self._changebit(value, pin % 8, mode)
        self.write_iodir(pin, value)

    def input(self, pin):
        '''
        Read pin state
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        gpio = self.read_gpio(pin)
        return ((gpio & (1 << (pin % 8))) >> (pin % 8))

    def output(self, pin, value):
        '''
        Set pin state
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        assert value == 0 or value == 1, "Value %s must be 1 or 0" % value
        gpio = self.read_gpio(pin)
        self.set_gpio(pin, self._changebit(gpio, pin%8, value))

    def pullup(self, pin, enable):
        '''
        Enable/disable internal pullup on pin
        '''
        assert pin >= 0 and pin < 32, "Bad pin number"
        assert enable == 0 or enable == 1, "Enable %s must be 1 or 0" % value
        chip, pullup = self.get_pullup_from_pin(pin)
        value = chip.read_byte(pullup)
        chip.write_byte(pullup, self._changebit(value, pin%8, enable))

