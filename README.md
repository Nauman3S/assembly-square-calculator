# Square Calculator in Assembly

This program is a simple assembly code that takes a single-digit integer as input, calculates the square of that number, and prints the result on the screen.

## Prerequisites
-   NASM (Netwide Assembler)
-   GNU linker (ld)
## How to Use

1. Assemble the code using NASM:

```bash
nasm -f elf32 square.asm -o square.o
```

2.  Link the object file using ld to create the executable:

```bash
ld -m elf_i386 square.o -o square
```

3.  Run the executable:

```bash
./square
```

The program will prompt you to enter a single-digit number. Enter the number and press Enter.

The program will display the square of the entered number.

Please note that this code only supports single-digit integers as input. For multi-digit integers or more complex operations, consider modifying the code accordingly.