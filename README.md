# RaddSwi
This project contains the design files of an automatic MonitorSwitch add-on for the Amiga Flickerfixer [Multifix AGA](https://gitlab.com/MHeinrichs/multifix-aga) by Matthias Heinrichs.
The key idea of using SPDTs for switching between VGA inputs was borrowed from the Ratte Monitor switch by Andre Pfeiffer (hence the title of this project). Also originating from the work of Andre Pfeiffer is the software part. His Amiga utility called switchcontrol is re-used in slightly modified form for this monitor switcher.

Conceptually, a monitor switch is used on Amiga to merge the outputs of Amiga native video (or a Flickerfixer/Scandoubler) and an RTG graphics card to enable the use of a single monitor cable, where the relevant signal is passed through to the monitor. For that purpose, a combination of hard- and software is necessary. 

By default, RaddSwi will pass the native Amiga signal to the monitor. As soon as the software utility detects an active RTG screen, it will generate a signal that instructs the monitorswitch to patch the RTG outputs from the graphics card through. Please see below for differences between the classic Ratte Switch and this approach.

The output of the multiplexed signal can be obtained from the regular VGA connector of the Multifix AGA.

## Hardware notes 
The obvious prerequisite for this solution is a working Multifix AGA. 
This project consists of two PCBs, the switch and a PLCC44 adapter for the switching input signal. 
The PLCC44 adapter for U300 in Amiga 4000 computers requires an 1x4 angled pin strip and an SMD PLCC44 socket. For operation in Amiga2000/3000 computers, please refer to my other projects for a DIP CIAB Adapter.

The components for the switch are listed below:
- 1x STM AV340TTR (Mouser: 511-STMAV340TTR)
- 2x TS5A3159 (Mouser: 595-TS5A3159QDBVRQ1)
- 1x 2x5 R/A shrouded pin header .1" (Mouser: 798-HIF3FC10PA254DS1)
- 1x 2x7 Socket strip vertical .1"
- 1x 10k 0603
- 2x FB 120Ohms@100 MHz
- 3x 100nF 0603
- 1x 10uF 0805
- 1x 1x3 R/A pin header

The switch is supposed to be mounted upside-down on the 2x7 pin strip of the Multifix AGA. Three additional connections are required: 5V, GND and the switch signal. Probably the best option for a stable power supply is the programming header of the MultiFix AGA (JTAG), where Pin 2 carries GND and Pin 4 +5V. The Switch signal connects to CIAB, either DTR or (classic RatteSwitch) CTS.

I'd suggest to go for DTR instead of CTS, since this way is friendlier to the ICs involved. CTS is normally set to input in Amiga computers, where the relevant signal from the serial port is going through an MC1489. Using that pin as output on the CIA will have the CSG8520 pin 8 and the MC1489 pin 6 at odds with each other. That's why this project uses DTR as switching signal, whose state is available both internally (CIAB) and externally (RS232 DB25).

The third piece of hardware needed is the connection between the RTG graphics card and the switcher. The 2x5 connector on raddswi will need analog R,G,B,HSync,VSync and AGND supplied. A typical generic approach is to adapt a short VGA cable for this purpose. Please have a look into the Pics/ subfolder, where the respective connections between a VGA cable and the 2x5 input header are depicted.

## Software notes
Select the SwitchControl binary matching your connection (DTR or CTS), copy it to C: on your Amiga's harddrive and modify your s:user-startup or s:startup-sequence. The only addition to one of the files (preferably s:user-startup) is a line that reads

C:SwitchControl

Important: SwitchControl needs to be started after the Monitor driver(s), thus in s:user-startup or late in s:startup-sequence. 

## Pictures

![MultiFIXwithRADDSWI](https://github.com/HenrykRichter/RaddSwi/raw/main/Pics/Raddswi_1.JPG)

![Front View](https://github.com/HenrykRichter/RaddSwi/raw/main/Pics/Raddswi_2.JPG)


## License
The PCB, it's design files and all support code are licensed as [CC BY NC SA](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.en).

