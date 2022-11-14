SRC = $(wildcard *.asm)
OBJ = $(SRC:.asm=.o)

test.bin: test.elf
	objcopy -j.text test.elf -O binary test.bin

test.elf: $(OBJ)
	ld -melf_i386 -Tlink.ld -o test.elf $(OBJ)

%.o : %.asm
	nasm $^ -o $@ -felf32
