# Awesome WonderSwan Development

A curated list of awesome WonderSwan/WonderSwan Color development resources and tools. Inspired by the [awesome](https://github.com/sindresorhus/awesome) list.

## Contents

- [Introduction](#introduction)
  - [Getting started](#getting-started)
- [Documentation](#documentation)
  - [Datasheets](#datasheets)
  - [Other documentation](#other-documentation)
- [Emulators](#emulators)
  - [Peripheral emulators](#peripheral-emulators)
  - [Test ROMs](#test-roms)
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
  - [WW tools](#ww-tools)
  - [WW documentation](#ww-documentation)
  - [Open source WW programs](#open-source-ww-programs)
- [Open source hardware](#open-source-hardware)
  - [Cartridges](#cartridges)
  - [Peripherals](#peripherals)
  - [Screen capture](#screen-capture)
  - [Other hardware development](#other-hardware-development)
- [Historical](#historical)

## Introduction

The Bandai WonderSwan is a handheld game console released and supported by Bandai from 1999 to 2003 in Japan,
with later follow-ups in the form of the 2000 WonderSwan Color and 2002 SwanCrystal. It is the last piece of
hardware with design input from the legendary Gunpei Yokoi, as well as [Asuka Langley's handheld of choice](https://img.asie.pl/t9zJ.jpg).

While this list focuses on "bare metal" WonderSwan development (cartridge ROM as output), note that there exists
an official homebrew SDK for the console called the [WonderWitch](http://wonderwitch.qute.co.jp/) created by Qute Corporation,
which requires different targetting (custom .fx file format, FreyaBIOS hardware abstraction layer, FreyaOS libraries,
more restrictive IRAM/SRAM layout). Tools and examples for the WonderWitch are present in their own section; however,
many other entries (such as hardware documentation or graphics converters) are applicable to both environments.

### Getting started

For native WonderSwan development, I personally recommend the following sources:

 * [Wonderful Toolchain Wiki](https://wonderful.asie.pl/wiki/doku.php?id=wswan:index) - documentation for the open-source WonderSwan/WonderWitch homebrew toolchain,
 * [WSdev Wiki](https://ws.nesdev.org/wiki/Main_Page) - hardware documentation.

For native WonderSwan and WonderWitch development alike, you may find a serial port adapter useful. The [ConsoleMods Wiki](https://consolemods.org/wiki/WonderSwan:RS-232_Serial_Cable_Mod)
provides a list of both purchaseable adapters and DIY building projects.

## Documentation

 * **[WSdev Wiki](https://ws.nesdev.org/wiki/Main_Page)** - the most recent and actively developed documentation source, hosted by nesdev.org.
 * [STSWS](http://perfectkiosk.net/stsws.html) - contains some information not yet on the WSdev wiki.
 * [WSMan](http://daifukkat.su/docs/wsman/) - older documentation source.

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

### Other documentation

 * [Everything You Never Wanted to Know about the WonderSwan RTC](https://forums.nesdev.org/viewtopic.php?t=21513)
 * [Retail cartridges](https://github.com/RSDuck/nileswan/blob/main/docs/retail_cartridges.md) - cartridge logic analyzer and requirement documentation.
 * [splashbuilder readme](https://github.com/Godzil/splashbuilder/blob/master/README.md) - WonderSwan Color custom boot splash format.
 * [.WSR file format documentation](archive/in_wsr.txt) (Japanese) - popular WonderSwan standalone/emulated music file format.

## Emulators

 * **[Mesen 2](https://github.com/SourMesen/Mesen2/)** (GPL-3.0) - high accuracy, extensive built-in debugger and profiler, recommended for development.
 * [ares](https://ares-emu.net/) (ISC) - high accuracy.
 * [Mednafen](https://mednafen.github.io/) (GPL-2.0) - serial port emulation, built-in debugger.
   * [BizHawk](https://tasvideos.org/Bizhawk) - WonderSwan core based on Mednafen, features Lua scripting and rewind/movie support.
   * [wf-mednafen](https://github.com/WonderfulToolchain/wf-mednafen/releases/) - fork of Mednafen with emulation fixes and debugger UI/UX improvements, based on mednafenPceDev's work.
   * [WonderDroid Ultra](https://f-droid.org/packages/com.atelieryl.wonderdroid/) - fork of Mednafen, Android port.
 * [NitroSwan](https://github.com/FluBBaOfWard/NitroSwan) - WonderSwan emulator for Nintendo DS/DSi, user friendly WonderWitch support.
   * [SwanGBA](https://github.com/FluBBaOfWard/SwanGBA/) - GBA version of the above, does not run at full speed.
 * [StoicGoose](https://github.com/xdanieldzd/StoicGoose) (MIT) - C# WonderSwan emulator.
 * [Oswan](sourceforge.jp/projects/oswan/devel) (GPL-2.0) - legacy WonderSwan emulator with a built-in debugger.

### Peripheral emulators

These emulators are currently only supported by Mednafen by editing its `wswan.excomm` configuration option.

 * [WonderFence](https://bitbucket.org/trap15/wonderfence/src/master/) (MIT) - MobileWonderGate internet adapter emulator.

## Test ROMs

 * [WSCPUTest](https://github.com/FluBBaOfWard/WSCPUTest) - V30MZ CPU behaviour
 * [WSHWTest](https://github.com/FluBBaOfWard/WSHWTest) - SoC interrupt/PPU timer handling
 * [WSTimingTest](https://github.com/FluBBaOfWard/WSTimingTest) - V30MZ CPU timing
 * [ws-test-suite](https://github.com/asiekierka/ws-test-suite) (MIT) - assorted hardware tests and testing tools
 * [rtctest](https://forums.nesdev.org/viewtopic.php?t=21513) - "2003 mapper + S-3511" RTC protocol and behaviour
 * [Robert Peip's test ROMs](https://github.com/MiSTer-devel/WonderSwan_MiSTer/tree/main/testroms) - sprite priority/window testing tool
 * [KarnakTest](https://github.com/FluBBaOfWard/KarnakTest) - PCv2 KARNAK timer/ADPCM mapper testing

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

 * [#wonderwitch IRC channel promo](https://github.com/tslanina/Retro-WonderSwanColor-Promo) (MIT)
 * [Bad Apple!! for WSwan](https://github.com/asiekierka/bad-apple-for-wswan) (MIT)
 * [HBlank Cylinder Effect](https://github.com/joffb/wsc-witch-cylinder)

### Games

 * [Inufuto's games](http://inufuto.web.fc2.com/8bit/) - written using a custom C-like toolchain.
 * [SwanDriving](http://sebastianmihai.com/swan-driving.html) ([Mono](http://sebastianmihai.com/swan-driving-bw.html)) - tech demo written with NASM.
 * [WonderSnake](https://github.com/tslanina/Retro-WonderSwanColor-Wondersnake) (GPL-3.0) - Snake game written with Borland TASM.

### Other programs

 * [144p Test Suite for WS](https://github.com/asiekierka/240p-test-ws) (GPL-3.0) - 240p Test Suite-inspired user-side testing tool
 * [BootFriend](https://wonderful.asie.pl/ws/bootfriend) (GPL-3.0) - WonderSwan custom "firmware"/splash screen patch - XMODEM software load to RAM and more!
 * [CartFriend](https://github.com/WonderfulToolchain/ws-cartfriend) (GPL-3.0) - WonderSwan cartridge menu/launcher
 * [Chips1](https://github.com/asiekierka/chips1) (MIT) - CHIP-8/SuperCHIP emulator.
 * [ELKS](https://github.com/ghaerr/elks) (GPL-2.0 + others) - Embedded Linux Kernel Subset kernel/operating system.
 * [ieepview](https://github.com/asiekierka/ws-ieepview) (MIT) - internal EEPROM viewer/editor.
 * [ws-backup-tool](https://github.com/asiekierka/ws-backup-tool) (GPL-3.0) - cartridge backup/restore/flash tool and IPL dumper for BootFriend.
 * [wsmonitor](https://bitbucket.org/trap15/wsmonitor/) (MIT) - 80186 debug monitor.

### Miscellaneous

 * [vgmswan](https://github.com/asiekierka/vgmswan) (MIT/zlib) - .VGM playback and conversion tools.

## WonderWitch

 * [AthenaOS](https://github.com/OpenWitch/AthenaOS) - FreyaBIOS/FreyaOS re-implementation project.
 * [ow-libs](https://github.com/OpenWitch/ow-libs) - WonderWitch standard library re-implementation project.
 * [wonderwitchvc15](https://github.com/autumn009/wonderwitchvc15) - example of using Visual C++ 1.5 for compiling WonderWitch binaries.

### WW tools

 * [exe2fbin](https://github.com/OpenWitch/exe2fbin) (PD) - reconstruction of the official exe2fbin binary.
 * [MiracleMage](https://github.com/Godzil/MiracleMage) (GPL-2.0) - high-level WonderWitch emulator, only supports "mono" software, does not require a WonderWitch ROM.
 * [romwitch](https://bitbucket.org/trap15/romwitch/) (GPL-2.0) - utility to inject executables into "static" WonderWitch software ROMs.

### WW documentation

 * [Don Walizer Jr's tutorials](https://www.donwalizerjr.com/tags/wonderswan) ([source code](https://github.com/dwalizer/wonderwitch)).
 * [Wonder Witch Technical Manual](http://shaw.la.coocan.jp/wwtm/)
 * [WSdev Wiki](https://ws.nesdev.org/wiki/Main_Page) - also contains a WonderWitch section.
 * [wonder/doc/freya](https://bitbucket.org/trap15/wonder/src/master/doc/freya/)

### Open source WW programs

This section only lists programs whose source code is explicitly listed under open source licenses.

#### Games

 * [FallingTower mini](http://www.fenix.ne.jp/~cdrtk/soft/wwjump.html) (BSD-2-Clause)
 * [Nametry](https://www.asahi-net.or.jp/~cs8k-cyu/ww/nametry.html) (BSD-2-Clause)
 * [Noiz](https://www.asahi-net.or.jp/~cs8k-cyu/ww/noiz.html) (GPL-2.0-or-later)
 * [PutiPati](https://www.asahi-net.or.jp/~cs8k-cyu/ww/putipati.html) (BSD-2-Clause)
 * [Soari-san](http://www.fenix.ne.jp/~cdrtk/soft/soari.html) (BSD-2-Clause)
 * [SpeedMac](https://kozos.jp/ww/) (BSD-2-Clause)
 * [yoppa](https://github.com/WonderfulToolchain/yoppa/tree/original) (BSD-3-Clause)

#### Applications

 * [dumpipl](https://github.com/up-n-atom/wwsoft/tree/master/dumpipl) (MIT) - WS/WSC initial program loader dumping tool (as "Soft" image).
 * [vgmwitch](https://bitbucket.org/trap15/vgmwitch) (MIT) - SN76489 music player.
 * [WWTerm](https://github.com/WonderfulToolchain/WWTerm/tree/original) (GPL-2.0) - terminal emulator.
 * [米七note](http://www.fenix.ne.jp/~cdrtk/soft/ksnote.html) (BSD-2-Clause)

#### Libraries

 * [HummingCat](https://github.com/molety/HummingCat/) (MIT) - work-in-progress sound driver.

## Open source hardware

### Cartridges

 * [Bandai2003](https://github.com/up-n-atom/Bandai2003) (MIT) - Verilog "2003" mapper implementation.
 * [mbc-unlock](https://bitbucket.org/trap15/mbc-unlock) (CC0) - VHDL boot handshake implementation.
 * [nileswan](https://github.com/RSDuck/nileswan/) (GPLv3) - open-source flash cartridge.

### Peripherals

 * [ExtFriend](https://github.com/WonderfulToolchain/ws-extfriend) (GPL-3.0) - WonderSwan EXT<->USB adapter with digital audio capture.
 * [wsheadphone](https://github.com/zwenergy/wsheadphone) (CC-BY-NC-SA-4.0) - headphone DAC adapter.
 * [WS-LinkC](https://github.com/zwenergy/WS-LinkC) (CC-BY-NC-SA-4.0) - cheap, DIY-friendly link cable alternative.
 * [WSMtool](https://github.com/zwenergy/WSMtool) (CC-BY-NC-SA-4.0) - multitool adapter for the WonderSwan; headphone, serial and link cable adapter in one. 

### Screen capture

 * [nisetro_wsc](https://github.com/splash5/nisetro_wsc) (MIT) - FPGA-based screen capture solution.
 * [swancolorHD](https://github.com/zwenergy/swancolorHD) (GPL-3.0) - FPGA-based screen capture solution.
   * [swantroller](https://github.com/zwenergy/swantroller) (GPL-3.0) - WonderSwan Color-based controller PCB for the swancolorHD.

### Other hardware development

 * [USB WonderSwan Cartridge Utility](https://github.com/up-n-atom/WonderSwanCartTap) (MIT) - cartridge dumper and programmer.
 * [WonderSwan for MiSTer](https://github.com/MiSTer-devel/WonderSwan_MiSTer) (GPL-2.0)

## Historical

These are links to files and sources which are noteworthy from a historical perspective, but have been superseded.

 * [WSTech 2.4](https://github.com/OpenEmu/Mednafen-Core/blob/master/mednafen/wswan/wstech24.txt) - outdated document, incorrect in places.
