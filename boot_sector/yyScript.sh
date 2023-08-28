#!/bin/bash

# Check if the program name is provided as an argument
if [ $# -ne 1 ]; then
  echo "Usage: $0 <program_name>"
  exit 1
fi

program_name="$1"
program_asm="${program_name%.bin}.asm"

# Assemble the provided assembly code
nasm -f bin "$program_asm" -o "$program_name.bin"

# Examine the binary data
xxd "$program_name.bin"

# Run the binary with qemu
qemu-system-x86_64 "$program_name.bin"


