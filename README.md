# NomanOS - Build your own OS

Instructions to setup

## Installation

Use the package manager apt-get to install nasm and qemu.

```bash
sudo apt update
sudo apt install qemu-system-x86
sudo apt install nasm

```

```bash
qemu-system-x86_64 --version
nasm --version
```

## Usage

### Choose a Text Editor

Use a text editor to create and edit your assembly code files. Popular choices include Notepad (on Windows), Visual Studio Code, Sublime Text, Atom, Vim, or any other plain text editor you prefer

### Create a new folder and write your assembly code

Write your assembly code in this file. Make sure to save it with the .asm extension.

### Assemble your code and Try it out

```bash
nasm -f bin my_program.asm -o my_program.bin

```

### Run it on qemu

```bash
qemu-system-x86_64 my_program.bin
```

### To exmaine the binary data

```bash
xxd my_program.bin
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
