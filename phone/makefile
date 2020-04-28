# Specify the source files, target files, the build directories, 
# and the install directory 
SOURCES         = phone.cpp
OBJECTS = $(SOURCES:.cpp=.o)
OUTPUTFILE     = phone
LIBSTATIC    = libhardware.a
LIBDYNAMIC = libsoftware.dylib
STATICDIR     = ../staticlib
DYNAMICDIR     = ../dynamiclib
INSTALLDIR     = ../binaries

#
# Add the parent directory as an include path 
#
CFLAGS      += -I ../staticlib/include -I ../dynamiclib/include

#
# Default target
#
.PHONY: all
all: $(OUTPUTFILE)

#
# Target to build the executable. 
#
$(OUTPUTFILE): $(OBJECTS)  \
               $(STATICDIR)/$(LIBSTATIC) \
               $(DYNAMICDIR)/$(LIBDYNAMIC)
	g++ $(LDFLAGS) -o $@ $^

.cpp.o: $(SOURCES)
	g++ $(CFLAGS) -c -o $@ $< 

.PHONY: install
install:
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR) 

.PHONY: clean 
clean: 
	rm -f *.o
	rm -f $(OUTPUTFILE)

