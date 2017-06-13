SHELL = /bin/sh

# V=0 quiet, V=1 verbose.  other values don't work.
V = 0
Q1 = $(V:1=)
Q = $(Q1:0=@)
ECHO1 = $(V:1=@:)
ECHO = $(ECHO1:0=@echo)

RM = rm -f
COPY = cp

CXX = clang++
CXXFLAGS = -g -O2 -std=c++11  -fPIC
INCFLAGS = -I. -I/home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79/machine/include/capi -I.
OBJS = melbourne.o encoding_compat.o visitor.o var_table.o node_types.o symbols.o grammar.o

LDSHAREDXX = c++ -shared
DLLIB = melbourne.so
DLDFLAGS =  -Wl,--export-dynamic -lrt -lcrypt -ldl -lpthread -latomic  
LIBPATH = -L. -L/home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79/lib
LIBS =  

INSTALL_PATH = /home/travis/build/rubinius/rubinius-build/rubinius-3.79/staging/rubinius/3.79/gems/gems/rubinius-melbourne-3.9/lib/rubinius/code/melbourne


.PHONY: all install

all:    $(DLLIB)

clean:
	-$(Q)$(RM) $(OBJS) $(DLLIB)

distclean:
	-$(Q)$(RM) $(OBJS) $(DLLIB) Makefile

install:
	-$(Q)$(COPY) $(DLLIB) $(INSTALL_PATH)


.SUFFIXES: .y .cpp .o

.cpp.o:
	$(ECHO) compiling $(<)
	$(Q) $(CXX) $(CXXFLAGS) $(INCFLAGS) -o $@ -c $<

$(DLLIB): $(OBJS) Makefile
	$(ECHO) linking shared-object $(DLLIB)
	-$(Q)$(RM) $(@)
	$(Q) $(LDSHAREDXX) -o $@ $(OBJS) $(LIBPATH) $(DLDFLAGS) $(LIBS)

