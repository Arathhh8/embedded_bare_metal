# Build process

## Pre-processing stage

All pre-processing directives will be resolved.

***main.c*** **->** ***main.i***

Pre-processing file is created **(main.i)**

## Code generation stage

Higher level language code statements will be converted into processor architectural level mnemonics.

Translating a source file into assembly language

***main.i*** **->** ***main.s***

Assembly file is created **(main.s)**

## Assembler stage

Assebly level mnemonics are converted into opcodes(machine codes for instructions)

***main.s*** **->** ***main.o***

Relocatable object file is created **(main.o)**

### Note

Compiler will not save *.i* and *.s* files by default. So, yo will need to request to the compiler save these files by using specific commands.

## After that comes the Linking stage

All the relocatable object files will be taken by the linker and it will resolve all the symbols and other information and it will merge the different sections of the .o files to create one executable.

***all .o files*** **-> linker ->** ***.elf*** (executable and linkable format)

After that you can take that executable which is in yellow formatto create some other formats such as binary format .bin or convert the .elf format to .ihex format using the ***objcopy tool***

### Summary of building process

**Preprocessing** *->* **Compilation** *->* **Linking**

All these steps will be carried out by using only one binary that is ***arm-none-eabi-gcc***

the command:

    arm-none-eabi-gcc 

is enougth to generate the executable file.
