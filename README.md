# Awesome WonderSwan Development

A curated list of awesome WonderSwan/WonderSwan Color development resources and tools. Inspired by the [awesome](https://github.com/sindresorhus/awesome) list.

## Contents

- [Introduction](#introduction)
- [Documentation](#documentation)
  - [NEC V30MZ CPU](#nec-v30mz-cpu)
  - [WonderSwan hardware](#wonderswan-hardware)
  - [Other documentation](#other-documentation)
- [Emulators](#emulators)
- [Software development](#software-development)
  - [Tools](#tools)
    - [Graphics utilities](#graphics-utilities)
    - [Music drivers](#music-drivers)
- [Source code](#source-code)
  - [Boilerplate](#boilerplate)
  - [Demos](#demos)
  - [Games](#games)
  - [Other programs](#other-programs)
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

### NEC V30MZ CPU

The NEC V30MZ is an 80186-compatible CPU for low-power platforms with an efficient pipeline design. It should not be confused with the
NEC V20/V30 line of CPUs, which provide additional opcodes and features on top of the 8086 architecture.

For a variety of reasons, NEC's documentation (and some WonderSwan documentation) uses unique NEC opcode names, while other sources
and assemblers typically use Intel opcode names. A translation map between the two is available [as part of STSWS](http://perfectkiosk.net/stsws.html#cpu_8086_translation_map).

 * [NEC V30MZ Preliminary User's Manual](https://www.renesas.com/us/en/document/lbr/v30mztm-hardware-preliminary)

### WonderSwan hardware

 * **[STSWS](http://perfectkiosk.net/stsws.html)** - the most recent documentation source.
 * **[WSMan](http://daifukkat.su/docs/wsman/)** - contains some information not yet in STSWS.

### Other documentation

 * [splashbuilder readme](https://github.com/Godzil/splashbuilder/blob/master/README.md) - WonderSwan Color custom boot splash format.

## Emulators

### Console

 * [ares](https://ares-emu.net/) (ISC)
 * [Mednafen](https://mednafen.github.io/) (GPL-2.0) - supports WonderWitch and serial port emulation.
 * [NitroSwan](https://github.com/FluBBaOfWard/NitroSwan) - WonderSwan emulator for Nintendo DSi.
 * [StoicGoose](https://github.com/xdanieldzd/StoicGoose) (MIT) - C#-based WonderSwan emulator.
 * [WonderDroid Ultra](https://f-droid.org/packages/com.atelieryl.wonderdroid/) (GPL-2.0) - Mednafen wrapper for Android phones.

### Peripherals

 * [WonderFence](https://bitbucket.org/trap15/wonderfence/src/master/) (MIT) - MobileWonderGate internet adapter emulator.

## Software development

 * [owswan](https://github.com/jounikor/owswan) - OpenWatcom-based WonderSwan toolchain. 
 * [Kyoui](https://asie.pl/files/kyoui_2004_11_02.zip) - (mirror) tools for compiling WonderSwan binaries using OpenWatcom.
 * [Wonderful](https://github.com/WonderfulToolchain/wonderful-i8086) - work-in-progress gcc-ia16 based C/ASM toolchain for WonderSwan and WonderWitch.
 * [WSLink](https://bitbucket.org/trap15/wonder/src/master/) (MIT) - NASM linker outputting WonderSwan and WonderWitch compatible binaries.

### Tools

 * [Dekadence WonderSwan Tools](https://github.com/superjohan/wonderswan-tools) (MIT) - assorted Python scripts.
 * [splashbuilder](https://github.com/Godzil/splashbuilder) (BSD-3-Clause) - toolchain for creating custom WonderSwan Color boot splashes.
 
#### Graphics utilities

 * **[SuperFamiconv](https://github.com/Optiroc/SuperFamiconv)** (MIT) - tile/map converter with flexible palette/optimization options and mostly-complete WS/WSC support.
 * [bmp2swan](http://onorisoft.free.fr/retro.htm?ws/ws.htm) - simple bitmap converter.

#### Music drivers

 * [WonderSwan Total Sound Driver](https://github.com/Shaw02/WTD)

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

 * [ieepview](https://github.com/asiekierka/ws-ieepview) (MIT) - internal EEPROM viewer/editor.
 * [wsmonitor](https://bitbucket.org/trap15/wsmonitor/) (MIT) - 80186 debug monitor.

## WonderWitch

 * [MiracleMage](https://github.com/Godzil/MiracleMage) (GPL-2.0) - limited high-level WonderWitch emulator.
 * [romwitch](https://bitbucket.org/trap15/romwitch/) (GPL-2.0) - utility to replace executables on "static" WonderWitch software images.
 * [wonderwitchvc15](https://github.com/autumn009/wonderwitchvc15) - example on using Visual C++ 1.5 for compiling WonderWitch binaries.

### WW documentation

 * [Don Walizer Jr's tutorials](https://www.donwalizerjr.com/tags/wonderswan) ([source code](https://github.com/dwalizer/wonderwitch)).
 * [wonder/doc/freya](https://bitbucket.org/trap15/wonder/src/master/doc/freya/) - initial Freya internals documentation.

### WW open-source homebrew

 * [dumpipl](https://github.com/up-n-atom/wwsoft/tree/master/dumpipl) (MIT) - WS/WSC initial program loader dumping tool (as "Soft" image).
 * [vgmwitch](https://bitbucket.org/trap15/vgmwitch) (MIT) - SN76489 music player.
 * [WWTerm](https://github.com/WonderfulToolchain/WWTerm/tree/original) (GPL-2.0) - terminal emulator.
 * [yoppa](https://github.com/WonderfulToolchain/yoppa/tree/original) (BSD-3-Clause) - WWGP 2001 game.

## Hardware development

 * [Bandai2003](https://github.com/up-n-atom/Bandai2003) (MIT) - Verilog "2003" mapper implementation.
 * [mbc-unlock](https://bitbucket.org/trap15/mbc-unlock) (CC0) - VHDL boot handshake implementation.
 * [nisetro_wsc](https://github.com/splash5/nisetro_wsc) (MIT) - FPGA-based screen capture solution.
 * [swancolorHD](https://github.com/zwenergy/swancolorHD) - FPGA-based screen capture solution.
 * [WonderSwan for MiSTer](https://github.com/MiSTer-devel/WonderSwan_MiSTer) (GPL-2.0)
 * [wsheadphone](https://github.com/zwenergy/wsheadphone) (CC-BY-NC-SA-4.0) - Headphone DAC adapter.

## Historical

These are links to files and sources which are noteworthy from a historical perspective, but have been superseded.

 * [WSTech 2.4](https://github.com/OpenEmu/Mednafen-Core/blob/master/mednafen/wswan/wstech24.txt) - outdated document, incorrect in places.
