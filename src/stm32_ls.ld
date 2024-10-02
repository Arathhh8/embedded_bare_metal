/* Entry Point */
ENTRY(Reset_Handler)

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
    } >FLASH

    .data:
    {
        *(.data)
    } >SRAM AT> FLASH

    .bss:
    {
        *(.bss)
    } >SRAM
}