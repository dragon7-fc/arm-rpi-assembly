# ARM Raspberry Pi Assembly Language From Ground Up

## Commands
---
* assemble
	`arm-linux-gnueabihf-as -o [DEST].o [SRC].s`
* link
	`arm-linux-gnueabihf-ld [XXX].o -o [OUTPUT_ELF]`
- debug
	```
	gdb [OUTPUT_ELF]
	(gdb) starti
	(gdb) layout asm
	(gdb) info registers
	(gdb) stepi
	(gdb) x/nfu 0xaddress
	# enter/leave TUI mode
	(gdb) ctrl+x a
	```
