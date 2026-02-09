CC = gcc
CFLAGS = -Wall

TARGET = main
OBJS = main.o isEven.o isOdd.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o

isEven.o: isEven.c
	$(CC) $(CFLAGS) -c isEven.c -o isEven.o

isOdd.o: isOdd.c
	$(CC) $(CFLAGS) -c isOdd.c -o isOdd.o

clean:
	rm -f $(OBJS) $(TARGET)
