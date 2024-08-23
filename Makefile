CC 			:= gcc
CFLAGS := -Wall -Werror -Wextra -Wpedantic -std=gnu17 \
    -Wformat=2 -Wformat-security -Wconversion -Wshadow -Wcast-qual \
    -Wcast-align -Wlogical-op -Wmissing-declarations -Wmissing-include-dirs \
    -Wredundant-decls -Wswitch-default -Wswitch-enum -Wundef -Wno-unused \
    -Wuninitialized -Wfloat-equal -Wdouble-promotion -Wpointer-arith \
    -Wnull-dereference -Wvla -Wduplicated-cond -Wduplicated-branches \
    -Wjump-misses-init -Wstrict-prototypes -Wstringop-truncation \
    -Wmissing-prototypes -Wmissing-field-initializers -Wwrite-strings \
		-Wunreachable-code -Wstrict-overflow=5 -Wno-incompatible-pointer-types -Os
CFLAGS_DEBUG := -ggdb -fanalyzer -fsanitize=address,undefined,leak -save-temps \
								-D_FORTIFY_SOURCE=3 -fstack-protector-strong \
								-fstack-clash-protection -fstrict-aliasing -ftrivial-auto-var-init=zero \
								-fno-omit-frame-pointer -fno-common -Og -pg
COPTS := -D"_DEBUG_LOGLEVEL=3"

LIBS    :=
CEXT 		:= c
OBJEXT 	:= o
DEPEXT 	:= d
HEXT 		:= .h
SRCDIR 	:= src
INCDIR 	:= include
OBJDIR 	:= build

TARGET 	:= ucc

SOURCES := $(wildcard $(SRCDIR)/*.$(CEXT))
HEADERS := $(wildcard $(INCDIR)/*.$(HEXT))
OBJECTS := $(patsubst $(SRCDIR)/%.$(CEXT),$(OBJDIR)/%.$(OBJEXT),$(SOURCES))
DEPENDS := $(patsubst $(SRCDIR)/%.$(CEXT),$(OBJDIR)/%.$(DEPEXT),$(SOURCES))

.PHONY: all clean

all: $(OBJDIR) $(TARGET)

debug: CFLAGS += $(CFLAGS_DEBUG)
debug: $(OBJDIR) $(TARGET)

clean:
	rm -rf $(OBJDIR) $(TARGET)

db:
	.venv/bin/compiledb make -B

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(COPTS) -I$(INCDIR) $^ -o $@ $(LIBS)

$(OBJDIR)/%.$(OBJEXT): $(SRCDIR)/%.$(CEXT) Makefile
	$(CC) $(CFLAGS) $(COPTS) -I$(INCDIR) -MMD -MP -c $< -o $@ $(LIBS)

$(OBJDIR):
	mkdir -p $@

-include $(DEPENDS)

