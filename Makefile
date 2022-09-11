CC = gcc
CFLAGS = -g
DEPS = sqlite3.h

fdb.o: main.c $(DEPS)
	$(CC) $< $(CFLAGS) -c -o $@
      
Fast_DB: fdb.o sqlite3.o
	$(CC) $(CFLAGS) -o main fdb.o sqlite3.o

clean:
	rm FAST_DB.o