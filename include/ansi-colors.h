#pragma once

#include "io.h"

#define _RED "31m"
#define _GREEN "32m"
#define _BLUE "34m"
#define _CYAN "36m"
#define _WHITE "37m"
#define _YELLOW  "33m"

/* Regular decoration */
#define REGULAR "\033[0;"
#define RED REGULAR _RED
#define GREEN REGULAR _GREEN
#define BLUE REGULAR _BLUE
#define CYAN REGULAR _CYAN
#define WHITE REGULAR _WHITE
#define YELLOW REGULAR _YELLOW

/* Bold decoration */
#define BOLD "\033[1;"
#define BRED BOLD _RED
#define BGREEN BOLD _GREEN
#define BBLUE BOLD _BLUE
#define BCYAN BOLD _CYAN
#define BWHITE BOLD _WHITE
#define BYELLOW BOLD _YELLOW

#define CRESET "\033[0m"

#define CTEXT(ccode, text) ccode text CRESET

void cprintf (const char* ccode, const char* fmt, ...);

__attribute__((nonnull (1)))
void cfprintf (fptr_t file, const char* ccode, const char* fmt, ...);

