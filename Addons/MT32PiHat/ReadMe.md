# MT32-pi interface board

There are several simplified ways to connect MT32-pi without board at all. LCD and Buttons aren't required. 
You can see LCD overlay on MiSTer screen and change the mode from OSD. So basically you can wire USB-A connector to 40pin Raspberry Pi connector.

### Connection options:
* Basic MIDI connection: USB 2.0 connector is enough in this mode. Connect GND, VCC and TXD pins only. Since you cannot see LCD on MiSTer in this mode and cannot control MT32-pi,
  it's better to have LCD on device and buttons to control. In this mode you can connect basically any MIDI sequencer (not only MT32-pi).
* Audio-less connection. You need to connect GND, VCC, TXD, SDA, SCL pins. In this mode you will see LCD overlay and can control MT32-pi from OSD.
  Audio won't be mixed in MiSTer so you will need to use either I2S DAC on MT32-pi or 3.5mm jack on Raspberry Pi.
* You can use Main board but solder only 40pin connector and one USB. Useful for embedded designs.

### Notes
* There are 2 types of USB-A <-> USB-A. Straight one with all wires connected the same way on both sides.
  Crossed one where TX wires from one end connected to RX wires. No special notes required for crossed cables, they are pretty common and
  compatible with all MiSTer I/O boards. With straight cable you need a recent version of I/O board where IO6 pin is available and configured as IO pin (not 3.3V supply)
  otherwise 3.3V will go to output RPi pin. This may dammage the RPi. Resistor (R1) with 100 Ohm is used on board to avoid this colission and prevent RPi from damage.
  
