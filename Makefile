CC=gcc -g
FLAGS=-Wall -I/usr/local/include -I/usr/local/include/SDL2
LIBS=-L/usr/local/lib -lferite -lSDL2 -lSDL2_image
SOURCES=main.c \
	WedoEngine/WedoEngine.c
OBJECTS=$(SOURCES:.c=.o)
PROGRAM=game.osx

all: $(OBJECTS) $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(PROGRAM) $(LIBS)

%.o: %.c
	$(CC) -o $@ $(FLAGS) -c $<

clean:
	rm -rf Source/*.o $(PROGRAM)
