CC = g++
CFLAGS = -c -Wall -std=c++11
LDFLAGS =

SOURCES = main.cpp
OBJECTS = $(SOURCES:.cpp=.o)

EXECUTABLE = demo

CFLAGS += `pkg-config --cflags apiai`
LDFLAGS += `pkg-config --libs apiai`

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm $(OBJECTS) $(EXECUTABLE)