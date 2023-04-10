# plus-4-mcp23s17-spi

SPI example for the Commodore Plus/4 Userport
![Screenshot](https://github.com/cbmuser/plus-4-mcp23s17-spi/blob/main/p4_breadboard.jpg)


For this tiny example use the following connections:

P0: CLK
P1: CS
P2: MOSI (SI)

A0 to A2 are connected to GND using hardware addressing mode at $40.

You guess, the bit banging is done by software and this is not the fastest solution. That's good enough for switching slower controls or to build a chip programmer transfering around 0,5 up to 1 Kbyte/s.
You can play around with the P/4 double clock to reach higher rates and improve the code to your needs.




