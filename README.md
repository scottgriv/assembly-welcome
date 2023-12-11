<!-- Begin README -->

<div align="center">
    <a href="https://github.com/scottgriv/assembly-welcome" target="_blank">
        <img src="./docs/images/icon.png" width="200" height="200"/>
    </a>
</div>
<p align="center">
    <a href="https://en.wikipedia.org/wiki/Assembly_language"><img src="https://img.shields.io/badge/Assembly-1.0.0-000000?style=for-the-badge&logo=assemblyscript" alt="Assembly Badge" /></a>
    <br>
    <a href="https://github.com/scottgriv"><img src="https://img.shields.io/badge/github-follow_me-181717?style=for-the-badge&logo=github&color=181717" alt="GitHub Badge" /></a>
    <a href="mailto:scott.grivner@gmail.com"><img src="https://img.shields.io/badge/gmail-contact_me-EA4335?style=for-the-badge&logo=gmail" alt="Email Badge" /></a>
    <a href="https://www.buymeacoffee.com/scottgriv"><img src="https://img.shields.io/badge/buy_me_a_coffee-support_me-FFDD00?style=for-the-badge&logo=buymeacoffee&color=FFDD00" alt="BuyMeACoffee Badge" /></a>
    <br>
    <a href="https://prgportfolio.com" target="_blank"><img src="https://img.shields.io/badge/PRG-Bronze Project-CD7F32?style=for-the-badge&logo=data:image/svg%2bxml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/Pgo8IURPQ1RZUEUgc3ZnIFBVQkxJQyAiLS8vVzNDLy9EVEQgU1ZHIDIwMDEwOTA0Ly9FTiIKICJodHRwOi8vd3d3LnczLm9yZy9UUi8yMDAxL1JFQy1TVkctMjAwMTA5MDQvRFREL3N2ZzEwLmR0ZCI+CjxzdmcgdmVyc2lvbj0iMS4wIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciCiB3aWR0aD0iMjYuMDAwMDAwcHQiIGhlaWdodD0iMzQuMDAwMDAwcHQiIHZpZXdCb3g9IjAgMCAyNi4wMDAwMDAgMzQuMDAwMDAwIgogcHJlc2VydmVBc3BlY3RSYXRpbz0ieE1pZFlNaWQgbWVldCI+Cgo8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjAwMDAwMCwzNC4wMDAwMDApIHNjYWxlKDAuMTAwMDAwLC0wLjEwMDAwMCkiCmZpbGw9IiNDRDdGMzIiIHN0cm9rZT0ibm9uZSI+CjxwYXRoIGQ9Ik0xMiAzMjggYy04IC04IC0xMiAtNTEgLTEyIC0xMzUgMCAtMTA5IDIgLTEyNSAxOSAtMTQwIDQyIC0zOCA0OAotNDIgNTkgLTMxIDcgNyAxNyA2IDMxIC0xIDEzIC03IDIxIC04IDIxIC0yIDAgNiAyOCAxMSA2MyAxMyBsNjIgMyAwIDE1MCAwCjE1MCAtMTE1IDMgYy04MSAyIC0xMTkgLTEgLTEyOCAtMTB6IG0xMDIgLTc0IGMtNiAtMzMgLTUgLTM2IDE3IC0zMiAxOCAyIDIzCjggMjEgMjUgLTMgMjQgMTUgNDAgMzAgMjUgMTQgLTE0IC0xNyAtNTkgLTQ4IC02NiAtMjAgLTUgLTIzIC0xMSAtMTggLTMyIDYKLTIxIDMgLTI1IC0xMSAtMjIgLTE2IDIgLTE4IDEzIC0xOCA2NiAxIDc3IDAgNzIgMTggNzIgMTMgMCAxNSAtNyA5IC0zNnoKbTExNiAtMTY5IGMwIC0yMyAtMyAtMjUgLTQ5IC0yNSAtNDAgMCAtNTAgMyAtNTQgMjAgLTMgMTQgLTE0IDIwIC0zMiAyMCAtMTgKMCAtMjkgLTYgLTMyIC0yMCAtNyAtMjUgLTIzIC0yNiAtMjMgLTIgMCAyOSA4IDMyIDEwMiAzMiA4NyAwIDg4IDAgODggLTI1eiIvPgo8L2c+Cjwvc3ZnPgo=" alt="Bronze" /></a>
</p>

---------------

<h1 align="center">Assembly Welcome Program</h1>

Assembly Welcome Program is a simple program that prints a welcome message to the console.

---------------

## Table of Contents

- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Assembling the Program](#assembling-the-program)
    - [Linking the Object File](#linking-the-object-file)
    - [Running the Program](#running-the-program)
    - [Troubleshooting](#troubleshooting)
- [License](#license)
- [Credits](#credits)

## Getting Started

This section will guide you through the steps to get the assembly program up and running on your machine.

### Prerequisites

Before you begin, ensure you have the following installed:

- NASM (Netwide Assembler): For assembling the `.asm` file.
- A Linux environment: The program is designed to run on Linux.
- A text editor: To view or modify the source code.

### Assembling the Program

1. Open Terminal: Open your terminal in the directory where your `.asm` file is located.
2. Assemble the Code: Use NASM to assemble the `.asm` file. 
3. Since the file is named `welcome.asm`, the command will be:

```bash
nasm -f elf32 welcome.asm -o myprogram.o
```
This command creates an object file named `myprogram.o`.

### Linking the Object File

1. Link the Object File: Next, link the object file to create an executable. The following command links `myprogram.o` to create an executable named `myprogram`:

```bash
ld -m elf_i386 -s -o myprogram myprogram.o
```
`-m elf_i386` specifies that the program is for 32-bit architecture.

### Running the Program

1. Execute the Program: Run the program by typing:

```bash
./myprogram
```
Upon execution, the program will display the message defined in the .data section of your assembly code.

### Troubleshooting

- If you encounter permission issues while executing, you may need to change the permissions of the executable using `chmod +x myprogram`.
- Ensure that the NASM syntax matches the version you are using, as there might be slight differences in syntax across different versions.

# Resources

- [Assembly Language](https://en.wikipedia.org/wiki/Assembly_language)
- [Assembly Language Tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)

## License

This project is released under the terms of **The Unlicense**, which allows you to use, modify, and distribute the code as you see fit. 
- [The Unlicense](https://choosealicense.com/licenses/unlicense/) removes traditional copyright restrictions, giving you the freedom to use the code in any way you choose.
- For more details, see the [LICENSE](LICENSE) file in this repository.

## Credits

**Author:** [Scott Grivner](https://github.com/scottgriv) <br>
**Email:** [scott.grivner@gmail.com](mailto:scott.grivner@gmail.com) <br>
**Website:** [scottgrivner.dev](https://www.scottgrivner.dev) <br>
**Reference:** [Main Branch](https://github.com/scottgriv/assembly-welcome) <br>

---------------

<div align="center">
    <a href="https://scottgrivner.dev" target="_blank">
        <img src="./docs/images/footer.png" width="100" height="100"/>
    </a>
</div>

<!-- End README -->
