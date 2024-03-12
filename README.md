# Hardware addons for MiSTer

### [I/O Board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/IOBoard), [AV Board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/AVBoard), 
I/O Board provides digital audio output, buttons, LEDs, user port, and VGA connector. It also supports secondary SDRAM (experimental).
With additional AV Board it adds VGA and analog audio output (but loses secondary SDRAM feature). I/O Board also provides external buttons and LEDs connectors for easier integration in various cases.

### [RTC daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/RTC)
This board provides real time clock. It's plugged into LTC connector.

### [SDR SDRAM daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/SDRAM_xsds)
This board provides 128MB of SDR SDRAM memory for cores requiring a large (>512KB) memory. Although DE10-nano has DDR3 RAM, it has big
latency and cannot fit into timings of retro EDO DRAM. So, if core quires precise memory timings, then DDR3 cannot be used.
Although some cores aren't requiring this board, still many cores need it.
Thus **SDRAM board is required**.

### [USB Hub daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/USBHub)
This board provides 7-port USB hub for convenient devices connections. This is optional but recommended board.

### [MT32-Pi board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/MT32PiHat)
This boards adds external MIDI emulation plugged into user port. [Smaller version](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/MT32PiHat_LT) is also available.

### [PiTop boards](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons)
The set of boards with PiTop in name are made to fit MiSTer into Pi-Top case. Note: it's for Pi-Top v1(original) case only. Pi-Top v2 case has completely different placements and conections and therefore is not compatible.

## Notes
You need to use Altium Designer v21.0 (or later) in order to view the source files. For convenience, [gerber files (*.zip)](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/releases) are also included
and ready to submit to PCB manufacturer.

Some quick notes:
* **There are no notches/dents on 40pin connectors, so pay attention how you plug the daughter boards!** It's easy to plug it backward or shifted - **this may damage DE10-nano board**. Make sure PIN1 on one board is matched to PIN1 on other board. You may refer to pictures in images directory.
* It's preferred to order 1.6mm PCB thickness. I've tried 0.8mm and found no improvements in any aspect.
Thinner PCB are harder to handle and more fragile.
* SDRAM uses AS4C32M16SB-7TCN (64MB chip). Use [Memtest](https://github.com/MiSTer-devel/MemTest_MiSTer/tree/master/releases) utility to check the quality of SDRAM board.
* Every board has PDF file with schematic and PCB outlook, so you don't need any special application if you are not going to edit the files.
* Some images of boards can be found [here](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/images)

### Options for PCB ordering:
* Board type: Single pieces
* Different Design in Panel: 1
* Quantity: usually 10. See the final price after change the quantity.
* 2/4 layers
* Material: any FR-4
* Thickness: 1.6mm
* Solder mask/Silkscreen colors: any you like if price the same.
* Min Track/Spacing: 6/6mil or less
* Min Hole Size: 0.3mm or less
* Via Process: Tenting vias
* Gold fingers: No
* Finished Copper: 1oz or more
* Surface Finish - HASL with lead. Some manufacturers provide ENIG (immersion gold) for free, but i don't suggest it as it's harder to solder than HASL (pre-soldered finish). "With lead" means lower soldering temperature. "Lead free" will require higher temperature for soldering.
