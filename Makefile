CC=i686-pc-mingw32-gcc -g
FLAGS=-Wall \
	-DWIN32 \
	-I./ \
	-I./ferite \
	-I/cygdrive/c/Users/Tobias/Development/Environment/include \
	-I/cygdrive/c/Users/Tobias/Development/Environment/include/SDL2
LIBS=-L/cygdrive/c/Users/Tobias/Development/Environment/lib \
	-lmingw32 \
	-mwindows \
	-mconsole \
	-lSDL2main \
	-lSDL2 \
	-lSDL2_image \
	/cygdrive/c/Users/Tobias/Development/Environment/lib/libSDL2_mixer.dll.a \
	/cygdrive/c/Users/Tobias/Development/Environment/lib/libSDL2_ttf.dll.a

SOURCES=main.c \
	WedoEngine/WedoEngine.c \
	WedoEngine/ini.c \
	ferite/aphex_config.c \
	ferite/aphex_directory.c \
	ferite/aphex_file.c \
	ferite/aphex_match.c \
	ferite/aphex_notify.c \
	ferite/aphex_thread.c \
	ferite/ferite_buffer.c \
	ferite/ferite_gc_libgc.c \
	ferite/ferite_opcode.c \
	ferite/ferite_uarray.c \
	ferite/ferite_cache.c \
	ferite/ferite_globals.c \
	ferite/ferite_ops.c \
	ferite/ferite_utils.c \
	ferite/ferite_class.c \
	ferite/ferite_hash.c \
	ferite/ferite_parser.c \
	ferite/ferite_variables.c \
	ferite/ferite_compile.c \
	ferite/ferite_mem_classic.c \
	ferite/ferite_regex.c \
	ferite/ferite_error.c \
	ferite/ferite_mem_jedi.c \
	ferite/ferite_scanner.c \
	ferite/triton_loader_dummy.c \
	ferite/ferite_execute.c \
	ferite/ferite_mem_libgc.c \
	ferite/ferite_script.c \
	ferite/ferite_function.c \
	ferite/ferite_module.c \
	ferite/ferite_stack.c \
	ferite/ferite_amt.c \
	ferite/ferite_gc.c \
	ferite/ferite_namespace.c \
	ferite/ferite_string.c \
	ferite/ferite_amtarray.c \
	ferite/ferite_gc_generation.c \
	ferite/ferite_obj.c \
	ferite/ferite_thread.c \
	ferite/ferite.c \
	ferite/triton_core.c
OBJECTS=$(SOURCES:.c=.o)
PROGRAM=CollectBot.exe

all: $(OBJECTS) $(PROGRAM)

$(PROGRAM): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(PROGRAM) $(LIBS)

%.o: %.c
	$(CC) -o $@ $(FLAGS) -c $<

clean:
	rm -rf ferite/*.o WedoEngine/*.o *.o $(PROGRAM)
