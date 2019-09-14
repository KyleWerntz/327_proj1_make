#target exe
myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o myfunc.h

#rebuild if either of the files below change
main.o: main.cpp
	g++ $(CFLAGS) -c main.cpp

#rebuild if either of the files below change
myfunc.o: myfunc.cpp
	g++ $(CFLAGS) -c myfunc.cpp

#type 'make clean' to remove following
clean:
	rm -f *.o myexe.exe
	rm myexe