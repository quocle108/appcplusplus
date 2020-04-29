# Specify the source files, target files, the build directories, 
# and the install directory 
EXECDIR     = phone
STATICDIR = staticlib
DYNAMICDIR = dynamiclib
LIBS = $(STATICLIB) $(DYNAMICLIB)

# All the targets in this makefile are phony
.PHONY: all hardware software phone

# Default target
all: phone

# The targets hardware, software, and phone represent
# directories; the command script invokes make in each directory
# cmd is the command 
hardware: $(STATICDIR)
	$(MAKE) --directory=$^ $(cmd)

software: $(DYNAMICDIR)
	$(MAKE) --directory=$^ $(cmd)

phone:
	$(MAKE) --directory=$@ $(cmd)


# This rule indicates that the default target of the makefile
# in directory phone depends on the default targets of 
# the makefiles in the directories hardware and software
.PHONY: phone
phone: hardware software

