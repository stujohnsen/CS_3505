LIBDIR = /
LIBINCLUDE = /

CC = g++
CFLAGS = -Wall -std=c++11
	
Main : main.o
	$(CC) $(CFLAGS) -o main main.o-L $(LIBDIR)

main.o : main.cpp
	$(CC) $(CFLAGS) -o main.o -c -I $(LIBINCLUDE)

clean:
	rm main *.o
    
test:
	./main

