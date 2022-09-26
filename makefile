 makef:
	yasm -f elf64 -o parth.o parth.asm
	gcc -static parth.o -o parth
run:
	-./parth
