# Specify the target file and the install directory
OUTPUTFILE=hello
INSTALLDIR=binaries

# Default target
.PHONY: all
all: $(OUTPUTFILE)

# This rule tells make how to build hello from hello.cpp
#OUTPUTFILE: helloworld.cpp
#    g++ -o hello hello.cpp

# we also can use  automatic variables
# the variable $< represents the filename of the first prerequisite, and the variable $^ represents the sequence of prerequisites, separated by spaces

$(OUTPUTFILE): helloworld.cpp
	g++ -o $@ $<


# Copy hello to the binaries subdirectory
.PHONY: install
install:
	mkdir -p $(INSTALLDIR)
	cp -p $(OUTPUTFILE) $(INSTALLDIR)

# Delete hello
.PHONY: clean 
clean:
	rm -f $(OUTPUTFILE)