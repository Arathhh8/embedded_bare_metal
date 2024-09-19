CC = arm-none-eabi-gcc 
MACH = cortex-m3
CFLAGS = -c -mcpu=$(MACH) -mthumb -std=gnu11 -o0

main.o: main.c 
	$(CC) $(CFLAGS) -o $@ $^

clear:
	rm main.o
