# OpenOCD (Open On Chip Debugger)

- The open On-Chip Debugger(OpenOCD) aims to provide debugging, in-system programming, and boundary-scan testing for embedded target devices.
- Its free and open source host application allows you to program, debug, and analyze your applications using GDB.
- It supports various target boards based on different processor architecture.
- OpenOCD currently supports many types of debug addapters: USB-based, parallel port-based, and other standalone boxes that run OpenOCD internally.
- GDB Debugg: It allows ARM7(ARM7TDMI and ARM720t), ARM9(ARM920T, ARM922T, ARM926EJS, ARM966E-S), XScale(PXA25x, IXP42x), Cortex-M3(Stellaris LM3, ST STM32, and Energy Micro EFM32) and Intel Quark(x10xx) based cores to be debugged via the GDB protocol.
- Flash Programming: Flash writting is supported for external CFI-compatible NOR flashes (Intel and AMD/Spansion command set) and several internal flashes(LPC1700, LPC1800, LPC2000, LPC4300, AT91SAM7, AT91SAM3U, STR7x, STR9x, LM3, STM32x and EFM32). Preliminary support for various NAND flash controllers (LPC3180, Orion, S3C24xx, more) is included.

## Programming adapters

- Programming adapters are used to get access to the debug innterface of the target with native protocol signaling such as SWD or JTAG since HOST doesn't support such interfaces.
- It does protocol conversion. For example, commands and messages coming from host application in the form of USB packet will be converted to equivalent debug interface signaling (SWD or JTAG) and vice versa.
- Mainly debug adapter helps you to download and debug the code.
- Some advanced debug adatpters will also help you to capture trace events such as on the fly instruction trace and profiling information.

### Popular debug adapters

- SEGGER J-Link - JTAG/SWD Debugger
Multiple **CPUs** supported -8051, PIC32, RX, ARM7/9/11, Cortex-M/R/A, RISC-V
Download speed up to 1 MByte/s
Debug Protocol: JTAG/SWD
Target Interface: 20-pin

- KEIL ULINK / ULINK Pro
Target Connectors 10-pin(0.05") - Cortex Debug Connector
20-pin(0.10") - ARM Standard JTAG Connector
20-pin(0.05") - Cortex Debug+ETM Connector

- ST-LINK/V2 is an in-circuit debugger and programmer for the STM8 and STM32 microcontrollers families.
SWIM(Single Wire Interface Module) and JTAG/SWD.

## Steps to download the code using OpenOCD

1. Download and install OpenOCD.
2. Install Telnet client(for windows you can use PuTTY software).
    - If you cannot use Telnet application you can also use "GDB Client".
3. Run OpenOCD with the board configuration file.
4. Connect to the OpenOCD via Telnet Client or GDB client.
5. Issue commnands over Telnet or GDB Client to OpenOCD to download and debug the code.