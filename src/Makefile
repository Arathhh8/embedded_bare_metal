CC = arm-none-eabi-gcc 
MACH = cortex-m3
CFLAGS = -c -mcpu=$(MACH) -mthumb -std=gnu11 -o0

all: main.o led.o

main.o: main.c 
	$(CC) $(CFLAGS) -o $@ $^

led.o: led.c 
	$(CC) $(CFLAGS) -o $@ $^

clear:
	rm main.o
