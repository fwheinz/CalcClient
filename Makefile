CC=gcc
CFLAGS=-O2 -ggdb -Wall
LIBS=
SHELL=/bin/bash
OBJ=main.o

all: project

calcclient: $(OBJ)
	$(CC) -o calcclient $(OBJ) $(LIBS)

clean:
	rm -f *.o calcclient

run: calcclient
	./calcclient

submit:
	@read -p "Your name: " NAME; echo Submitting for $$NAME; curl -F "source=@main.c;filename=pg1_$${NAME//\ /_}.c" http://pg1.sysv.de/submit.php; echo Done.

