CC 			:= gcc
CFLAGS 	:= -Wall -Wpedantic -g

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
	$(CC) $(CFLAGS) -I$(INCDIR) $^ -o $@

$(OBJDIR)/%.$(OBJEXT): $(SRCDIR)/%.$(CEXT) Makefile
	$(CC) $(CFLAGS) -I$(INCDIR) -MMD -MP -c $< -o $@

$(OBJDIR):
	mkdir -p $@

-include $(DEPENDS)

