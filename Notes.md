## Ch- 1 : Computer Architecture and the Boot Process

- **BIOS and Booting**: When a computer restarts, it starts without an operating system. It relies on the BIOS (Basic Input/Output Software) to perform basic hardware checks and load the operating system.

- **BIOS Functionality**: BIOS handles essential tasks like detecting hardware components (screen, keyboard, hard disks), but it lacks a file system and must find the OS in specific sectors of storage devices.

- **Boot Sector**: BIOS identifies the bootable sector using a "magic number" (0xaa55) located at the end of the sector. If found, it executes the code in that sector.

- **Endianness**: The x86 architecture uses little-endian format, meaning less significant bytes are stored before more significant ones. It's crucial to understand when working at the byte level.

- **Testing Boot Code**: To test boot code, you can write it to a storage device (like a floppy disk) and reboot your computer or use CPU emulators like Bochs or QEmu.

- **Hexadecimal Notation**: Hexadecimal (base 16) is commonly used in low-level programming because it maps easily to binary (base 2) used by computers. It uses digits 0-9 and letters a-f for values 10-15.

## Ch- 2 : Boot Sector Programming (in 16-bit Real Mode)

- Assemblers are used to translate human-friendly instructions into machine code for specific CPUs.

- Boot sector programs are crucial for understanding assembly and the pre-OS environment.

- The assembly program can be assembled into machine code using a command like 'nasm bootsect.asm -f bin -o bootsect.bin.'

- The '-f bin' option is used to produce raw machine code without additional meta-information.

- Boot sector programs typically start with an endless loop.

- CPUs in 16-bit real mode emulate the old Intel 8086 architecture for compatibility with older software.

- Memory protection is essential for modern OS stability and is lacking in 16-bit real mode.

- Interrupts allow the CPU to temporarily halt and handle higher-priority tasks, either from software or hardware.

- Interrupts are represented by unique numbers that index an interrupt vector containing pointers to interrupt service routines (ISRs).

- BIOS provides ISRs for various hardware functions and multiplexes them based on register values.

- CPU registers (ax, bx, cx, dx) store data temporarily and can hold 16-bit values.

- These registers can be accessed individually, including their high and low bytes.

- BIOS loads boot sector programs typically at memory address 0x7C00.

- Labels in assembly are used to mark addresses or data for reference.

- Memory addressing in assembly involves specifying addresses directly or using labels for readability.

- The [org 0x7C00] directive informs the assembler about the expected memory loading address.
