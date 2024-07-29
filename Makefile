CC 			:= gcc
CFLAGS 	:= -Wall -fcf-protection=none -ggdb -fcompare-debug-second -std=gnu17

CEXT 		:= c
OBJEXT 	:= o
DEPEXT 	:= d
HEXT 		:= .h
SRCDIR 	:= src/
INCDIR 	:= include/
OBJDIR 	:= build/

TARGET 	:= ucc

SOURCES := $(wildcard $(SRCDIR)/*.$(CEXT))
HEADERS := $(wildcard $(INCDIR)/*.$(HEXT))
OBJECTS := $(patsubst $(SRCDIR)/%.$(CEXT),$(OBJDIR)/%.$(OBJEXT),$(SOURCES))
DEPENDS := $(patsubst $(SRCDIR)/%.$(CEXT),$(OBJDIR)/%.$(DEPEXT),$(SOURCES))

.PHONY: all clean

all: $(OBJDIR) $(TARGET)

clean:
	rm -rf $(OBJDIR) $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(COPTS) -I$(INCDIR) $^ -o $@

$(OBJDIR)/%.$(OBJEXT): $(SRCDIR)/%.$(CEXT) Makefile
	$(CC) $(CFLAGS) $(COPTS) -I$(INCDIR) -MMD -MP -c $< -o $@

$(OBJDIR):
	mkdir -p $@

-include $(DEPENDS)

