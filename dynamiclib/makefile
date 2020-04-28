# Specify the source files, the target files, 
# and the install directory 
SOURCES     = src/gmail.cpp src/googlemap.cpp src/software.cpp
OBJECTS = $(SOURCES:.cpp=.o)
OUTPUTFILE  = libsoftware.dylib
INSTALLDIR  = ../binaries
CFLAGS=-I include/software

.PHONY: all
all: $(OUTPUTFILE)

# Build libsoftware.dylib from gmail.o, googlemap.o, 
# and software.o;
$(OUTPUTFILE): $(OBJECTS)
	$(CXX) -shared -fPIC $(CFLAGS) $(LDFLAGS) -o $@ $^

.cpp.o: $(SOURCES)
	g++ $(CFLAGS) -c -o $@ $< 

.PHONY: install
install:
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

.PHONY: clean 
clean:
	-rm -f $(OBJECTS) $(OUTPUTFILE)
