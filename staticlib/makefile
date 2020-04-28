# Specify extensions of files to delete when cleaning
CLEANEXTS   = o a 
SOURCES = src/camera.cpp src/screen.cpp src/hardware.cpp
OBJECTS = $(SOURCES:.cpp=.o)
OUTPUTFILE=libhardware.a
INSTALLDIR  = ../binaries

#
# Add the include path 
#
CFLAGS      += -I include/hardware

# Default target
.PHONY: all
all: $(OUTPUTFILE)

# Build libhardware.a from camera.o, screen.o, and hardware.o
$(OUTPUTFILE): $(OBJECTS)
	ar ru $@ $^
	ranlib $@

# No rule to build camera.o, screen.o, and hardware.o from .cpp 
# files is required; this is handled by make's database of
# implicit rules if there are no define from user

.cpp.o: $(SOURCES)
	g++ $(CFLAGS) -c -o $@ $< 
	
.PHONY: install
install:
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

# Delete hello
.PHONY: clean 
clean:
	-rm -f $(OBJECTS) $(OUTPUTFILE)
