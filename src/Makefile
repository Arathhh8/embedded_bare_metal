CC = arm-none-eabi-gcc 
MACH = cortex-m3
CFLAGS = -c -mcpu=$(MACH) -mthumb -std=gnu11 -Wall -O0
LDFLAGS = -nostdlib -T stm32_ls.ld -Wl,-Map=program.map

all: main.o led.o stm32_startup.o program.elf

main.o: main.c 
	$(CC) $(CFLAGS) -o $@ $^

led.o: led.c 
	$(CC) $(CFLAGS) -o $@ $^

stm32_startup.o: stm32_startup.c
	$(CC) $(CFLAGS) -o $@ $^	

program.elf : main.o led.o stm32_startup.o
	$(CC) $(LDFLAGS) -o $@ $^

load: 
	openocd -f ../../../../Downloads/gnu-mcu-eclipse/openocd/0.10.0-12-20190422-2015/scripts/board/stm32f103c8_blue_pill.cfg


clean:
	rm -rf *.o *.elf *.map
