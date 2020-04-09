CC = g++
Flags = -std=c++14 - Wall - g
OBJS = Queue.o

all: hw12

hw12: hw12.cpp Queue.o
	$(CC) $(FLAGS) hw12.cpp -o hw12 $(OBJS)

Queue.o: Queue.cpp Queue.h
	$(CC) $(FLAGS) -c Queue.cpp -o Queue.o

clean:
	rm*.o hw12 hw12.tar

tar:
	tar cf hw12.tar hw12.scr makefile hw12.cpp Queue.cpp Queue.h
