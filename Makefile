CC = gcc
EXEC = build/miv

SRC = src/main.c src/gap_buffer.c 
OBJ = $(SRC:src/%.c=build/%.o)
CFLAGS = -Wall -Wextra -Iinclude/

build/%.o: src/%.c
	mkdir -p build/
	$(CC) $(CFLAGS) -o $@ -c $<

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^ 

clean:
	rm -rf build/
