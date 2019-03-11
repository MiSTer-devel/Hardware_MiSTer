# Hardware addons for MiSTer

### [I/O daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/IOBoard)
This board provides VGA, Analog and Digital audio outputs. It also provides Buttons and LEDs with ability to connect their external versions
in order to integrate into cases (like Amiga 1200 case). This board is very handy and convenient but not required since all cores
provide HDMI video and Audio output with ability to use DE10-nano on-board LEDs and Buttons.

### [RTC daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/RTC)
This board provides real time clock. It's plugged into LTC connector.

### [SDR SDRAM daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/SDRAM_uni)
This board provides 32MB of SDR SDRAM memory for cores requiring a large (>512KB) memory. Although DE10-nano has DDR3 RAM, it has big
latency and cannot fit into timings of retro EDO DRAM. So, if core quires precise memory timings, then DDR3 cannot be used.
Although some cores aren't requiring this board, still many other cores need it.
Thus **SDRAM board is required**.

### There are two SDRAM board versions:
* **"SDRAM_uni"** version is universal and can be mounted vertically, horizontally inward or outward. When it's mounted horizontally inward, it covers Arduino GPIO and thus no future expansions will be possible. You always can mount it outward or vertically by de-soldering one connector and solder it to other holes to use Arduino GPIO. Depeding on several factors it can reach up to 167MHz speed if mounted horizontally, up to 150MHz if mounted vertically. Note: horizontal inward position is not compatible with new I/O Board and covers Arduino GPIO pins. Thus horizontal inward mounting is not recommended. Use SDRAM_xs for compact mounting.
* **"SDRAM_xs"** is extra slim version. It's mounted vertically but doesn't protrude from I/O Board and can be used in smaller/slimmer cases. Maximum speed is a little higher than SDRAM_uni mounted vertically due to shorter traces. This version requires some experience in soldering and not convenient for mass production.

### [USB Hub daughter board](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons/USBHub)
This board provides 7-port USB hub for convenient devices connections. This is optional board.

### [PiTop boards](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/Addons)
The set of boards with PiTop in name are made to fit MiSTer into Pi-Top case. Note: it's for Pi-Top v1(original) case only. Pi-Top v2 case has completely different placements and conections and therefore is not compatible.

## Notes
You need to use Altium Designer v17.0 (or later) in order to view the source files. For convenience, [gerber files (*.zip)](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/releases) are also included
and ready to submit to PCB manufacturer.

Some quick notes:
* **There are no notches/dents on 40pin connectors, so pay attention how you plug the daughter boards!** It's easy to plug it backward or shifted - **this may damage DE10-nano board**. Make sure PIN1 on one board is matched to PIN1 on other board. You may refer to pictures in images directory.
* It's preferred to order 1.6mm PCB thickness. I've tried 0.8mm and found no improvements in any aspect.
Thinner PCB are harder to handle and more fragile.
* SDRAM uses [AS4C16M16SA-6TCN](http://www.mouser.tw/Search/ProductDetail.aspx?R=AS4C16M16SA-6TCNvirtualkey56240000virtualkey913-4C16M16SA-6TCN) chip. Alternative chip is [W9825G6KH-6](https://lcsc.com/product-detail/RAM_W9825G6KH-6_C62246.html) - it's more than twice cheaper but achive the same speed as original one.
It's strongly suggested to use one of these chips. Usually other similar projects use older chip MT48LC16M16A2, but it doesn't work well on this project.
Maximum clock achieved on MT48LC16M16A2 is 60MHz which is not acceptable for most projects. It's unclear which exact problem prevents
to use higher clock. May be power consumption or older technology process is the reason. With AS4C16M16SA-6TCN maximum achieved clock is 150MHz (167MHz in horizontal mount with 1.6mm PCB).
Another tested chip is IS42S16320D-6TL which is actually 64MB. The maximum clock achived is 130MHz which is acceptable.
64MB is 4 times more expensive and not suggested to use due to all cores are targeted for 32MB only.
64MB is backward compatible with 32MB by contacts but not compatible with cores accessing SDRAM by pages (i.e. Minimig). 64MB has twice big page and require modification of these cores.
Use [Memtest](https://github.com/MiSTer-devel/MemTest_MiSTer/tree/master/releases) utility to check the quality of SDRAM board.
* SDRAM board can be mounted vertically and horizontally. Horizontal mount gives a little higher supported clocks. Vertical mount has better look like cartridge.
* For straight 40pin header (IOBoard and horizontal SDRAM board) it's advised to use a [special header](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/images/header_2.54mm_Pitch-2x20_Pin-Female-Double_Row-Long_Pin.jpg) with additional plastic on pins making it higher and match the height of Arduino header of DE10-nano board. You can find such connectors on Aliexpress ([pack of 10](https://www.aliexpress.com/item/10-Pcs-NEW-2-54mm-Pitch-2x20-Pin-40-Pin-Female-Double-Row-Long-Pin-Header/32812823728.html) or [pack of 2](https://www.aliexpress.com/item/2-Pcs-PC104-2-54mm-Pitch-2x20-Pin-40-Pin-Female-Double-Row-Long-Pin-Header/32805691836.html)). If it's impossible to find a pictured header then there are 2 less convenient options: 1) use standard profile straight connector. You need to solder it as high as possible for better contact. It won't plug fully due to arduino high header and your board may weagle (especially SDRAM horisontal board) and may damage the DE10-nano connectors - so you have to be careful! 2) Use angled 2x20pin header. You need straighten its pins, so you will get long straight pins. Then connect it to DE10-nano board and then insert the daughter board on top and keeping it at the level when it will be parallel to main board and fully sit on arduino header, solder several pins (be careful! don't damage DE10-nano by static!) then carefully unplug the daughter board with connector and solder rest pins. If you will make it right, then you will get a perfectly sitting connector.
* For angled 40pin header (Vertical SDRAM board) use [standard angled 40pin header](https://github.com/MiSTer-devel/Hardware_MiSTer/blob/master/images/header_2.54mm_Pitch-2x20_Pin-Female-Double_Row-Right_Angle_Pin.jpg)
* Every board has PDF file with schematic and PCB outlook, so you don't need any special application if you are not going to edit the files.

### Some images of boards can be found [here](https://github.com/MiSTer-devel/Hardware_MiSTer/tree/master/images)

## Ordering the boards
To find the cheapest and/or reliable PCB manufacturer you can use [PCBShopper](https://pcbshopper.com/). Typically it's chinese manufacturer. The minimum order quantity usually is 10 pieces of the same board (you may order less quantity but will pay for 10 anyway).

I suggest to use [PCBWay](https://www.pcbway.com/setinvite.aspx?inviteid=43024) as PCB manufacturer. They give very cheap price - 5USD for 10 pieces of the same board. They allow to choose the color of PCB and thickness. Manufacturing is pretty fast - 2-3 days usually. I like them also for delivery price to my country.

Another suggested PCB manufacturer is OSHPark. Here is the [direct link](https://oshpark.com/profiles/MiSTer) where you can order the boards by simple click. Prices are higher, but might be suitable for those living in US. They provide a free worldwide delivery. Probably I/O board is too pricey on OSHPark, but most important SDRAM board is pretty cheap. They provide 3 pieces of the same board (not 10!). You need to choose only one SDRAM board version - see note above about different SDRAM boards.

### Options for PCB ordering:
* Board type: Single pieces
* Different Design in Panel: 1
* Quantity: usually 10. See the final price after change the quantity.
* size 100x100mm - manufacturer will adjust the size according to gerber file
* 2 layers
* Material: any FR-4
* Thickness: 1.6mm
* Solder mask/Silkscreen colors: any you like if price the same.
* Min Track/Spacing: 6/6mil or less
* Min Hole Size: 0.3mm or less
* Via Process: Tenting vias
* Gold fingers: No
* Finished Copper: 1oz or more
* Surface Finish - HASL with lead. Some manufacturers provide ENIG (immersion gold) for free, but i don't suggest it as it's harder to solder than HASL (pre-soldered finish). "With lead" means lower soldering temperature. "Lead free" will require higher temperature for soldering.

Here are pre-defined orders on PCBWay, so you it's just matter of couple mouse clicks: [Order the boards](https://www.pcbway.com/project/member/shareproject/?bmbno=W43024A)
