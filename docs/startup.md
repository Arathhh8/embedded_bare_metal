# Startup file

* The startup file is responsble for setting up the right environment for the main user code to run.
* Code written in startup file runs before main(). So, you can say startup file calls main().
* Some part of the startup code file is the target (Processor) dependent.
* Startup code takes care of vector table placement in code memory as required by the ARM Cortex Mx processor.
* Startup code may also take care of stack reinitialization.
* Startup code is responsible of .data, .bss section initialization in main memory.

## Creating a startup file

1. Create a vector table for your microcontroller. Vector table are MCU specific.
2. Write a start-up code which initializes .data and .bss section in SRAM.
3. Call main().
