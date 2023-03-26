CC = g++
CFLAGS = -g -Wall -std=c++11
OBJS = main.o
TARGET = P0

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp

clean:
	rm -f $(OBJS) $(TARGET)