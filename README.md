# Awesome WonderSwan Development

A curated list of awesome WonderSwan/WonderSwan Color development resources and tools. Inspired by the [awesome](https://github.com/sindresorhus/awesome) list.

## Contents

- [Introduction](#introduction)
- [Documentation](#documentation)
  - [Datasheets](#datasheets)
  - [WonderSwan hardware](#wonderswan-hardware)
  - [Other documentation](#other-documentation)
- [Emulators](#emulators)
- [Accuracy test ROMs](#accuracy-test-roms)
- [Software development](#software-development)
  - [Libraries](#libraries)
    - [Music drivers](#music-drivers)
  - [Tools](#tools)
    - [Graphics utilities](#graphics-utilities)
- [Source code](#source-code)
  - [Boilerplate](#boilerplate)
  - [Demos](#demos)
  - [Games](#games)
  - [Other programs](#other-programs)
  - [Miscellaneous](#miscellaneous)
- [WonderWitch](#wonderwitch)
  - [WW documentation](#ww-documentation)
  - [WW open-source homebrew](#ww-open-source-homebrew)
- [Hardware development](#hardware-development)
- [Historical](#historical)

## Introduction

The Bandai WonderSwan is a handheld game console released and supported by Bandai from 1999 to 2003 in Japan. It is
the last piece of hardware which the legendary Gunpei Yokoi had a hand in.

It is important to note that WonderWitch development is distinct from bare metal WonderSwan development.
The former is specific to the WonderWitch - a special personal use development kit from Qute Corporation which came with
its own hardware abstraction layer and toolchain, while the latter focuses on outputting self-contained WonderSwan software.
As such, some of the tooling may not be applicable to WonderWitch developers.

## Documentation

### Datasheets

#### NEC V30MZ CPU

The NEC V30MZ is an 80186-compatible CPU for low-power platforms with an efficient pipeline design. It should not be confused with the
NEC V20/V30 line of CPUs, which provide additional opcodes and features on top of the 8086 architecture.

For a variety of reasons, NEC's documentation (and some WonderSwan documentation) uses unique NEC opcode names, while other sources
and assemblers typically use Intel opcode names. A translation map between the two is available [as part of STSWS](http://perfectkiosk.net/stsws.html#cpu_8086_translation_map).

 * [NEC V30MZ Preliminary User's Manual](https://www.renesas.com/us/en/document/lbr/v30mztm-hardware-preliminary)

#### Other

  * [Seiko S-3511A](http://perfectkiosk.net/S-3511A.pdf) - cartridge RTC.
  * [Fujitsu MBM29DL400TC](https://github.com/up-n-atom/WonderWitch/blob/main/Datasheets/MBM29DL400BC-12PFTN_to_MBM29DL400TC-90PFTN.pdf) - WonderWitch NOR flash.

### WonderSwan hardware

 * **[ws.nesdev.org wiki](https://ws.nesdev.org/wiki/Main_Page)** - the most recent and actively developed documentation source, the WSdev wiki!
 * [STSWS](http://perfectkiosk.net/stsws.html) - contains some information not yet on the WSdev wiki.
 * [WSMan](http://daifukkat.su/docs/wsman/) - older documentation source.
 * [Everything You Never Wanted to Know about the WonderSwan RTC](https://forums.nesdev.org/viewtopic.php?t=21513)
 * [Retail cartridges](https://github.com/RSDuck/nileswan/blob/main/docs/retail_cartridges.md) - cartridge logic analyzer and requirement documentation.

### Other documentation

 * [splashbuilder readme](https://github.com/Godzil/splashbuilder/blob/master/README.md) - WonderSwan Color custom boot splash format.
 * [.WSR file format documentation](archive/in_wsr.txt) (Japanese) - popular WonderSwan standalone/emulated music file format.

## Emulators

### Console

 * **[ares](https://ares-emu.net/)** (ISC)
 * [Mednafen](https://mednafen.github.io/) (GPL-2.0) - supports WonderWitch and serial port emulation.
 * [NitroSwan](https://github.com/FluBBaOfWard/NitroSwan) - WonderSwan emulator for Nintendo DSi.
 * [StoicGoose](https://github.com/xdanieldzd/StoicGoose) (MIT) - C#-based WonderSwan emulator.
 * [WonderDroid Ultra](https://f-droid.org/packages/com.atelieryl.wonderdroid/) (GPL-2.0) - Mednafen wrapper for Android phones.

### Peripherals

 * [WonderFence](https://bitbucket.org/trap15/wonderfence/src/master/) (MIT) - MobileWonderGate internet adapter emulator.

## Accuracy test ROMs

 * [WSCPUTest](https://github.com/FluBBaOfWard/WSCPUTest) - V30MZ CPU behaviour
 * [WSHWTest](https://github.com/FluBBaOfWard/WSHWTest) - SoC interrupt/PPU timer handling
 * [WSTimingTest](https://github.com/FluBBaOfWard/WSTimingTest) - V30MZ CPU timing
 * [ws-test-suite](https://github.com/asiekierka/ws-test-suite) (MIT) - asie's assorted hardware tests and testing tools
 * [rtctest](https://forums.nesdev.org/viewtopic.php?t=21513) - "2003 mapper + S-3511" RTC protocol and behaviour
 * [Robert Peip's test ROMs](https://github.com/MiSTer-devel/WonderSwan_MiSTer/tree/main/testroms) - sprite priority/window testing tool

## Software development

 * **[Wonderful](https://wonderful.asie.pl/)** - gcc-ia16 based C/ASM toolchain for WonderSwan and WonderWitch.
 * [owswan](https://github.com/jounikor/owswan) - OpenWatcom-based WonderSwan toolchain. 
 * [Kyoui](https://asie.pl/files/kyoui_2004_11_02.zip) - (mirror) tools for compiling WonderSwan binaries using OpenWatcom.
 * [WSLink](https://bitbucket.org/trap15/wonder/src/master/) (MIT) - NASM linker outputting WonderSwan and WonderWitch compatible binaries.

### Libraries

 * [libws](https://github.com/WonderfulToolchain/target-wswan-syslibs/tree/main/libws) (zlib) - hardware abstraction functions
 * [libwsx](https://github.com/WonderfulToolchain/target-wswan-syslibs/tree/main/libwsx) (zlib) - decompressors and other useful functions
 * [LZSS decompression routine](archive/orion-lzss-decompression-routine.asm) (public domain)

#### Music drivers

 * [WonderSwan Total Sound Driver](https://github.com/Shaw02/WTD)
 
### Tools

 * [Dekadence WonderSwan Tools](https://github.com/superjohan/wonderswan-tools) (MIT) - assorted Python scripts.
 * [splashbuilder](https://github.com/Godzil/splashbuilder) (BSD-3-Clause) - toolchain for creating custom WonderSwan Color boot splashes.

#### Graphics utilities

 * **[SuperFamiconv](https://github.com/Optiroc/SuperFamiconv)** (MIT) - tile/map converter with flexible palette/optimization options and mostly-complete WS/WSC support.
 * [bmp2swan](http://onorisoft.free.fr/retro.htm?ws/ws.htm) - simple bitmap converter.

## Source code

### Boilerplate

 * [Wonderful template](https://github.com/WonderfulToolchain/wonderful-i8086/tree/main/examples/wswan/template) - GCC/GAS-based template.
 * [wonder/template](https://bitbucket.org/trap15/wonder/src/master/samples/template/) - NASM-based template.

### Demos

 * [Bad Apple!! for WSwan](https://github.com/asiekierka/bad-apple-for-wswan) (MIT)

### Games

 * [SwanDriving](http://sebastianmihai.com/swan-driving.html) ([Mono](http://sebastianmihai.com/swan-driving-bw.html)) - tech demo written with NASM.
 * [WonderSnake](https://github.com/tslanina/Retro-WonderSwanColor-Wondersnake) (GPL-3.0) - Snake game written with Borland TASM.

### Other programs

 * [BootFriend](https://wonderful.asie.pl/ws/bootfriend) (GPL-3.0) - WonderSwan custom "firmware"/splash screen patch - XMODEM software load to RAM and more!
 * [CartFriend](https://github.com/WonderfulToolchain/ws-cartfriend) (GPL-3.0) - WonderSwan cartridge menu/launcher
 * [Chips1](https://github.com/asiekierka/chips1) (MIT) - CHIP-8/SuperCHIP emulator.
 * [ieepview](https://github.com/asiekierka/ws-ieepview) (MIT) - internal EEPROM viewer/editor.
 * [ws-backup-tool](https://github.com/asiekierka/ws-backup-tool) (GPL-3.0) - cartridge backup/restore/flash tool and IPL dumper for BootFriend.
 * [wsmonitor](https://bitbucket.org/trap15/wsmonitor/) (MIT) - 80186 debug monitor.

### Miscellaneous

 * [vgmswan](https://github.com/asiekierka/vgmswan) (MIT/zlib) - .VGM playback and conversion tools.

## WonderWitch

 * [MiracleMage](https://github.com/Godzil/MiracleMage) (GPL-2.0) - limited high-level WonderWitch emulator.
 * [romwitch](https://bitbucket.org/trap15/romwitch/) (GPL-2.0) - utility to replace executables on "static" WonderWitch software images.
 * [wonderwitchvc15](https://github.com/autumn009/wonderwitchvc15) - example on using Visual C++ 1.5 for compiling WonderWitch binaries.

### WW documentation

 * [Don Walizer Jr's tutorials](https://www.donwalizerjr.com/tags/wonderswan) ([source code](https://github.com/dwalizer/wonderwitch)).
 * [wonder/doc/freya](https://bitbucket.org/trap15/wonder/src/master/doc/freya/) - initial Freya internals documentation.

### WW open-source homebrew

 * [dumpipl](https://github.com/up-n-atom/wwsoft/tree/master/dumpipl) (MIT) - WS/WSC initial program loader dumping tool (as "Soft" image).
 * [HummingCat](https://github.com/molety/HummingCat/) (MIT) - work-in-progress sound driver.
 * [vgmwitch](https://bitbucket.org/trap15/vgmwitch) (MIT) - SN76489 music player.
 * [WWTerm](https://github.com/WonderfulToolchain/WWTerm/tree/original) (GPL-2.0) - terminal emulator.
 * [yoppa](https://github.com/WonderfulToolchain/yoppa/tree/original) (BSD-3-Clause) - WWGP 2001 game.

## Hardware development

 * [Bandai2003](https://github.com/up-n-atom/Bandai2003) (MIT) - Verilog "2003" mapper implementation.
 * [ExtFriend](https://github.com/WonderfulToolchain/ws-extfriend) (GPL-3.0) - WonderSwan EXT<->USB adapter with digital audio capture.
 * [mbc-unlock](https://bitbucket.org/trap15/mbc-unlock) (CC0) - VHDL boot handshake implementation.
 * [nisetro_wsc](https://github.com/splash5/nisetro_wsc) (MIT) - FPGA-based screen capture solution.
 * [swancolorHD](https://github.com/zwenergy/swancolorHD) - FPGA-based screen capture solution.
 * [USB WonderSwan Cartridge Utility](https://github.com/up-n-atom/WonderSwanCartTap) (MIT) - cartridge dumper and programmer.
 * [WonderSwan for MiSTer](https://github.com/MiSTer-devel/WonderSwan_MiSTer) (GPL-2.0)
 * [wsheadphone](https://github.com/zwenergy/wsheadphone) (CC-BY-NC-SA-4.0) - Headphone DAC adapter.

## Historical

These are links to files and sources which are noteworthy from a historical perspective, but have been superseded.

 * [WSTech 2.4](https://github.com/OpenEmu/Mednafen-Core/blob/master/mednafen/wswan/wstech24.txt) - outdated document, incorrect in places.
