CC = gcc
CFLAGS = -Wall

all: process_creation output_program simple_program

process_creation: process_creation.c
	$(CC) $(CFLAGS) process_creation.c -o process_creation

output_program: file1.o file2.o
	$(CC) $(CFLAGS) file1.o file2.o -o output_program

file1.o: file1.c
	$(CC) $(CFLAGS) -c file1.c

file2.o: file2.c
	$(CC) $(CFLAGS) -c file2.c

simple_program: simple_program.c
	$(CC) $(CFLAGS) simple_program.c -o simple_program

run: all
	@echo "Running process creation demo:"
	./process_creation
	@echo ""
	@echo "Running linker demo:"
	./output_program
	@echo ""
	@echo "Running loader demo:"
	./simple_program
	@echo ""
	@echo "Checking loaded libraries:"
	ldd simple_program

clean:
	rm -f *.o process_creation output_program simple_program
