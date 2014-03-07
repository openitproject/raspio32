'''
Raspio32 I2C interface and helpers

Inspired from AdaFruit I2C && MCP23017 Python library
(https://github.com/adafruit/Adafruit-Raspberry-Pi-Python-Code/)
'''

import smbus

class RaspioI2C:
	'''
	Raspio I2C management class
	'''

	@staticmethod
	def get_bus_number():
		'''
		Get PI bus number based on revision
		'''
		try:
			with open('/proc/cpuinfo', 'r') as f:
				for line in f:
					if line.startswith('Revision'):
						return 1
		except:
			return 1



	def __init__(self, address):
		# save address
		self.address = address
		# create bus
		self.bus = smbus.SMBus(self.get_bus_number())


	def write_byte(self, reg, value):
		'''
		Write an 8-bit value to the specified register/address"
		'''
		# Write data to bus
		self.bus.write_byte_data(self.address, reg, value)

	def write_word(self, reg, value):
		'''
		Write a 16-bit value to the specified register/address
		'''
		self.bus.write_word_data(self.address, reg, value)

	def write_array(self, reg, array):
		'''
		Write an array of bytes
		'''
		self.bus.write_i2c_block_data(self.address, reg, array)

	def read_array(self, reg, length):
		'''
		Read an array of bytes
		'''
		return self.bus.read_i2c_block_data(self.address, reg, length)

	def read_byte(self, reg):
		'''
		Read an unsigned byte from the bus
		'''
		return self.bus.read_byte_data(self.address, reg)

	def read_word (self, reg):
		'''
		Read a 16-bit value from the bus
		'''
		return self.bus.read_word_data(self.address, reg)


