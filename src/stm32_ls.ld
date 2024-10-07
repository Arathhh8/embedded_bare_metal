/* Entry Point */
ENTRY(Reset_Handler)

__max_heap_size = 0x400; /* A symbol declaration. Not a variable */
__max_stack_size = 0x200; /* A symbol declaration. Not a variable */

/* Memories definition */
MEMORY
{
    FLASH(rx) : ORIGIN = 0x08000000, LENGTH = 64K
    SRAM(rwx) : ORIGIN = 0X20000000, LENGTH = 20K
}

/* Memories section */
SECTIONS
{
    .text:
    {
        // merge all .isr_vector section of all input files
        *(.isr_vector)
        
        // merge all .text section of all input files
        *(.text)

        // merge all .rodata section of all input files 
        *(.rodata)
        _etext = .; /* Store the updated location counter value in to a sybol '_etext' */
    } >FLASH

    .data:
    {
        _sdata = .; /* Assign a value to a symbol 'start_of_data' */
        *(.data)
        _edata = .;
    } >SRAM AT> FLASH

    .bss:
    {
        _sbss = .;
        *(.bss)
        _ebss = .;
    } >SRAM
}